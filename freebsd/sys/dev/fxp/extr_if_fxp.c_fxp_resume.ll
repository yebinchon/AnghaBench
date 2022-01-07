; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i64, i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@FXP_FLAG_WOL = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@FXP_FLAG_WOLCAP = common dso_local global i32 0, align 4
@FXP_CSR_PMDR = common dso_local global i32 0, align 4
@FXP_CSR_PORT = common dso_local global i32 0, align 4
@FXP_PORT_SELECTIVE_RESET = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fxp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.fxp_softc* @device_get_softc(i32 %7)
  store %struct.fxp_softc* %8, %struct.fxp_softc** %3, align 8
  %9 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %13 = call i32 @FXP_LOCK(%struct.fxp_softc* %12)
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCIY_PMG, align 4
  %18 = call i64 @pci_find_cap(i32 %16, i32 %17, i32* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load i32, i32* @FXP_FLAG_WOL, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pci_read_config(i32 %29, i64 %33, i32 2)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pci_write_config(i32 %41, i64 %45, i32 %46, i32 2)
  %48 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FXP_FLAG_WOLCAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %20
  %55 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %56 = load i32, i32* @FXP_CSR_PMDR, align 4
  %57 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %58 = load i32, i32* @FXP_CSR_PMDR, align 4
  %59 = call i32 @CSR_READ_1(%struct.fxp_softc* %57, i32 %58)
  %60 = call i32 @CSR_WRITE_1(%struct.fxp_softc* %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %20
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %64 = load i32, i32* @FXP_CSR_PORT, align 4
  %65 = load i32, i32* @FXP_PORT_SELECTIVE_RESET, align 4
  %66 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %63, i32 %64, i32 %65)
  %67 = call i32 @DELAY(i32 10)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @if_getflags(i32 %68)
  %70 = load i32, i32* @IFF_UP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %75 = call i32 @fxp_init_body(%struct.fxp_softc* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %62
  %77 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %78 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %80 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %79)
  ret i32 0
}

declare dso_local %struct.fxp_softc* @device_get_softc(i32) #1

declare dso_local i32 @FXP_LOCK(%struct.fxp_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.fxp_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #1

declare dso_local i32 @FXP_UNLOCK(%struct.fxp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
