; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_ciu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_machdep.c_octeon_ciu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_PMC_IRQ = common dso_local global i32 0, align 4
@OCTEON_IRQ_MBOX0 = common dso_local global i32 0, align 4
@OCTEON_IRQ_MBOX1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_ciu_reset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cvmx_get_core_num()
  %3 = mul nsw i32 %2, 2
  %4 = call i32 @CVMX_CIU_INTX_EN0(i32 %3)
  %5 = call i32 @cvmx_write_csr(i32 %4, i64 0)
  %6 = call i32 (...) @cvmx_get_core_num()
  %7 = mul nsw i32 %6, 2
  %8 = add nsw i32 %7, 1
  %9 = call i32 @CVMX_CIU_INTX_EN0(i32 %8)
  %10 = call i32 @cvmx_write_csr(i32 %9, i64 0)
  %11 = call i32 (...) @cvmx_get_core_num()
  %12 = mul nsw i32 %11, 2
  %13 = call i32 @CVMX_CIU_INTX_EN1(i32 %12)
  %14 = call i32 @cvmx_write_csr(i32 %13, i64 0)
  %15 = call i32 (...) @cvmx_get_core_num()
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = call i32 @CVMX_CIU_INTX_EN1(i32 %17)
  %19 = call i32 @cvmx_write_csr(i32 %18, i64 0)
  %20 = call i32 (...) @mips_rd_cvmctl()
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = and i32 %21, -897
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @OCTEON_PMC_IRQ, align 4
  %24 = add nsw i32 %23, 2
  %25 = shl i32 %24, 7
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @mips_wr_cvmctl(i32 %28)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

declare dso_local i32 @mips_rd_cvmctl(...) #1

declare dso_local i32 @mips_wr_cvmctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
