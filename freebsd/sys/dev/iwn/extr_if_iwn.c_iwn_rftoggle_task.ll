; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_rftoggle_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_rftoggle_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@IWN_GP_CNTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RF switch: radio %s\0A\00", align 1
@IWN_GP_CNTRL_RFKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@IWN_INT = common dso_local global i32 0, align 4
@IWN_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @iwn_rftoggle_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_rftoggle_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.iwn_softc*
  store %struct.iwn_softc* %9, %struct.iwn_softc** %5, align 8
  %10 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %11 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %13 = call i32 @IWN_LOCK(%struct.iwn_softc* %12)
  %14 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %15 = load i32, i32* @IWN_GP_CNTRL, align 4
  %16 = call i32 @IWN_READ(%struct.iwn_softc* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %18 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %17)
  %19 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %20 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IWN_GP_CNTRL_RFKILL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IWN_GP_CNTRL_RFKILL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %2
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %35 = call i32 @ieee80211_suspend_all(%struct.ieee80211com* %34)
  %36 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %37 = call i32 @IWN_LOCK(%struct.iwn_softc* %36)
  %38 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %39 = load i32, i32* @IWN_INT, align 4
  %40 = call i32 @IWN_WRITE(%struct.iwn_softc* %38, i32 %39, i32 -1)
  %41 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %42 = load i32, i32* @IWN_INT_MASK, align 4
  %43 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %44 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IWN_WRITE(%struct.iwn_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.iwn_softc*, %struct.iwn_softc** %5, align 8
  %48 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %47)
  br label %52

49:                                               ; preds = %2
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %51 = call i32 @ieee80211_resume_all(%struct.ieee80211com* %50)
  br label %52

52:                                               ; preds = %49, %33
  ret void
}

declare dso_local i32 @IWN_LOCK(%struct.iwn_softc*) #1

declare dso_local i32 @IWN_READ(%struct.iwn_softc*, i32) #1

declare dso_local i32 @IWN_UNLOCK(%struct.iwn_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @ieee80211_suspend_all(%struct.ieee80211com*) #1

declare dso_local i32 @IWN_WRITE(%struct.iwn_softc*, i32, i32) #1

declare dso_local i32 @ieee80211_resume_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
