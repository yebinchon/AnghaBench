; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwi_softc* }
%struct.iwi_softc = type { i32 }
%struct.ifreq = type { i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, i32, i8*)* @iwi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_ioctl(%struct.ieee80211com* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.iwi_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ifreq*
  store %struct.ifreq* %11, %struct.ifreq** %7, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %13, align 8
  store %struct.iwi_softc* %14, %struct.iwi_softc** %8, align 8
  %15 = load i32, i32* @IWI_LOCK_DECL, align 4
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %8, align 8
  %17 = call i32 @IWI_LOCK(%struct.iwi_softc* %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 128, label %25
  ]

19:                                               ; preds = %3
  %20 = load %struct.iwi_softc*, %struct.iwi_softc** %8, align 8
  %21 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %20, i32 0, i32 0
  %22 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %23 = call i32 @ifr_data_get_ptr(%struct.ifreq* %22)
  %24 = call i32 @copyout(i32* %21, i32 %23, i32 4)
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %8, align 8
  %27 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %26, i32 0, i32 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  store i32 0, i32* %9, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOTTY, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %25, %19
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %8, align 8
  %33 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %32)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
