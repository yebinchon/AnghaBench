; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_switch_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"could not set channel, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not reset Tx queues, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not init Tx queues, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"could not set led state, error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"could not flush pipes, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, %struct.ieee80211_channel*)* @uath_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_switch_channel(%struct.uath_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %7 = call i32 @UATH_ASSERT_LOCKED(%struct.uath_softc* %6)
  %8 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %10 = call i32 @uath_set_chan(%struct.uath_softc* %8, %struct.ieee80211_channel* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %21 = call i32 @uath_reset_tx_queues(%struct.uath_softc* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %64

30:                                               ; preds = %19
  %31 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %32 = call i32 @uath_wme_init(%struct.uath_softc* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %37 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %64

41:                                               ; preds = %30
  %42 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %43 = call i32 @uath_set_ledstate(%struct.uath_softc* %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %64

52:                                               ; preds = %41
  %53 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %54 = call i32 @uath_flush(%struct.uath_softc* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %59 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %57, %46, %35, %24, %13
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @UATH_ASSERT_LOCKED(%struct.uath_softc*) #1

declare dso_local i32 @uath_set_chan(%struct.uath_softc*, %struct.ieee80211_channel*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @uath_reset_tx_queues(%struct.uath_softc*) #1

declare dso_local i32 @uath_wme_init(%struct.uath_softc*) #1

declare dso_local i32 @uath_set_ledstate(%struct.uath_softc*, i32) #1

declare dso_local i32 @uath_flush(%struct.uath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
