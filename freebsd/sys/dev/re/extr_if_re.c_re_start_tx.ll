; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_start_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@RL_TXSTART_START = common dso_local global i32 0, align 4
@RL_TIMERCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_start_tx(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %3 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %4 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %12 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bus_dmamap_sync(i32 %6, i32 %10, i32 %13)
  %15 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %16 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RL_TXSTART_START, align 4
  %20 = call i32 @CSR_WRITE_1(%struct.rl_softc* %15, i32 %18, i32 %19)
  %21 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %21, i32 0, i32 0
  store i32 5, i32* %22, align 4
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
