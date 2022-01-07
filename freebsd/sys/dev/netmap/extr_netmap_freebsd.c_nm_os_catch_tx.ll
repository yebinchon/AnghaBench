; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_catch_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_catch_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_generic_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netmap_adapter }
%struct.netmap_adapter = type { i32 }
%struct.ifnet = type { i32 }

@netmap_transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_os_catch_tx(%struct.netmap_generic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_generic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.netmap_generic_adapter* %0, %struct.netmap_generic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.netmap_adapter* %9, %struct.netmap_adapter** %5, align 8
  %10 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %11 = call %struct.ifnet* @netmap_generic_getifp(%struct.netmap_generic_adapter* %10)
  store %struct.ifnet* %11, %struct.ifnet** %6, align 8
  %12 = call i32 (...) @nm_os_ifnet_lock()
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @netmap_transmit, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %15
  %31 = call i32 (...) @nm_os_ifnet_unlock()
  ret i32 0
}

declare dso_local %struct.ifnet* @netmap_generic_getifp(%struct.netmap_generic_adapter*) #1

declare dso_local i32 @nm_os_ifnet_lock(...) #1

declare dso_local i32 @nm_os_ifnet_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
