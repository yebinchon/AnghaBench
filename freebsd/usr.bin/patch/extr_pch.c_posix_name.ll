; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_posix_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_posix_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_name = type { i8*, i64 }

@MAX_FILE = common dso_local global i32 0, align 4
@ok_to_create_file = common dso_local global i64 0, align 8
@NEW_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.file_name*, i32)* @posix_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @posix_name(%struct.file_name* %0, i32 %1) #0 {
  %3 = alloca %struct.file_name*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.file_name* %0, %struct.file_name** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_FILE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load %struct.file_name*, %struct.file_name** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.file_name, %struct.file_name* %12, i64 %14
  %16 = getelementptr inbounds %struct.file_name, %struct.file_name* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.file_name*, %struct.file_name** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.file_name, %struct.file_name* %20, i64 %22
  %24 = getelementptr inbounds %struct.file_name, %struct.file_name* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.file_name*, %struct.file_name** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.file_name, %struct.file_name* %28, i64 %30
  %32 = getelementptr inbounds %struct.file_name, %struct.file_name* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %38

34:                                               ; preds = %19, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %27, %7
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i64, i64* @ok_to_create_file, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.file_name*, %struct.file_name** %3, align 8
  %52 = load i64, i64* @NEW_FILE, align 8
  %53 = getelementptr inbounds %struct.file_name, %struct.file_name* %51, i64 %52
  %54 = getelementptr inbounds %struct.file_name, %struct.file_name* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.file_name*, %struct.file_name** %3, align 8
  %59 = load i64, i64* @NEW_FILE, align 8
  %60 = getelementptr inbounds %struct.file_name, %struct.file_name* %58, i64 %59
  %61 = getelementptr inbounds %struct.file_name, %struct.file_name* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %57, %50, %47, %44
  br label %64

64:                                               ; preds = %63, %41, %38
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @xstrdup(i8* %68)
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8* [ %69, %67 ], [ null, %70 ]
  ret i8* %72
}

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
