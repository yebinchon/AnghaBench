; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_putrxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_putrxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32 }
%struct.mwl_jumbo = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*, i8*)* @mwl_putrxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_putrxdma(%struct.mwl_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mwl_jumbo*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %7 = call i32 @MWL_RXFREE_LOCK(%struct.mwl_softc* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.mwl_jumbo* @MWL_JUMBO_DATA2BUF(i8* %8)
  store %struct.mwl_jumbo* %9, %struct.mwl_jumbo** %5, align 8
  %10 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %10, i32 0, i32 1
  %12 = load %struct.mwl_jumbo*, %struct.mwl_jumbo** %5, align 8
  %13 = load i32, i32* @next, align 4
  %14 = call i32 @SLIST_INSERT_HEAD(i32* %11, %struct.mwl_jumbo* %12, i32 %13)
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %20 = call i32 @MWL_RXFREE_UNLOCK(%struct.mwl_softc* %19)
  ret void
}

declare dso_local i32 @MWL_RXFREE_LOCK(%struct.mwl_softc*) #1

declare dso_local %struct.mwl_jumbo* @MWL_JUMBO_DATA2BUF(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.mwl_jumbo*, i32) #1

declare dso_local i32 @MWL_RXFREE_UNLOCK(%struct.mwl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
