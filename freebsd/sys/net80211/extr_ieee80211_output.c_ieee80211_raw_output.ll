; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_raw_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_raw_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* }
%struct.ieee80211_node = type opaque
%struct.ieee80211_bpf_params = type opaque
%struct.ieee80211_node.0 = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ieee80211_bpf_params.1 = type { i32 }

@CSUM_SND_TAG = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_raw_output(%struct.ieee80211vap* %0, %struct.ieee80211_node.0* %1, %struct.mbuf* %2, %struct.ieee80211_bpf_params.1* %3) #0 {
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_node.0*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_bpf_params.1*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_node.0* %1, %struct.ieee80211_node.0** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.ieee80211_bpf_params.1* %3, %struct.ieee80211_bpf_params.1** %8, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 1
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %9, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CSUM_SND_TAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.ieee80211_node.0*, %struct.ieee80211_node.0** %6, align 8
  %24 = bitcast %struct.ieee80211_node.0* %23 to i8*
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ieee80211_bpf_params.1*, %struct.ieee80211_bpf_params.1** %8, align 8
  %29 = icmp ne %struct.ieee80211_bpf_params.1* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = load %struct.ieee80211_bpf_params.1*, %struct.ieee80211_bpf_params.1** %8, align 8
  %33 = call i32 @ieee80211_add_xmit_params(%struct.mbuf* %31, %struct.ieee80211_bpf_params.1* %32)
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %35, i32 0, i32 0
  %37 = load i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)*, i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)** %36, align 8
  %38 = load %struct.ieee80211_node.0*, %struct.ieee80211_node.0** %6, align 8
  %39 = bitcast %struct.ieee80211_node.0* %38 to %struct.ieee80211_node*
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = load %struct.ieee80211_bpf_params.1*, %struct.ieee80211_bpf_params.1** %8, align 8
  %42 = bitcast %struct.ieee80211_bpf_params.1* %41 to %struct.ieee80211_bpf_params*
  %43 = call i32 %37(%struct.ieee80211_node* %39, %struct.mbuf* %40, %struct.ieee80211_bpf_params* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %51 = call i32 @if_inc_counter(i32 %49, i32 %50, i32 1)
  %52 = load %struct.ieee80211_node.0*, %struct.ieee80211_node.0** %6, align 8
  %53 = call i32 @ieee80211_free_node(%struct.ieee80211_node.0* %52)
  br label %54

54:                                               ; preds = %46, %34
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ieee80211_add_xmit_params(%struct.mbuf*, %struct.ieee80211_bpf_params.1*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
