; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_reinit_rxfilters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_reinit_rxfilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.TYPE_2__*, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }

@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@VMXNET3_CMD_VLAN_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_reinit_rxfilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_reinit_rxfilters(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %4 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %4, i32 0, i32 2
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @if_getflags(%struct.ifnet* %8)
  %10 = call i32 @vmxnet3_set_rxfilter(%struct.vmxnet3_softc* %7, i32 %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bcopy(i32 %20, i32 %25, i32 4)
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bzero(i32 %32, i32 4)
  br label %34

34:                                               ; preds = %27, %17
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %36 = load i32, i32* @VMXNET3_CMD_VLAN_FILTER, align 4
  %37 = call i32 @vmxnet3_write_cmd(%struct.vmxnet3_softc* %35, i32 %36)
  ret void
}

declare dso_local i32 @vmxnet3_set_rxfilter(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @vmxnet3_write_cmd(%struct.vmxnet3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
