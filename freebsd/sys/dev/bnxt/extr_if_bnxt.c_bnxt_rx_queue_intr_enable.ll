; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_rx_queue_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_rx_queue_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @bnxt_rx_queue_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_rx_queue_intr_enable(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnxt_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bnxt_softc* @iflib_get_softc(i32 %6)
  store %struct.bnxt_softc* %7, %struct.bnxt_softc** %5, align 8
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %9 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @bnxt_do_enable_intr(i32* %12)
  ret i32 0
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @bnxt_do_enable_intr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
