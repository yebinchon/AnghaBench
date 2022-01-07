; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Init called while driver is running!\0A\00", align 1
@BXE_STATE_ERROR = common dso_local global i64 0, align 8
@BXE_RECOVERY_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"Initialization not done, as previous recovery failed.Reboot/Power-cycle the system\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCI_PM_D0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Recovered during init\0A\00", align 1
@PCI_PM_D3hot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [143 x i8] c"Recovery flow hasn't properly completed yet, try again later. If you still see this message after a few retries then power cycle is required.\0A\00", align 1
@BXE_RECOVERY_DONE = common dso_local global i64 0, align 8
@LOAD_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Initialization failed, stack notified driver is NOT running!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_locked(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = call i32 @SC_PATH(%struct.bxe_softc* %9)
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = call i32 @BXE_CORE_LOCK_ASSERT(%struct.bxe_softc* %15)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @if_getdrvflags(i32 %19)
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = load i32, i32* @DBG_LOAD, align 4
  %27 = call i32 @BLOGD(%struct.bxe_softc* %25, i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %128

28:                                               ; preds = %1
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BXE_STATE_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BXE_RECOVERY_FAILED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = call i32 @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %128

44:                                               ; preds = %34, %28
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load i32, i32* @PCI_PM_D0, align 4
  %47 = call i32 @bxe_set_power_state(%struct.bxe_softc* %45, i32 %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = call i64 @IS_PF(%struct.bxe_softc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %44
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @bxe_get_load_status(%struct.bxe_softc* %52, i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %57 = call i32 @SC_PATH(%struct.bxe_softc* %56)
  %58 = call i64 @bxe_get_load_status(%struct.bxe_softc* %55, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %61 = call i32 @SC_PATH(%struct.bxe_softc* %60)
  %62 = call i32 @bxe_reset_is_done(%struct.bxe_softc* %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i64 @bxe_chk_parity_attn(%struct.bxe_softc* %65, i64* %7, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %64, %51
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = call i32 @bxe_set_reset_global(%struct.bxe_softc* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = call i64 @bxe_trylock_leader_lock(%struct.bxe_softc* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = call i32 @bxe_leader_reset(%struct.bxe_softc* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %95 = call i32 @BLOGI(%struct.bxe_softc* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %106

96:                                               ; preds = %89, %85, %82, %76
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %98 = load i32, i32* @PCI_PM_D3hot, align 4
  %99 = call i32 @bxe_set_power_state(%struct.bxe_softc* %97, i32 %98)
  %100 = load i64, i64* @BXE_RECOVERY_FAILED, align 8
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %102 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %104 = call i32 @BLOGE(%struct.bxe_softc* %103, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %8, align 4
  br label %115

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %64
  br label %108

108:                                              ; preds = %107, %44
  %109 = load i64, i64* @BXE_RECOVERY_DONE, align 8
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %113 = load i32, i32* @LOAD_OPEN, align 4
  %114 = call i32 @bxe_nic_load(%struct.bxe_softc* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %108, %96
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %120 = call i32 @BLOGE(%struct.bxe_softc* %119, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %122 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %125 = call i32 @if_setdrvflagbits(i32 %123, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %40, %24
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_CORE_LOCK_ASSERT(%struct.bxe_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_set_power_state(%struct.bxe_softc*, i32) #1

declare dso_local i64 @IS_PF(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_get_load_status(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_reset_is_done(%struct.bxe_softc*, i32) #1

declare dso_local i64 @bxe_chk_parity_attn(%struct.bxe_softc*, i64*, i32) #1

declare dso_local i32 @bxe_set_reset_global(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_trylock_leader_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_leader_reset(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_nic_load(%struct.bxe_softc*, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
