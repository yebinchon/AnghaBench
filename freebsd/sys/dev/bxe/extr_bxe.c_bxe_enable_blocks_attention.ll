; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_enable_blocks_attention.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_enable_blocks_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@PXP_REG_PXP_INT_MASK_0 = common dso_local global i64 0, align 8
@PXP_REG_PXP_INT_MASK_1 = common dso_local global i64 0, align 8
@DORQ_REG_DORQ_INT_MASK = common dso_local global i64 0, align 8
@CFC_REG_CFC_INT_MASK = common dso_local global i64 0, align 8
@BRB1_REG_BRB1_INT_MASK = common dso_local global i64 0, align 8
@QM_REG_QM_INT_MASK = common dso_local global i64 0, align 8
@TM_REG_TM_INT_MASK = common dso_local global i64 0, align 8
@XSDM_REG_XSDM_INT_MASK_0 = common dso_local global i64 0, align 8
@XSDM_REG_XSDM_INT_MASK_1 = common dso_local global i64 0, align 8
@XCM_REG_XCM_INT_MASK = common dso_local global i64 0, align 8
@USDM_REG_USDM_INT_MASK_0 = common dso_local global i64 0, align 8
@USDM_REG_USDM_INT_MASK_1 = common dso_local global i64 0, align 8
@UCM_REG_UCM_INT_MASK = common dso_local global i64 0, align 8
@GRCBASE_UPB = common dso_local global i64 0, align 8
@PB_REG_PB_INT_MASK = common dso_local global i64 0, align 8
@CSDM_REG_CSDM_INT_MASK_0 = common dso_local global i64 0, align 8
@CSDM_REG_CSDM_INT_MASK_1 = common dso_local global i64 0, align 8
@CCM_REG_CCM_INT_MASK = common dso_local global i64 0, align 8
@PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT = common dso_local global i32 0, align 4
@PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF = common dso_local global i32 0, align 4
@PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN = common dso_local global i32 0, align 4
@PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED = common dso_local global i32 0, align 4
@PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED = common dso_local global i32 0, align 4
@PXP2_REG_PXP2_INT_MASK_0 = common dso_local global i64 0, align 8
@TSDM_REG_TSDM_INT_MASK_0 = common dso_local global i64 0, align 8
@TSDM_REG_TSDM_INT_MASK_1 = common dso_local global i64 0, align 8
@TCM_REG_TCM_INT_MASK = common dso_local global i64 0, align 8
@TSEM_REG_TSEM_INT_MASK_1 = common dso_local global i64 0, align 8
@CDU_REG_CDU_INT_MASK = common dso_local global i64 0, align 8
@DMAE_REG_DMAE_INT_MASK = common dso_local global i64 0, align 8
@PBF_REG_PBF_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_enable_blocks_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_enable_blocks_attention(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i64, i64* @PXP_REG_PXP_INT_MASK_0, align 8
  %6 = call i32 @REG_WR(%struct.bxe_softc* %4, i64 %5, i32 0)
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = load i64, i64* @PXP_REG_PXP_INT_MASK_1, align 8
  %13 = call i32 @REG_WR(%struct.bxe_softc* %11, i64 %12, i32 64)
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = load i64, i64* @PXP_REG_PXP_INT_MASK_1, align 8
  %17 = call i32 @REG_WR(%struct.bxe_softc* %15, i64 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = load i64, i64* @DORQ_REG_DORQ_INT_MASK, align 8
  %21 = call i32 @REG_WR(%struct.bxe_softc* %19, i64 %20, i32 0)
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = load i64, i64* @CFC_REG_CFC_INT_MASK, align 8
  %24 = call i32 @REG_WR(%struct.bxe_softc* %22, i64 %23, i32 0)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = load i64, i64* @BRB1_REG_BRB1_INT_MASK, align 8
  %27 = call i32 @REG_WR(%struct.bxe_softc* %25, i64 %26, i32 64512)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i64, i64* @QM_REG_QM_INT_MASK, align 8
  %30 = call i32 @REG_WR(%struct.bxe_softc* %28, i64 %29, i32 0)
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = load i64, i64* @TM_REG_TM_INT_MASK, align 8
  %33 = call i32 @REG_WR(%struct.bxe_softc* %31, i64 %32, i32 0)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = load i64, i64* @XSDM_REG_XSDM_INT_MASK_0, align 8
  %36 = call i32 @REG_WR(%struct.bxe_softc* %34, i64 %35, i32 0)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = load i64, i64* @XSDM_REG_XSDM_INT_MASK_1, align 8
  %39 = call i32 @REG_WR(%struct.bxe_softc* %37, i64 %38, i32 0)
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = load i64, i64* @XCM_REG_XCM_INT_MASK, align 8
  %42 = call i32 @REG_WR(%struct.bxe_softc* %40, i64 %41, i32 0)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = load i64, i64* @USDM_REG_USDM_INT_MASK_0, align 8
  %45 = call i32 @REG_WR(%struct.bxe_softc* %43, i64 %44, i32 0)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = load i64, i64* @USDM_REG_USDM_INT_MASK_1, align 8
  %48 = call i32 @REG_WR(%struct.bxe_softc* %46, i64 %47, i32 0)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = load i64, i64* @UCM_REG_UCM_INT_MASK, align 8
  %51 = call i32 @REG_WR(%struct.bxe_softc* %49, i64 %50, i32 0)
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = load i64, i64* @GRCBASE_UPB, align 8
  %54 = load i64, i64* @PB_REG_PB_INT_MASK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @REG_WR(%struct.bxe_softc* %52, i64 %55, i32 0)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = load i64, i64* @CSDM_REG_CSDM_INT_MASK_0, align 8
  %59 = call i32 @REG_WR(%struct.bxe_softc* %57, i64 %58, i32 0)
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %61 = load i64, i64* @CSDM_REG_CSDM_INT_MASK_1, align 8
  %62 = call i32 @REG_WR(%struct.bxe_softc* %60, i64 %61, i32 0)
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %64 = load i64, i64* @CCM_REG_CCM_INT_MASK, align 8
  %65 = call i32 @REG_WR(%struct.bxe_softc* %63, i64 %64, i32 0)
  %66 = load i32, i32* @PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT, align 4
  %67 = load i32, i32* @PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %3, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %18
  %75 = load i32, i32* @PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED, align 4
  %76 = load i32, i32* @PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %18
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %82 = load i64, i64* @PXP2_REG_PXP2_INT_MASK_0, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @REG_WR(%struct.bxe_softc* %81, i64 %82, i32 %83)
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %86 = load i64, i64* @TSDM_REG_TSDM_INT_MASK_0, align 8
  %87 = call i32 @REG_WR(%struct.bxe_softc* %85, i64 %86, i32 0)
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %89 = load i64, i64* @TSDM_REG_TSDM_INT_MASK_1, align 8
  %90 = call i32 @REG_WR(%struct.bxe_softc* %88, i64 %89, i32 0)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %92 = load i64, i64* @TCM_REG_TCM_INT_MASK, align 8
  %93 = call i32 @REG_WR(%struct.bxe_softc* %91, i64 %92, i32 0)
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %95 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %80
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %99 = load i64, i64* @TSEM_REG_TSEM_INT_MASK_1, align 8
  %100 = call i32 @REG_WR(%struct.bxe_softc* %98, i64 %99, i32 2047)
  br label %101

101:                                              ; preds = %97, %80
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %103 = load i64, i64* @CDU_REG_CDU_INT_MASK, align 8
  %104 = call i32 @REG_WR(%struct.bxe_softc* %102, i64 %103, i32 0)
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %106 = load i64, i64* @DMAE_REG_DMAE_INT_MASK, align 8
  %107 = call i32 @REG_WR(%struct.bxe_softc* %105, i64 %106, i32 0)
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = load i64, i64* @PBF_REG_PBF_INT_MASK, align 8
  %110 = call i32 @REG_WR(%struct.bxe_softc* %108, i64 %109, i32 24)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
