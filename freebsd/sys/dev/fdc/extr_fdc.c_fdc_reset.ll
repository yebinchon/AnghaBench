; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i64, i32, i32 }

@FDC_ENHANCED = common dso_local global i64 0, align 8
@I8207X_DSR_SR = common dso_local global i32 0, align 4
@FDO_FRST = common dso_local global i32 0, align 4
@FDO_FDMAEN = common dso_local global i32 0, align 4
@NE7CMD_SPECIFY = common dso_local global i32 0, align 4
@spec1 = common dso_local global i32 0, align 4
@spec2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" SPECIFY failed in reset\0A\00", align 1
@I8207X_CONFIG = common dso_local global i32 0, align 4
@fifo_threshold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c" CONFIGURE failed in reset\0A\00", align 1
@debugflags = common dso_local global i32 0, align 4
@I8207X_DUMPREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c" DUMPREG failed in reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdc_data*)* @fdc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdc_reset(%struct.fdc_data* %0) #0 {
  %2 = alloca %struct.fdc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store %struct.fdc_data* %0, %struct.fdc_data** %2, align 8
  %5 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %6 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FDC_ENHANCED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %12 = load i32, i32* @I8207X_DSR_SR, align 4
  %13 = call i32 @fddsr_wr(%struct.fdc_data* %11, i32 %12)
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %16 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %17 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FDO_FRST, align 4
  %20 = load i32, i32* @FDO_FDMAEN, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = call i32 @fdout_wr(%struct.fdc_data* %15, i32 %23)
  %25 = call i32 @DELAY(i32 100)
  %26 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %27 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %28 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FDO_FDMAEN, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @fdout_wr(%struct.fdc_data* %26, i32 %32)
  br label %34

34:                                               ; preds = %14, %10
  %35 = call i32 @DELAY(i32 100)
  %36 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %37 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %38 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fdout_wr(%struct.fdc_data* %36, i32 %39)
  %41 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %42 = load i32, i32* @NE7CMD_SPECIFY, align 4
  %43 = load i32, i32* @spec1, align 4
  %44 = load i32, i32* @spec2, align 4
  %45 = call i64 (%struct.fdc_data*, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %41, i32 3, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %49 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %54 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FDC_ENHANCED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %52
  %59 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %60 = load i32, i32* @I8207X_CONFIG, align 4
  %61 = load i32, i32* @fifo_threshold, align 4
  %62 = sub nsw i32 %61, 1
  %63 = or i32 16, %62
  %64 = call i64 (%struct.fdc_data*, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %59, i32 4, i32 %60, i32 0, i32 %63, i32 0, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %68 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %58
  %72 = load i32, i32* @debugflags, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %77 = load i32, i32* @I8207X_DUMPREG, align 4
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 2
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 3
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 4
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 5
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 6
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 7
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 8
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 9
  %88 = call i64 (%struct.fdc_data*, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %76, i32 1, i32 %77, i32 10, i32* %78, i32* %79, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %92 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %75
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %105, %95
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %96

108:                                              ; preds = %96
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %71
  br label %111

111:                                              ; preds = %110, %52
  ret void
}

declare dso_local i32 @fddsr_wr(%struct.fdc_data*, i32) #1

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @fdc_cmd(%struct.fdc_data*, i32, i32, i32, ...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
