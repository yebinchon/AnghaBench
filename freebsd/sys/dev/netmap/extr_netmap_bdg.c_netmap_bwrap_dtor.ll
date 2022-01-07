; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32, i32*, i32*, i32, i32* }
%struct.netmap_bwrap_adapter = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.netmap_adapter* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.nm_bridge* }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.nm_bridge = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.nm_bridge* }

@.str = private unnamed_addr constant [6 x i8] c"na %p\00", align 1
@NAF_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_adapter*)* @netmap_bwrap_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_bwrap_dtor(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  %3 = alloca %struct.netmap_bwrap_adapter*, align 8
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca %struct.nm_bridge*, align 8
  %6 = alloca %struct.nm_bridge*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %7 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %8 = bitcast %struct.netmap_adapter* %7 to %struct.netmap_bwrap_adapter*
  store %struct.netmap_bwrap_adapter* %8, %struct.netmap_bwrap_adapter** %3, align 8
  %9 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %9, i32 0, i32 3
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %10, align 8
  store %struct.netmap_adapter* %11, %struct.netmap_adapter** %4, align 8
  %12 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.nm_bridge*, %struct.nm_bridge** %14, align 8
  store %struct.nm_bridge* %15, %struct.nm_bridge** %5, align 8
  %16 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.nm_bridge*, %struct.nm_bridge** %18, align 8
  store %struct.nm_bridge* %19, %struct.nm_bridge** %6, align 8
  %20 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @netmap_mem_put(i64 %31)
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.nm_bridge*, %struct.nm_bridge** %5, align 8
  %35 = icmp ne %struct.nm_bridge* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.nm_bridge*, %struct.nm_bridge** %5, align 8
  %38 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nm_bridge*, %struct.nm_bridge** %6, align 8
  %43 = icmp ne %struct.nm_bridge* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ -1, %49 ]
  %52 = call i32 @netmap_bdg_detach_common(%struct.nm_bridge* %37, i32 %41, i32 %51)
  br label %53

53:                                               ; preds = %50, %33
  %54 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %55 = call i32 @nm_prdis(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.netmap_adapter* %54)
  %56 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @NAF_BUSY, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %78 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %77)
  ret void
}

declare dso_local i32 @netmap_mem_put(i64) #1

declare dso_local i32 @netmap_bdg_detach_common(%struct.nm_bridge*, i32, i32) #1

declare dso_local i32 @nm_prdis(i8*, %struct.netmap_adapter*) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
