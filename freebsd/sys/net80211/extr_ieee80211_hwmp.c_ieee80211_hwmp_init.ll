; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_ieee80211_hwmp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_ieee80211_hwmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@ieee80211_hwmp_pathtimeout = common dso_local global i8* null, align 8
@ieee80211_hwmp_roottimeout = common dso_local global i8* null, align 8
@ieee80211_hwmp_rootint = common dso_local global i8* null, align 8
@ieee80211_hwmp_rannint = common dso_local global i8* null, align 8
@ieee80211_hwmp_rootconfint_internal = common dso_local global i32 0, align 4
@ieee80211_hwmp_maxpreq_retries = common dso_local global i32 0, align 4
@ieee80211_hwmp_net_diameter_traversaltime = common dso_local global i8* null, align 8
@ieee80211_hwmp_rootconfint = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IEEE80211_ACTION_CAT_MESH = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESH_HWMP = common dso_local global i32 0, align 4
@hwmp_recv_action_meshpath = common dso_local global i32 0, align 4
@mesh_proto_hwmp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ieee80211_hwmp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_hwmp_init() #0 {
  %1 = call i8* @msecs_to_ticks(i32 5000)
  store i8* %1, i8** @ieee80211_hwmp_pathtimeout, align 8
  %2 = call i8* @msecs_to_ticks(i32 5000)
  store i8* %2, i8** @ieee80211_hwmp_roottimeout, align 8
  %3 = call i8* @msecs_to_ticks(i32 2000)
  store i8* %3, i8** @ieee80211_hwmp_rootint, align 8
  %4 = call i8* @msecs_to_ticks(i32 1000)
  store i8* %4, i8** @ieee80211_hwmp_rannint, align 8
  %5 = call i8* @msecs_to_ticks(i32 2000)
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* @ieee80211_hwmp_rootconfint_internal, align 4
  store i32 3, i32* @ieee80211_hwmp_maxpreq_retries, align 4
  %7 = call i8* @msecs_to_ticks(i32 512)
  store i8* %7, i8** @ieee80211_hwmp_net_diameter_traversaltime, align 8
  %8 = load i32, i32* @ieee80211_hwmp_rootconfint_internal, align 4
  %9 = mul nsw i32 %8, 1000
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ieee80211_hwmp_rootconfint, i32 0, i32 0), align 4
  %10 = load i32, i32* @IEEE80211_ACTION_CAT_MESH, align 4
  %11 = load i32, i32* @IEEE80211_ACTION_MESH_HWMP, align 4
  %12 = load i32, i32* @hwmp_recv_action_meshpath, align 4
  %13 = call i32 @ieee80211_recv_action_register(i32 %10, i32 %11, i32 %12)
  %14 = call i8* @msecs_to_ticks(i32 5000)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mesh_proto_hwmp, i32 0, i32 0), align 8
  %15 = call i32 @ieee80211_mesh_register_proto_path(%struct.TYPE_4__* @mesh_proto_hwmp)
  ret void
}

declare dso_local i8* @msecs_to_ticks(i32) #1

declare dso_local i32 @ieee80211_recv_action_register(i32, i32, i32) #1

declare dso_local i32 @ieee80211_mesh_register_proto_path(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
