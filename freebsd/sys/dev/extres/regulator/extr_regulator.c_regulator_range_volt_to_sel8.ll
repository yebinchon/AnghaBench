; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_range_volt_to_sel8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_range_volt_to_sel8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_range = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Voltage regulator have zero ranges\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_range_volt_to_sel8(%struct.regulator_range* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.regulator_range*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regulator_range* %0, %struct.regulator_range** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %5
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %88, %21
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load %struct.regulator_range*, %struct.regulator_range** %7, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %27, i64 %29
  store %struct.regulator_range* %30, %struct.regulator_range** %12, align 8
  %31 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %32 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %35 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %38 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %42 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = add nsw i32 %33, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %52 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %26
  br label %88

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %59 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %64 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %68 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %75 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %79 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DIV_ROUND_UP(i32 %77, i32 %80)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %72, %71
  %83 = load %struct.regulator_range*, %struct.regulator_range** %12, align 8
  %84 = getelementptr inbounds %struct.regulator_range, %struct.regulator_range* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %91

88:                                               ; preds = %55
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %22

91:                                               ; preds = %82, %22
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @ERANGE, align 4
  store i32 %96, i32* %6, align 4
  br label %119

97:                                               ; preds = %91
  %98 = load %struct.regulator_range*, %struct.regulator_range** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @regulator_range_sel8_to_volt(%struct.regulator_range* %98, i32 %99, i32 %100, i32* %14)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %119

106:                                              ; preds = %97
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @ERANGE, align 4
  store i32 %115, i32* %6, align 4
  br label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %114, %104, %95
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regulator_range_sel8_to_volt(%struct.regulator_range*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
