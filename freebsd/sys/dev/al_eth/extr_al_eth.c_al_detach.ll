; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @al_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_eth_adapter*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.al_eth_adapter* @device_get_softc(i32 %4)
  store %struct.al_eth_adapter* %5, %struct.al_eth_adapter** %3, align 8
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ether_ifdetach(i32 %8)
  %10 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %10, i32 0, i32 5
  %12 = call i32 @mtx_destroy(i32* %11)
  %13 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %13, i32 0, i32 4
  %15 = call i32 @mtx_destroy(i32* %14)
  %16 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %17 = call i32 @al_eth_down(%struct.al_eth_adapter* %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SYS_RES_IRQ, align 4
  %20 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_release_resource(i32 %18, i32 %19, i32 0, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 0, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 0, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 0, i32 %40)
  ret i32 0
}

declare dso_local %struct.al_eth_adapter* @device_get_softc(i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @al_eth_down(%struct.al_eth_adapter*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
