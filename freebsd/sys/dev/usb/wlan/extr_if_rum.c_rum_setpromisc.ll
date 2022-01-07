; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@RT2573_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2573_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s promiscuous mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_setpromisc(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %4 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %4, i32 0, i32 0
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %12 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %13 = load i32, i32* @RT2573_DROP_NOT_TO_ME, align 4
  %14 = call i32 @rum_setbits(%struct.rum_softc* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %17 = load i32, i32* @RT2573_TXRX_CSR0, align 4
  %18 = load i32, i32* @RT2573_DROP_NOT_TO_ME, align 4
  %19 = call i32 @rum_clrbits(%struct.rum_softc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %26)
  ret void
}

declare dso_local i32 @rum_setbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_clrbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
