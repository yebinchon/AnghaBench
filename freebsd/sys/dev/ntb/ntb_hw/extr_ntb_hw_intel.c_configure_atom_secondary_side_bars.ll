; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_configure_atom_secondary_side_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_configure_atom_secondary_side_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64 }

@NTB_DEV_USD = common dso_local global i64 0, align 8
@ATOM_PBAR2XLAT_OFFSET = common dso_local global i32 0, align 4
@XEON_B2B_BAR2_ADDR64 = common dso_local global i32 0, align 4
@ATOM_PBAR4XLAT_OFFSET = common dso_local global i32 0, align 4
@XEON_B2B_BAR4_ADDR64 = common dso_local global i32 0, align 4
@ATOM_MBAR23_OFFSET = common dso_local global i32 0, align 4
@ATOM_MBAR45_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*)* @configure_atom_secondary_side_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_atom_secondary_side_bars(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  %3 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NTB_DEV_USD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @ATOM_PBAR2XLAT_OFFSET, align 4
  %10 = load i32, i32* @XEON_B2B_BAR2_ADDR64, align 4
  %11 = call i32 @intel_ntb_reg_write(i32 8, i32 %9, i32 %10)
  %12 = load i32, i32* @ATOM_PBAR4XLAT_OFFSET, align 4
  %13 = load i32, i32* @XEON_B2B_BAR4_ADDR64, align 4
  %14 = call i32 @intel_ntb_reg_write(i32 8, i32 %12, i32 %13)
  %15 = load i32, i32* @ATOM_MBAR23_OFFSET, align 4
  %16 = load i32, i32* @XEON_B2B_BAR2_ADDR64, align 4
  %17 = call i32 @intel_ntb_reg_write(i32 8, i32 %15, i32 %16)
  %18 = load i32, i32* @ATOM_MBAR45_OFFSET, align 4
  %19 = load i32, i32* @XEON_B2B_BAR4_ADDR64, align 4
  %20 = call i32 @intel_ntb_reg_write(i32 8, i32 %18, i32 %19)
  br label %34

21:                                               ; preds = %1
  %22 = load i32, i32* @ATOM_PBAR2XLAT_OFFSET, align 4
  %23 = load i32, i32* @XEON_B2B_BAR2_ADDR64, align 4
  %24 = call i32 @intel_ntb_reg_write(i32 8, i32 %22, i32 %23)
  %25 = load i32, i32* @ATOM_PBAR4XLAT_OFFSET, align 4
  %26 = load i32, i32* @XEON_B2B_BAR4_ADDR64, align 4
  %27 = call i32 @intel_ntb_reg_write(i32 8, i32 %25, i32 %26)
  %28 = load i32, i32* @ATOM_MBAR23_OFFSET, align 4
  %29 = load i32, i32* @XEON_B2B_BAR2_ADDR64, align 4
  %30 = call i32 @intel_ntb_reg_write(i32 8, i32 %28, i32 %29)
  %31 = load i32, i32* @ATOM_MBAR45_OFFSET, align 4
  %32 = load i32, i32* @XEON_B2B_BAR4_ADDR64, align 4
  %33 = call i32 @intel_ntb_reg_write(i32 8, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @intel_ntb_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
