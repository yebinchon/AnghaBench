; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setstatxpow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setstatxpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211req_sta_txpow = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setstatxpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setstatxpow(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211req_sta_txpow, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %9 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @copyin(i32 %19, %struct.ieee80211req_sta_txpow* %7, i32 8)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211req_sta_txpow, %struct.ieee80211req_sta_txpow* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ieee80211_node* @ieee80211_find_vap_node(i32* %29, %struct.ieee80211vap* %30, i32 %32)
  store %struct.ieee80211_node* %33, %struct.ieee80211_node** %6, align 8
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %35 = icmp eq %struct.ieee80211_node* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ieee80211req_sta_txpow, %struct.ieee80211req_sta_txpow* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %44 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %36, %23, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @copyin(i32, %struct.ieee80211req_sta_txpow*, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_vap_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
