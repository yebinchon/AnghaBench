; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_err_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_err_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i64, i32, i32, i64 }

@PCIR_SECSTAT_1 = common dso_local global i64 0, align 8
@REG_PEX_MES_IER = common dso_local global i32 0, align 4
@REG_PEX_MES_DR = common dso_local global i32 0, align 4
@REG_PEX_ERR_DR = common dso_local global i32 0, align 4
@PCIER_DEVICE_STA = common dso_local global i64 0, align 8
@REG_PEX_ERR_EN = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL = common dso_local global i64 0, align 8
@PCIEM_CTL_URR_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_FER_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_NFER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fsl_pcib_err_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_pcib_err_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_pcib_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.fsl_pcib_softc* @device_get_softc(i32 %8)
  store %struct.fsl_pcib_softc* %9, %struct.fsl_pcib_softc** %3, align 8
  %10 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %11 = load i64, i64* @PCIR_SECSTAT_1, align 8
  %12 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %10, i32 0, i32 0, i32 0, i64 %11, i32 2)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %17 = load i64, i64* @PCIR_SECSTAT_1, align 8
  %18 = call i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc* %16, i32 0, i32 0, i32 0, i64 %17, i32 65535, i32 2)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REG_PEX_MES_IER, align 4
  %32 = call i32 @bus_space_write_4(i32 %27, i32 %30, i32 %31, i32 -1)
  %33 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @REG_PEX_MES_DR, align 4
  %40 = call i32 @bus_space_write_4(i32 %35, i32 %38, i32 %39, i32 -1)
  %41 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @REG_PEX_ERR_DR, align 4
  %48 = call i32 @bus_space_write_4(i32 %43, i32 %46, i32 %47, i32 -1)
  %49 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %50 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %51 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %49, i32 0, i32 0, i32 0, i64 %54, i32 2)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %24
  %59 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %60 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %61 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc* %59, i32 0, i32 0, i32 0, i64 %64, i32 65535, i32 2)
  br label %66

66:                                               ; preds = %58, %24
  store i32 12582656, i32* %7, align 4
  %67 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %71 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @REG_PEX_ERR_EN, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @bus_space_write_4(i32 %69, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %77 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %76, i32 0, i32 0, i32 0, i64 %81, i32 4)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @PCIEM_CTL_URR_ENABLE, align 4
  %85 = load i32, i32* @PCIEM_CTL_FER_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PCIEM_CTL_NFER_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %92 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %3, align 8
  %93 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc* %91, i32 0, i32 0, i32 0, i64 %96, i32 %97, i32 4)
  br label %99

99:                                               ; preds = %66, %19
  ret void
}

declare dso_local %struct.fsl_pcib_softc* @device_get_softc(i32) #1

declare dso_local i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
