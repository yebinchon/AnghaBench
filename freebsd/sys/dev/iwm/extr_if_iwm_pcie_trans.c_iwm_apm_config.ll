; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_apm_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_apm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32 }

@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_ASPMC_L1 = common dso_local global i32 0, align 4
@IWM_CSR_GIO_REG = common dso_local global i32 0, align 4
@IWM_CSR_GIO_REG_VAL_L0S_ENABLED = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL2 = common dso_local global i64 0, align 8
@PCIEM_CTL2_LTR_ENABLE = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@IWM_DEBUG_PWRSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"L1 %sabled - LTR %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_apm_config(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %8 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PCIY_EXPRESS, align 4
  %11 = call i32 @pci_find_cap(i32 %9, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %17 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PCIER_LINK_CTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @pci_read_config(i32 %18, i64 %22, i32 4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PCIEM_LINK_CTL_ASPMC_L1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %30 = load i32, i32* @IWM_CSR_GIO_REG, align 4
  %31 = load i32, i32* @IWM_CSR_GIO_REG_VAL_L0S_ENABLED, align 4
  %32 = call i32 @IWM_SETBITS(%struct.iwm_softc* %29, i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %15
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %35 = load i32, i32* @IWM_CSR_GIO_REG, align 4
  %36 = load i32, i32* @IWM_CSR_GIO_REG_VAL_L0S_ENABLED, align 4
  %37 = call i32 @IWM_CLRBITS(%struct.iwm_softc* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PCIER_DEVICE_CTL2, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @pci_read_config(i32 %41, i64 %45, i32 4)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCIEM_CTL2_LTR_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %54 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %56 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %57 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PCIEM_LINK_CTL_ASPMC_L1, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %65 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %66 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %55, i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %70)
  br label %72

72:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @IWM_SETBITS(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_CLRBITS(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
