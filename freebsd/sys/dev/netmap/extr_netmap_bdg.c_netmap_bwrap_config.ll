; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nm_config_info = type { i32, i32, i32, i32, i32 }
%struct.netmap_bwrap_adapter = type { %struct.netmap_adapter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_adapter*, %struct.nm_config_info*)* @netmap_bwrap_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_bwrap_config(%struct.netmap_adapter* %0, %struct.nm_config_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca %struct.nm_config_info*, align 8
  %6 = alloca %struct.netmap_bwrap_adapter*, align 8
  %7 = alloca %struct.netmap_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %4, align 8
  store %struct.nm_config_info* %1, %struct.nm_config_info** %5, align 8
  %9 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %10 = bitcast %struct.netmap_adapter* %9 to %struct.netmap_bwrap_adapter*
  store %struct.netmap_bwrap_adapter* %10, %struct.netmap_bwrap_adapter** %6, align 8
  %11 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %11, i32 0, i32 0
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %12, align 8
  store %struct.netmap_adapter* %13, %struct.netmap_adapter** %7, align 8
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %17, i32 0, i32 5
  %19 = call i32 @netmap_mem_get_lut(i32 %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %26 = call i32 @netmap_update_config(%struct.netmap_adapter* %25)
  %27 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nm_config_info*, %struct.nm_config_info** %5, align 8
  %31 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nm_config_info*, %struct.nm_config_info** %5, align 8
  %36 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nm_config_info*, %struct.nm_config_info** %5, align 8
  %41 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nm_config_info*, %struct.nm_config_info** %5, align 8
  %46 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.netmap_adapter*, %struct.netmap_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nm_config_info*, %struct.nm_config_info** %5, align 8
  %51 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %24, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @netmap_mem_get_lut(i32, i32*) #1

declare dso_local i32 @netmap_update_config(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
