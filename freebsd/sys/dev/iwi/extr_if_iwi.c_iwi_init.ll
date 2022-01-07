; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i64, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.iwi_softc*
  store %struct.iwi_softc* %6, %struct.iwi_softc** %3, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load i32, i32* @IWI_LOCK_DECL, align 4
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %11 = call i32 @IWI_LOCK(%struct.iwi_softc* %10)
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %13 = call i32 @iwi_init_locked(%struct.iwi_softc* %12)
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %15 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %14)
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %22 = call i32 @ieee80211_start_all(%struct.ieee80211com* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_init_locked(%struct.iwi_softc*) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
