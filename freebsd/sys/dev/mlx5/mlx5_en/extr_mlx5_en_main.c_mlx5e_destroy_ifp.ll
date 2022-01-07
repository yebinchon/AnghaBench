; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_destroy_ifp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_destroy_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.mlx5e_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i64, i32, i32*, i32*, i32*, i32, i32, %struct.ifnet*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"W\00", align 1
@hz = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@M_MLX5EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i8*)* @mlx5e_destroy_ifp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_destroy_ifp(%struct.mlx5_core_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mlx5e_priv*
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 16
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @hz, align 4
  %15 = call i32 @pause(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlx5e_priv_wait_for_completion(%struct.mlx5e_priv* %16, i32 %21)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 15
  %25 = call i32 @callout_drain(i32* %24)
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 14
  %28 = call i32 @callout_drain(i32* %27)
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 13
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @vlan_config, align 4
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 13
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @EVENTHANDLER_DEREGISTER(i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 12
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @vlan_unconfig, align 4
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 12
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @EVENTHANDLER_DEREGISTER(i32 %45, i32* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %52 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %54 = call i32 @mlx5e_close_locked(%struct.ifnet* %53)
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %56 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %55)
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 11
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %62, i32 0, i32 11
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @pfil_head_unregister(i32* %64)
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 11
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 10
  %71 = call i32 @ifmedia_removeall(i32* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = call i32 @ether_ifdetach(%struct.ifnet* %72)
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i32 @sysctl_ctx_free(i32* %77)
  %79 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = call i32 @sysctl_ctx_free(i32* %82)
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %68
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = call i32 @sysctl_ctx_free(i32* %92)
  br label %94

94:                                               ; preds = %88, %68
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %95, i32 0, i32 7
  %97 = call i32 @sysctl_ctx_free(i32* %96)
  %98 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %101, i32 0, i32 6
  %103 = call i32 @mlx5_core_destroy_mkey(i32 %100, i32* %102)
  %104 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mlx5_dealloc_transport_domain(i32 %106, i32 %109)
  %111 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %112 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mlx5_core_dealloc_pd(i32 %113, i32 %116)
  %118 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %122 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %121, i32 0, i32 2
  %123 = call i32 @mlx5_unmap_free_uar(i32 %120, i32* %122)
  %124 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %125 = call i32 @mlx5e_disable_async_events(%struct.mlx5e_priv* %124)
  %126 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %127 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @flush_workqueue(i32 %128)
  %130 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %131 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %132 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @mlx5e_priv_static_destroy(%struct.mlx5e_priv* %130, i32 %135)
  %137 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %138 = call i32 @if_free(%struct.ifnet* %137)
  %139 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %140 = load i32, i32* @M_MLX5EN, align 4
  %141 = call i32 @free(%struct.mlx5e_priv* %139, i32 %140)
  ret void
}

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @mlx5e_priv_wait_for_completion(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_locked(%struct.ifnet*) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @pfil_head_unregister(i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @mlx5_core_destroy_mkey(i32, i32*) #1

declare dso_local i32 @mlx5_dealloc_transport_domain(i32, i32) #1

declare dso_local i32 @mlx5_core_dealloc_pd(i32, i32) #1

declare dso_local i32 @mlx5_unmap_free_uar(i32, i32*) #1

declare dso_local i32 @mlx5e_disable_async_events(%struct.mlx5e_priv*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mlx5e_priv_static_destroy(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free(%struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
