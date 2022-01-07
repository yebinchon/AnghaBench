; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_mv_softc = type { i32 }

@MV_GLOBAL_CONTROL_REG = common dso_local global i32 0, align 4
@MV_ARCACHE_TRC_REG = common dso_local global i32 0, align 4
@MV_AWCACHE_TRC_REG = common dso_local global i32 0, align 4
@MV_ARUSER_REG = common dso_local global i32 0, align 4
@MV_AWUSER_REG = common dso_local global i32 0, align 4
@MV_INT_MASK1 = common dso_local global i32 0, align 4
@INT_A_ASSERT_MASK = common dso_local global i32 0, align 4
@INT_B_ASSERT_MASK = common dso_local global i32 0, align 4
@INT_C_ASSERT_MASK = common dso_local global i32 0, align 4
@INT_D_ASSERT_MASK = common dso_local global i32 0, align 4
@DW_MSI_INTR0_MASK = common dso_local global i32 0, align 4
@MV_INT_MASK2 = common dso_local global i32 0, align 4
@MV_INT_CAUSE1 = common dso_local global i32 0, align 4
@MV_INT_CAUSE2 = common dso_local global i32 0, align 4
@MV_ERR_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_mv_softc*)* @pci_mv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_mv_init(%struct.pci_mv_softc* %0) #0 {
  %2 = alloca %struct.pci_mv_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_mv_softc* %0, %struct.pci_mv_softc** %2, align 8
  %4 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MV_GLOBAL_CONTROL_REG, align 4
  %8 = call i32 @pci_dw_dbi_rd4(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -241
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 64
  store i32 %12, i32* %3, align 4
  %13 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %14 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MV_GLOBAL_CONTROL_REG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pci_dw_dbi_wr4(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %20 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MV_ARCACHE_TRC_REG, align 4
  %23 = call i32 @pci_dw_dbi_wr4(i32 %21, i32 %22, i32 13585)
  %24 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %25 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MV_AWCACHE_TRC_REG, align 4
  %28 = call i32 @pci_dw_dbi_wr4(i32 %26, i32 %27, i32 21265)
  %29 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %30 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MV_ARUSER_REG, align 4
  %33 = call i32 @pci_dw_dbi_wr4(i32 %31, i32 %32, i32 2)
  %34 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %35 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MV_AWUSER_REG, align 4
  %38 = call i32 @pci_dw_dbi_wr4(i32 %36, i32 %37, i32 2)
  %39 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %40 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MV_INT_MASK1, align 4
  %43 = call i32 @pci_dw_dbi_rd4(i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @INT_A_ASSERT_MASK, align 4
  %45 = load i32, i32* @INT_B_ASSERT_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INT_C_ASSERT_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @INT_D_ASSERT_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %54 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MV_INT_MASK1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_dw_dbi_wr4(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %60 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DW_MSI_INTR0_MASK, align 4
  %63 = call i32 @pci_dw_dbi_wr4(i32 %61, i32 %62, i32 -1)
  %64 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %65 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MV_INT_MASK1, align 4
  %68 = call i32 @pci_dw_dbi_wr4(i32 %66, i32 %67, i32 -1)
  %69 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %70 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MV_INT_MASK2, align 4
  %73 = call i32 @pci_dw_dbi_wr4(i32 %71, i32 %72, i32 -1)
  %74 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %75 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MV_INT_CAUSE1, align 4
  %78 = call i32 @pci_dw_dbi_wr4(i32 %76, i32 %77, i32 -1)
  %79 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %80 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MV_INT_CAUSE2, align 4
  %83 = call i32 @pci_dw_dbi_wr4(i32 %81, i32 %82, i32 -1)
  %84 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %2, align 8
  %85 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MV_ERR_INT_MASK, align 4
  %88 = call i32 @pci_dw_dbi_wr4(i32 %86, i32 %87, i32 0)
  ret void
}

declare dso_local i32 @pci_dw_dbi_rd4(i32, i32) #1

declare dso_local i32 @pci_dw_dbi_wr4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
