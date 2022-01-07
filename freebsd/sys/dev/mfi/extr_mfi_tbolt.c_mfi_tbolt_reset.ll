; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, {}*, i64, i32, i32, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"HW CRITICAL ERROR\0A\00", align 1
@MFI_FLAGS_TBOLT = common dso_local global i32 0, align 4
@MFI_FWSTATE_FAULT = common dso_local global i32 0, align 4
@mfi_fw_reset_test = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Adapter RESET condition is detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_tbolt_reset(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  %5 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %5, i32 0, i32 4
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 4
  %19 = call i32 @mtx_unlock(i32* %18)
  store i32 1, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %20
  %28 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %28, i32 0, i32 1
  %30 = bitcast {}** %29 to i32 (%struct.mfi_softc*)**
  %31 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %30, align 8
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %33 = call i32 %31(%struct.mfi_softc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MFI_FWSTATE_FAULT, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @MFI_FWSTATE_FAULT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i64, i64* @mfi_fw_reset_test, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %39, %27
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %57, i32 0, i32 3
  store i32 1, i32* %58, align 8
  %59 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %66 = bitcast %struct.mfi_softc* %65 to i8*
  %67 = call i32 @mfi_process_fw_state_chg_isr(i8* %66)
  br label %68

68:                                               ; preds = %52, %47, %42
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 4
  %71 = call i32 @mtx_unlock(i32* %70)
  store i32 0, i32* %2, align 4
  br label %77

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %20
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 4
  %76 = call i32 @mtx_unlock(i32* %75)
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %68, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mfi_process_fw_state_chg_isr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
