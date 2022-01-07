; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_proto_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_proto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_WEP_IVLEN = common dso_local global i64 0, align 8
@IEEE80211_WEP_KIDLEN = common dso_local global i64 0, align 8
@IEEE80211_WEP_EXTIVLEN = common dso_local global i64 0, align 8
@max_linkhdr = common dso_local global i64 0, align 8
@max_protohdr = common dso_local global i64 0, align 8
@max_hdr = common dso_local global i64 0, align 8
@MHLEN = common dso_local global i64 0, align 8
@max_datalen = common dso_local global i64 0, align 8
@IEEE80211_PROT_CTSONLY = common dso_local global i32 0, align 4
@parent_updown = common dso_local global i32 0, align 4
@update_mcast = common dso_local global i32 0, align 4
@update_promisc = common dso_local global i32 0, align 4
@update_channel = common dso_local global i32 0, align 4
@beacon_miss = common dso_local global i32 0, align 4
@update_chw = common dso_local global i32 0, align 4
@restart_vaps = common dso_local global i32 0, align 4
@AGGRESSIVE_MODE_SWITCH_HYSTERESIS = common dso_local global i32 0, align 4
@ieee80211_send_mgmt = common dso_local global i32 0, align 4
@null_raw_xmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_proto_attach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 4
  %8 = load i64, i64* @IEEE80211_WEP_IVLEN, align 8
  %9 = add i64 %7, %8
  %10 = load i64, i64* @IEEE80211_WEP_KIDLEN, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* @IEEE80211_WEP_EXTIVLEN, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @ALIGN(i64 %14)
  %16 = load i64, i64* @max_linkhdr, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @ALIGN(i64 %19)
  store i64 %20, i64* @max_linkhdr, align 8
  %21 = load i64, i64* @max_linkhdr, align 8
  %22 = load i64, i64* @max_protohdr, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* @max_hdr, align 8
  %24 = load i64, i64* @MHLEN, align 8
  %25 = load i64, i64* @max_hdr, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* @max_datalen, align 8
  br label %27

27:                                               ; preds = %18, %1
  %28 = load i32, i32* @IEEE80211_PROT_CTSONLY, align 4
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 9
  %33 = load i32, i32* @parent_updown, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = call i32 @TASK_INIT(i32* %32, i32 0, i32 %33, %struct.ieee80211com* %34)
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 8
  %38 = load i32, i32* @update_mcast, align 4
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = call i32 @TASK_INIT(i32* %37, i32 0, i32 %38, %struct.ieee80211com* %39)
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %41, i32 0, i32 7
  %43 = load i32, i32* @update_promisc, align 4
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %45 = call i32 @TASK_INIT(i32* %42, i32 0, i32 %43, %struct.ieee80211com* %44)
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 6
  %48 = load i32, i32* @update_channel, align 4
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %50 = call i32 @TASK_INIT(i32* %47, i32 0, i32 %48, %struct.ieee80211com* %49)
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 5
  %53 = load i32, i32* @beacon_miss, align 4
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %55 = call i32 @TASK_INIT(i32* %52, i32 0, i32 %53, %struct.ieee80211com* %54)
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 4
  %58 = load i32, i32* @update_chw, align 4
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %60 = call i32 @TASK_INIT(i32* %57, i32 0, i32 %58, %struct.ieee80211com* %59)
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %62 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %61, i32 0, i32 3
  %63 = load i32, i32* @restart_vaps, align 4
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %65 = call i32 @TASK_INIT(i32* %62, i32 0, i32 %63, %struct.ieee80211com* %64)
  %66 = load i32, i32* @AGGRESSIVE_MODE_SWITCH_HYSTERESIS, align 4
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @ieee80211_send_mgmt, align 4
  %71 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %72 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @null_raw_xmit, align 4
  %74 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %75 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %77 = call i32 @ieee80211_adhoc_attach(%struct.ieee80211com* %76)
  %78 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %79 = call i32 @ieee80211_sta_attach(%struct.ieee80211com* %78)
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %81 = call i32 @ieee80211_wds_attach(%struct.ieee80211com* %80)
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %83 = call i32 @ieee80211_hostap_attach(%struct.ieee80211com* %82)
  %84 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %85 = call i32 @ieee80211_monitor_attach(%struct.ieee80211com* %84)
  ret void
}

declare dso_local i64 @ALIGN(i64) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_adhoc_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_sta_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_wds_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_hostap_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_monitor_attach(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
