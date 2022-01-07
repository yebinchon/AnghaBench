; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_sta_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_sta_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.stainforeq = type { i32 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @get_sta_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sta_space(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.stainforeq*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.stainforeq*
  store %struct.stainforeq* %8, %struct.stainforeq** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16, %2
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %24 = call i64 @sta_space(%struct.ieee80211_node* %23, i64* %6)
  %25 = load %struct.stainforeq*, %struct.stainforeq** %5, align 8
  %26 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @sta_space(%struct.ieee80211_node*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
