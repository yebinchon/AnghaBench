; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_hw_enable_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_hw_enable_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@CFC_REG_WEAK_ENABLE_PF = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CFC_REG_WEAK_ENABLE_PF is 0x%x\0A\00", align 1
@PBF_REG_DISABLE_PF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PBF_REG_DISABLE_PF is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSI_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IGU_REG_PCI_PF_MSI_EN is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSIX_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IGU_REG_PCI_PF_MSIX_EN is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSIX_FUNC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"IGU_REG_PCI_PF_MSIX_FUNC_MASK is 0x%x\0A\00", align 1
@PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR is 0x%x\0A\00", align 1
@PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR is 0x%x\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_hw_enable_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_hw_enable_status(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i32, i32* @CFC_REG_WEAK_ENABLE_PF, align 4
  %6 = call i32 @REG_RD(%struct.bxe_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = load i32, i32* @DBG_LOAD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BLOGD(%struct.bxe_softc* %7, i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = load i32, i32* @PBF_REG_DISABLE_PF, align 4
  %13 = call i32 @REG_RD(%struct.bxe_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = load i32, i32* @DBG_LOAD, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @BLOGD(%struct.bxe_softc* %14, i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = load i32, i32* @IGU_REG_PCI_PF_MSI_EN, align 4
  %20 = call i32 @REG_RD(%struct.bxe_softc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = load i32, i32* @DBG_LOAD, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @BLOGD(%struct.bxe_softc* %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = load i32, i32* @IGU_REG_PCI_PF_MSIX_EN, align 4
  %27 = call i32 @REG_RD(%struct.bxe_softc* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i32, i32* @DBG_LOAD, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @BLOGD(%struct.bxe_softc* %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = load i32, i32* @IGU_REG_PCI_PF_MSIX_FUNC_MASK, align 4
  %34 = call i32 @REG_RD(%struct.bxe_softc* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = load i32, i32* @DBG_LOAD, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @BLOGD(%struct.bxe_softc* %35, i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load i32, i32* @PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR, align 4
  %41 = call i32 @REG_RD(%struct.bxe_softc* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = load i32, i32* @DBG_LOAD, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @BLOGD(%struct.bxe_softc* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = load i32, i32* @PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR, align 4
  %48 = call i32 @REG_RD(%struct.bxe_softc* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = load i32, i32* @DBG_LOAD, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @BLOGD(%struct.bxe_softc* %49, i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %55 = call i32 @REG_RD(%struct.bxe_softc* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = load i32, i32* @DBG_LOAD, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @BLOGD(%struct.bxe_softc* %56, i32 %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
