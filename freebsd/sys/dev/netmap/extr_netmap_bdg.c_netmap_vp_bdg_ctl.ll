; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_bdg_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_vp_bdg_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i64 }
%struct.netmap_adapter = type { i32 }
%struct.netmap_vp_adapter = type { %struct.nm_bridge*, i32 }
%struct.nm_bridge = type { i32 }

@NETMAP_REQ_VALE_ATTACH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_vp_bdg_ctl(%struct.nmreq_header* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmreq_header*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.netmap_vp_adapter*, align 8
  %7 = alloca %struct.nm_bridge*, align 8
  store %struct.nmreq_header* %0, %struct.nmreq_header** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  %8 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %9 = bitcast %struct.netmap_adapter* %8 to %struct.netmap_vp_adapter*
  store %struct.netmap_vp_adapter* %9, %struct.netmap_vp_adapter** %6, align 8
  %10 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %10, i32 0, i32 0
  %12 = load %struct.nm_bridge*, %struct.nm_bridge** %11, align 8
  store %struct.nm_bridge* %12, %struct.nm_bridge** %7, align 8
  %13 = load %struct.nmreq_header*, %struct.nmreq_header** %4, align 8
  %14 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NETMAP_REQ_VALE_ATTACH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.nm_bridge*, %struct.nm_bridge** %7, align 8
  %21 = icmp ne %struct.nm_bridge* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %24 = call i32 @netmap_set_all_rings(%struct.netmap_adapter* %23, i32 0)
  %25 = load %struct.nm_bridge*, %struct.nm_bridge** %7, align 8
  %26 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netmap_bdg_detach_common(%struct.nm_bridge* %25, i32 %28, i32 -1)
  %30 = load %struct.netmap_vp_adapter*, %struct.netmap_vp_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.netmap_vp_adapter, %struct.netmap_vp_adapter* %30, i32 0, i32 0
  store %struct.nm_bridge* null, %struct.nm_bridge** %31, align 8
  %32 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %33 = call i32 @netmap_set_all_rings(%struct.netmap_adapter* %32, i32 1)
  br label %34

34:                                               ; preds = %22, %19
  %35 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %36 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @netmap_set_all_rings(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @netmap_bdg_detach_common(%struct.nm_bridge*, i32, i32) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
