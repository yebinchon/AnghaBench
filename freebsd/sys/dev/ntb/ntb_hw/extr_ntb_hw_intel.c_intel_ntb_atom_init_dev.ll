; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_atom_init_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_atom_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i64, i64, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32 }

@NTB_CONN_B2B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unsupported NTB configuration (%d)\0A\00", align 1
@ATOM_SPAD_COUNT = common dso_local global i32 0, align 4
@ATOM_DB_COUNT = common dso_local global i64 0, align 8
@ATOM_DB_MSIX_VECTOR_COUNT = common dso_local global i32 0, align 4
@ATOM_DB_MSIX_VECTOR_SHIFT = common dso_local global i32 0, align 4
@atom_reg = common dso_local global i32 0, align 4
@atom_pri_reg = common dso_local global i32 0, align 4
@atom_b2b_reg = common dso_local global i32 0, align 4
@atom_sec_xlat = common dso_local global i32 0, align 4
@ATOM_SPCICMD_OFFSET = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@NTB_SPEED_AUTO = common dso_local global i32 0, align 4
@NTB_WIDTH_AUTO = common dso_local global i32 0, align 4
@atom_link_hb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_atom_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_atom_init_dev(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %5 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NTB_CONN_B2B, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %10, i8* %14)
  %16 = load i32, i32* @ATOM_SPAD_COUNT, align 4
  %17 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @ATOM_DB_COUNT, align 8
  %20 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @ATOM_DB_MSIX_VECTOR_COUNT, align 4
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ATOM_DB_MSIX_VECTOR_SHIFT, align 4
  %26 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 1, %30
  %32 = sub i64 %31, 1
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %35, i32 0, i32 8
  store i32* @atom_reg, i32** %36, align 8
  %37 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %37, i32 0, i32 7
  store i32* @atom_pri_reg, i32** %38, align 8
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %39, i32 0, i32 6
  store i32* @atom_b2b_reg, i32** %40, align 8
  %41 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %41, i32 0, i32 5
  store i32* @atom_sec_xlat, i32** %42, align 8
  %43 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_write_config(i32 %45, i32 252, i32 4, i32 4)
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %48 = call i32 @configure_atom_secondary_side_bars(%struct.ntb_softc* %47)
  %49 = load i32, i32* @ATOM_SPCICMD_OFFSET, align 4
  %50 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %51 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @intel_ntb_reg_write(i32 2, i32 %49, i32 %52)
  %54 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %55 = call i32 @intel_ntb_init_isr(%struct.ntb_softc* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %72

60:                                               ; preds = %1
  %61 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NTB_SPEED_AUTO, align 4
  %65 = load i32, i32* @NTB_WIDTH_AUTO, align 4
  %66 = call i32 @intel_ntb_link_enable(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %67, i32 0, i32 3
  %69 = load i32, i32* @atom_link_hb, align 4
  %70 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %71 = call i32 @callout_reset(i32* %68, i32 0, i32 %69, %struct.ntb_softc* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %60, %58
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @configure_atom_secondary_side_bars(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_reg_write(i32, i32, i32) #1

declare dso_local i32 @intel_ntb_init_isr(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_link_enable(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
