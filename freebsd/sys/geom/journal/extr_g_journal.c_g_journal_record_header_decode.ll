; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_record_header_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_record_header_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_record_header = type { i64, %struct.g_journal_entry*, i32, i32, i32 }
%struct.g_journal_entry = type { i8*, i8*, i8* }

@GJ_RECORD_HEADER_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GJ_RECORD_HEADER_NENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.g_journal_record_header*)* @g_journal_record_header_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_journal_record_header_decode(i32* %0, %struct.g_journal_record_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.g_journal_record_header*, align 8
  %6 = alloca %struct.g_journal_entry*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.g_journal_record_header* %1, %struct.g_journal_record_header** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %10 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bcopy(i32* %8, i32 %11, i32 4)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32* %14, i32** %4, align 8
  %15 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %16 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GJ_RECORD_HEADER_MAGIC, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @le32dec(i32* %24)
  %26 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %27 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @le16dec(i32* %30)
  %32 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %33 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32* %35, i32** %4, align 8
  %36 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %37 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GJ_RECORD_HEADER_NENTRIES, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %85

43:                                               ; preds = %23
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %46 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bcopy(i32* %44, i32 %47, i32 4)
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  store i32* %50, i32** %4, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %81, %43
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %54 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load %struct.g_journal_record_header*, %struct.g_journal_record_header** %5, align 8
  %59 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %58, i32 0, i32 1
  %60 = load %struct.g_journal_entry*, %struct.g_journal_entry** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %60, i64 %61
  store %struct.g_journal_entry* %62, %struct.g_journal_entry** %6, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @le64dec(i32* %63)
  %65 = load %struct.g_journal_entry*, %struct.g_journal_entry** %6, align 8
  %66 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @le64dec(i32* %69)
  %71 = load %struct.g_journal_entry*, %struct.g_journal_entry** %6, align 8
  %72 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  store i32* %74, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @le64dec(i32* %75)
  %77 = load %struct.g_journal_entry*, %struct.g_journal_entry** %6, align 8
  %78 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %57
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %7, align 8
  br label %51

84:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %41, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i64 @le16dec(i32*) #1

declare dso_local i8* @le64dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
