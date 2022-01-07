; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c__otus_get_txcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c__otus_get_txcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_tx_cmd = type { i32 }
%struct.otus_softc = type { i32 }

@next_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.otus_tx_cmd* (%struct.otus_softc*)* @_otus_get_txcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.otus_tx_cmd* @_otus_get_txcmd(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca %struct.otus_tx_cmd*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %4 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %5 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %4, i32 0, i32 0
  %6 = call %struct.otus_tx_cmd* @STAILQ_FIRST(i32* %5)
  store %struct.otus_tx_cmd* %6, %struct.otus_tx_cmd** %3, align 8
  %7 = load %struct.otus_tx_cmd*, %struct.otus_tx_cmd** %3, align 8
  %8 = icmp ne %struct.otus_tx_cmd* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %11 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %10, i32 0, i32 0
  %12 = load i32, i32* @next_cmd, align 4
  %13 = call i32 @STAILQ_REMOVE_HEAD(i32* %11, i32 %12)
  br label %15

14:                                               ; preds = %1
  store %struct.otus_tx_cmd* null, %struct.otus_tx_cmd** %3, align 8
  br label %15

15:                                               ; preds = %14, %9
  %16 = load %struct.otus_tx_cmd*, %struct.otus_tx_cmd** %3, align 8
  ret %struct.otus_tx_cmd* %16
}

declare dso_local %struct.otus_tx_cmd* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
