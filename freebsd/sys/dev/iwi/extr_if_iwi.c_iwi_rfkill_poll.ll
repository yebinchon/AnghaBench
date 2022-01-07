; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwi_rfkill_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_rfkill_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iwi_softc*
  store %struct.iwi_softc* %5, %struct.iwi_softc** %3, align 8
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %7 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %6)
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %9 = call i32 @iwi_getrfkill(%struct.iwi_softc* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %12, i32 0, i32 2
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %14, i32 0, i32 1
  %16 = call i32 @ieee80211_runtask(i32* %13, i32* %15)
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* @hz, align 4
  %21 = mul nsw i32 2, %20
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %23 = call i32 @callout_reset(i32* %19, i32 %21, void (i8*)* @iwi_rfkill_poll, %struct.iwi_softc* %22)
  br label %24

24:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_getrfkill(%struct.iwi_softc*) #1

declare dso_local i32 @ieee80211_runtask(i32*, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
