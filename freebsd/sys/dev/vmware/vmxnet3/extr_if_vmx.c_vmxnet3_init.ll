; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vmxnet3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %5)
  store %struct.vmxnet3_softc* %6, %struct.vmxnet3_softc** %3, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @iflib_get_ifp(i32 %10)
  %12 = call i64 @if_getmtu(i32 %11)
  %13 = load i64, i64* @ETHER_HDR_LEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @ETHER_CRC_LEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IF_LLADDR(i32 %23)
  %25 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %29 = call i32 @bcopy(i32 %24, i32 %27, i32 %28)
  %30 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %31 = call i32 @vmxnet3_set_lladdr(%struct.vmxnet3_softc* %30)
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %33 = call i32 @vmxnet3_reinit_shared_data(%struct.vmxnet3_softc* %32)
  %34 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %35 = call i32 @vmxnet3_reinit_queues(%struct.vmxnet3_softc* %34)
  %36 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %37 = call i32 @vmxnet3_enable_device(%struct.vmxnet3_softc* %36)
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %39 = call i32 @vmxnet3_reinit_rxfilters(%struct.vmxnet3_softc* %38)
  %40 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %41 = call i32 @vmxnet3_link_status(%struct.vmxnet3_softc* %40)
  ret void
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local i64 @if_getmtu(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(i32) #1

declare dso_local i32 @vmxnet3_set_lladdr(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_reinit_shared_data(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_reinit_queues(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_enable_device(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_reinit_rxfilters(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_link_status(%struct.vmxnet3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
