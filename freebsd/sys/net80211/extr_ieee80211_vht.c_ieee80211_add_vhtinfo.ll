; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_add_vhtinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_add_vhtinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_ELEMID_VHT_OPMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_add_vhtinfo(i32* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @memset(i32* %5, i8 signext 0, i32 4)
  %7 = load i32, i32* @IEEE80211_ELEMID_VHT_OPMODE, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %7, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 2, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32* %13, i32** %3, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @ieee80211_vht_get_chwidth_ie(%struct.TYPE_2__* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %3, align 8
  store i32 %24, i32* %25, align 4
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %3, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ADDSHORT(i32* %34, i32 65532)
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @ieee80211_vht_get_chwidth_ie(%struct.TYPE_2__*) #1

declare dso_local i32 @ADDSHORT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
