; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_setup_fan_failure_detection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_setup_fan_failure_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bxe_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@dev_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SHARED_HW_CFG_FAN_FAILURE_MASK = common dso_local global i32 0, align 4
@SHARED_HW_CFG_FAN_FAILURE_ENABLED = common dso_local global i32 0, align 4
@SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE = common dso_local global i32 0, align 4
@PORT_0 = common dso_local global i32 0, align 4
@PORT_MAX = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fan detection setting: %d\0A\00", align 1
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@MISC_SPIO_INPUT_HI_Z = common dso_local global i32 0, align 4
@MISC_REG_SPIO_INT = common dso_local global i32 0, align 4
@MISC_SPIO_INT_OLD_SET_POS = common dso_local global i32 0, align 4
@MISC_REG_SPIO_EVENT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_setup_fan_failure_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_setup_fan_failure_detection(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_info, i32 0, i32 0, i32 0), align 4
  %8 = call i32 @SHMEM_RD(%struct.bxe_softc* %6, i32 %7)
  %9 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_ENABLED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32, i32* @PORT_0, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %39, %19
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PORT_MAX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @elink_fan_failure_det_req(%struct.bxe_softc* %26, i32 %30, i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %21

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %15
  br label %44

44:                                               ; preds = %43, %14
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load i32, i32* @DBG_LOAD, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %79

52:                                               ; preds = %44
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %55 = load i32, i32* @MISC_SPIO_INPUT_HI_Z, align 4
  %56 = call i32 @bxe_set_spio(%struct.bxe_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = load i32, i32* @MISC_REG_SPIO_INT, align 4
  %59 = call i32 @REG_RD(%struct.bxe_softc* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %61 = load i32, i32* @MISC_SPIO_INT_OLD_SET_POS, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = load i32, i32* @MISC_REG_SPIO_INT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @REG_WR(%struct.bxe_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %71 = call i32 @REG_RD(%struct.bxe_softc* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %76 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @REG_WR(%struct.bxe_softc* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %52, %51
  ret void
}

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_fan_failure_det_req(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @bxe_set_spio(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
