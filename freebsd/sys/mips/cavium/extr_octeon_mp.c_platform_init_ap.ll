; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_mp.c_platform_init_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_mp.c_platform_init_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_init_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @mips_wr_ebase(i32 -2147483648)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @CVMX_CIU_MBOX_CLRX(i32 %7)
  %9 = call i32 @cvmx_write_csr(i32 %8, i32 -1)
  %10 = call i32 (...) @octeon_ciu_reset()
  %11 = call i32 @hard_int_mask(i32 0)
  store i32 %11, i32* %3, align 4
  %12 = call i32 @hard_int_mask(i32 5)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @platform_ipi_hardintr_num()
  %14 = call i32 @hard_int_mask(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @set_intr_mask(i32 %19)
  %21 = call i32 (...) @mips_wbflush()
  ret void
}

declare dso_local i32 @mips_wr_ebase(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_MBOX_CLRX(i32) #1

declare dso_local i32 @octeon_ciu_reset(...) #1

declare dso_local i32 @hard_int_mask(i32) #1

declare dso_local i32 @platform_ipi_hardintr_num(...) #1

declare dso_local i32 @set_intr_mask(i32) #1

declare dso_local i32 @mips_wbflush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
