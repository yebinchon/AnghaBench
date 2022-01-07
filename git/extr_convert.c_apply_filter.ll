; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_apply_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_apply_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.convert_driver = type { i8*, i8*, i64* }
%struct.delayed_checkout = type { i32 }

@CAP_CLEAN = common dso_local global i32 0, align 4
@CAP_SMUDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32, %struct.strbuf*, %struct.convert_driver*, i32, %struct.delayed_checkout*)* @apply_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_filter(i8* %0, i8* %1, i64 %2, i32 %3, %struct.strbuf* %4, %struct.convert_driver* %5, i32 %6, %struct.delayed_checkout* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf*, align 8
  %15 = alloca %struct.convert_driver*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.delayed_checkout*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.strbuf* %4, %struct.strbuf** %14, align 8
  store %struct.convert_driver* %5, %struct.convert_driver** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.delayed_checkout* %7, %struct.delayed_checkout** %17, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %20 = icmp ne %struct.convert_driver* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %106

22:                                               ; preds = %8
  %23 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %24 = icmp ne %struct.strbuf* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %106

26:                                               ; preds = %22
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @CAP_CLEAN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %33 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %38 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %43 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %18, align 8
  br label %65

45:                                               ; preds = %36, %31, %26
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @CAP_SMUDGE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %52 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %57 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %62 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %60, %55, %50, %45
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i8*, i8** %18, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i8*, i8** %18, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = call i32 @apply_single_file_filter(i8* %74, i8* %75, i64 %76, i32 %77, %struct.strbuf* %78, i8* %79)
  store i32 %80, i32* %9, align 4
  br label %106

81:                                               ; preds = %68, %65
  %82 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %83 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %88 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %98 = load %struct.convert_driver*, %struct.convert_driver** %15, align 8
  %99 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.delayed_checkout*, %struct.delayed_checkout** %17, align 8
  %103 = call i32 @apply_multi_file_filter(i8* %93, i8* %94, i64 %95, i32 %96, %struct.strbuf* %97, i64* %100, i32 %101, %struct.delayed_checkout* %102)
  store i32 %103, i32* %9, align 4
  br label %106

104:                                              ; preds = %86, %81
  br label %105

105:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %92, %73, %25, %21
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @apply_single_file_filter(i8*, i8*, i64, i32, %struct.strbuf*, i8*) #1

declare dso_local i32 @apply_multi_file_filter(i8*, i8*, i64, i32, %struct.strbuf*, i64*, i32, %struct.delayed_checkout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
