; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_en1_intr_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_en1_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIU_IRQ_EN1_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ciu_en1_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciu_en1_intr_mask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @cvmx_get_core_num()
  %9 = mul nsw i32 %8, 2
  %10 = call i32 @CVMX_CIU_INTX_EN1(i32 %9)
  %11 = call i64 @cvmx_read_csr(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %14 = sub nsw i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = call i32 (...) @cvmx_get_core_num()
  %21 = mul nsw i32 %20, 2
  %22 = call i32 @CVMX_CIU_INTX_EN1(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @cvmx_write_csr(i32 %22, i64 %23)
  ret void
}

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
