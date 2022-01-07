; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_wdog.c_octeon_wdog_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_wdog.c_octeon_wdog_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_wdog_core_softc = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"got watchdog interrupt for core %u on core %u.\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @octeon_wdog_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_wdog_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octeon_wdog_core_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.octeon_wdog_core_softc*
  store %struct.octeon_wdog_core_softc* %5, %struct.octeon_wdog_core_softc** %3, align 8
  %6 = load %struct.octeon_wdog_core_softc*, %struct.octeon_wdog_core_softc** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_wdog_core_softc, %struct.octeon_wdog_core_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 (...) @cvmx_get_core_num()
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.octeon_wdog_core_softc*, %struct.octeon_wdog_core_softc** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_wdog_core_softc, %struct.octeon_wdog_core_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 (...) @cvmx_get_core_num()
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %11, i8* %16)
  %18 = load %struct.octeon_wdog_core_softc*, %struct.octeon_wdog_core_softc** %3, align 8
  %19 = call i64 (...) @cvmx_get_core_num()
  %20 = call i32 @CVMX_CIU_PP_POKEX(i64 %19)
  %21 = call i32 @cvmx_write_csr(i32 %20, i32 1)
  %22 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %22
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_PP_POKEX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
