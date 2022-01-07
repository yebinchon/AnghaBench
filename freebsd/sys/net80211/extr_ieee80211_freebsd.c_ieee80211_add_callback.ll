; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_add_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_add_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ieee80211_node = type opaque
%struct.m_tag = type { i32 }
%struct.ieee80211_cb = type { void (%struct.ieee80211_node.0*, i8*, i32)*, i8* }
%struct.ieee80211_node.0 = type opaque

@MTAG_ABI_NET80211 = common dso_local global i32 0, align 4
@NET80211_TAG_CALLBACK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_TXCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_callback(%struct.mbuf* %0, void (%struct.ieee80211_node*, i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca void (%struct.ieee80211_node*, i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.m_tag*, align 8
  %9 = alloca %struct.ieee80211_cb*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store void (%struct.ieee80211_node*, i8*, i32)* %1, void (%struct.ieee80211_node*, i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @MTAG_ABI_NET80211, align 4
  %11 = load i32, i32* @NET80211_TAG_CALLBACK, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = call %struct.m_tag* @m_tag_alloc(i32 %10, i32 %11, i32 16, i32 %12)
  store %struct.m_tag* %13, %struct.m_tag** %8, align 8
  %14 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %15 = icmp eq %struct.m_tag* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %19 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %18, i64 1
  %20 = bitcast %struct.m_tag* %19 to %struct.ieee80211_cb*
  store %struct.ieee80211_cb* %20, %struct.ieee80211_cb** %9, align 8
  %21 = load void (%struct.ieee80211_node*, i8*, i32)*, void (%struct.ieee80211_node*, i8*, i32)** %6, align 8
  %22 = bitcast void (%struct.ieee80211_node*, i8*, i32)* %21 to void (%struct.ieee80211_node.0*, i8*, i32)*
  %23 = load %struct.ieee80211_cb*, %struct.ieee80211_cb** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_cb, %struct.ieee80211_cb* %23, i32 0, i32 0
  store void (%struct.ieee80211_node.0*, i8*, i32)* %22, void (%struct.ieee80211_node.0*, i8*, i32)** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.ieee80211_cb*, %struct.ieee80211_cb** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_cb, %struct.ieee80211_cb* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = load %struct.m_tag*, %struct.m_tag** %8, align 8
  %30 = call i32 @m_tag_prepend(%struct.mbuf* %28, %struct.m_tag* %29)
  %31 = load i32, i32* @M_TXCB, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %17, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
