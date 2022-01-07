; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.wpi_vap = type { %struct.wpi_buf }
%struct.wpi_buf = type { i32* }

@IEEE80211_M_IBSS = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i32 0, align 4
@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @wpi_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.wpi_vap*, align 8
  %4 = alloca %struct.wpi_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %7 = call %struct.wpi_vap* @WPI_VAP(%struct.ieee80211vap* %6)
  store %struct.wpi_vap* %7, %struct.wpi_vap** %3, align 8
  %8 = load %struct.wpi_vap*, %struct.wpi_vap** %3, align 8
  %9 = getelementptr inbounds %struct.wpi_vap, %struct.wpi_vap* %8, i32 0, i32 0
  store %struct.wpi_buf* %9, %struct.wpi_buf** %4, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = call i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap* %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %16 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IEEE80211_M_IBSS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IEEE80211_M_HOSTAP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20, %1
  %25 = load %struct.wpi_buf*, %struct.wpi_buf** %4, align 8
  %26 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.wpi_buf*, %struct.wpi_buf** %4, align 8
  %31 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @m_freem(i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.wpi_vap*, %struct.wpi_vap** %3, align 8
  %36 = call i32 @WPI_VAP_LOCK_DESTROY(%struct.wpi_vap* %35)
  br label %37

37:                                               ; preds = %34, %20
  %38 = load %struct.wpi_vap*, %struct.wpi_vap** %3, align 8
  %39 = load i32, i32* @M_80211_VAP, align 4
  %40 = call i32 @free(%struct.wpi_vap* %38, i32 %39)
  ret void
}

declare dso_local %struct.wpi_vap* @WPI_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @WPI_VAP_LOCK_DESTROY(%struct.wpi_vap*) #1

declare dso_local i32 @free(%struct.wpi_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
