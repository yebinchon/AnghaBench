; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse_section_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse_section_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64, i64, i32, i32*, i32* }
%struct.pe_section_header = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"section table\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"section table outside of headers\00", align 1
@MAX_SECTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"too many sections: got %d, should be %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"section points inside the headers\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*, i64, i32)* @parse_section_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_section_table(%struct.executable* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.executable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pe_section_header*, align 8
  %8 = alloca i32, align 4
  store %struct.executable* %0, %struct.executable** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.executable*, %struct.executable** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 16, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @range_check(%struct.executable* %9, i64 %10, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.executable*, %struct.executable** %4, align 8
  %17 = getelementptr inbounds %struct.executable, %struct.executable* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 16, %21
  %23 = add i64 %19, %22
  %24 = icmp ule i64 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.executable*, %struct.executable** %4, align 8
  %29 = getelementptr inbounds %struct.executable, %struct.executable* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %struct.pe_section_header*
  store %struct.pe_section_header* %33, %struct.pe_section_header** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MAX_SECTIONS, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_SECTIONS, align 4
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.executable*, %struct.executable** %4, align 8
  %44 = getelementptr inbounds %struct.executable, %struct.executable* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %89, %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %51 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.executable*, %struct.executable** %4, align 8
  %54 = getelementptr inbounds %struct.executable, %struct.executable* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load %struct.executable*, %struct.executable** %4, align 8
  %61 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %62 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %65 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @range_check(%struct.executable* %60, i64 %63, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %69 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.executable*, %struct.executable** %4, align 8
  %73 = getelementptr inbounds %struct.executable, %struct.executable* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %79 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.executable*, %struct.executable** %4, align 8
  %82 = getelementptr inbounds %struct.executable, %struct.executable* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load %struct.pe_section_header*, %struct.pe_section_header** %7, align 8
  %88 = getelementptr inbounds %struct.pe_section_header, %struct.pe_section_header* %87, i32 1
  store %struct.pe_section_header* %88, %struct.pe_section_header** %7, align 8
  br label %89

89:                                               ; preds = %59
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %45

92:                                               ; preds = %45
  ret void
}

declare dso_local i32 @range_check(%struct.executable*, i64, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
