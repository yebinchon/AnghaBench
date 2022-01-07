; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_9287_print/extr_9287.c_eeprom_9287_print_caldata_oploop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_9287_print/extr_9287.c_eeprom_9287_print_caldata_oploop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_data_op_loop_ar9287 = type { i32**, i32**, i32**, i32** }

@.str = private unnamed_addr constant [12 x i8] c"    pwrPdg:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[%d][%d]=%d, \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"    vpdPdg:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    pcdac:\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"    empty:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_data_op_loop_ar9287*)* @eeprom_9287_print_caldata_oploop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_9287_print_caldata_oploop(%struct.cal_data_op_loop_ar9287* %0) #0 {
  %2 = alloca %struct.cal_data_op_loop_ar9287*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cal_data_op_loop_ar9287* %0, %struct.cal_data_op_loop_ar9287** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %105, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %108

8:                                                ; preds = %5
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %2, align 8
  %17 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15, i32 %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %2, align 8
  %41 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %34

55:                                               ; preds = %34
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %76, %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 5
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %2, align 8
  %65 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i32 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %58

79:                                               ; preds = %58
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %100, %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.cal_data_op_loop_ar9287*, %struct.cal_data_op_loop_ar9287** %2, align 8
  %89 = getelementptr inbounds %struct.cal_data_op_loop_ar9287, %struct.cal_data_op_loop_ar9287* %88, i32 0, i32 3
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %82

103:                                              ; preds = %82
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %5

108:                                              ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
