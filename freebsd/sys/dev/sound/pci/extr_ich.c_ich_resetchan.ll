; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_resetchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_resetchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i64, i32 }

@ICH_REG_PO_BASE = common dso_local global i32 0, align 4
@ICH_REG_PI_BASE = common dso_local global i32 0, align 4
@ICH_REG_MC_BASE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ICH_REG_X_CR = common dso_local global i64 0, align 8
@ICH_X_CR_RR = common dso_local global i32 0, align 4
@ICH_TIMEOUT = common dso_local global i32 0, align 4
@ICH_IGNORE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot reset channel %d\0A\00", align 1
@NVIDIA_VENDORID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @ich_resetchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_resetchan(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ICH_REG_PO_BASE, align 4
  store i32 %12, i32* %8, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ICH_REG_PI_BASE, align 4
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @ICH_REG_MC_BASE, align 4
  store i32 %22, i32* %8, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %16
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @ICH_REG_X_CR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @ich_wr(%struct.sc_info* %28, i64 %32, i32 0, i32 1)
  %34 = call i32 @DELAY(i32 100)
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @ICH_REG_X_CR, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @ICH_X_CR_RR, align 4
  %41 = call i32 @ich_wr(%struct.sc_info* %35, i64 %39, i32 %40, i32 1)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %58, %27
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ICH_TIMEOUT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @ICH_REG_X_CR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ich_rd(%struct.sc_info* %47, i64 %51, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %76

56:                                               ; preds = %46
  %57 = call i32 @DELAY(i32 1)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ICH_IGNORE_RESET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %76

69:                                               ; preds = %61
  %70 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %68, %55, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ich_wr(%struct.sc_info*, i64, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ich_rd(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
