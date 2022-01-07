; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_hw_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_hw_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.netmap_hw_adapter = type { i32 (%struct.netmap_adapter.0*, i32)* }
%struct.netmap_adapter.0 = type opaque

@ENXIO = common dso_local global i32 0, align 4
@NAF_NETMAP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_adapter*, i32)* @netmap_hw_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_hw_reg(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_hw_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %8 = bitcast %struct.netmap_adapter* %7 to %struct.netmap_hw_adapter*
  store %struct.netmap_hw_adapter* %8, %struct.netmap_hw_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @nm_os_ifnet_lock()
  %10 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %11 = call i64 @nm_iszombie(%struct.netmap_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %6, align 4
  br label %29

18:                                               ; preds = %13
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %20 = icmp ne %struct.netmap_adapter* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @NAF_NETMAP_ON, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %16
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %31, i32 0, i32 0
  %33 = load i32 (%struct.netmap_adapter.0*, i32)*, i32 (%struct.netmap_adapter.0*, i32)** %32, align 8
  %34 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %35 = bitcast %struct.netmap_adapter* %34 to %struct.netmap_adapter.0*
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %33(%struct.netmap_adapter.0* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = call i32 (...) @nm_os_ifnet_unlock()
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @nm_os_ifnet_lock(...) #1

declare dso_local i64 @nm_iszombie(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_os_ifnet_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
