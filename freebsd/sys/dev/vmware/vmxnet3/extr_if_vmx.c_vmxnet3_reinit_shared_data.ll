; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_reinit_shared_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_reinit_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.vmxnet3_driver_shared*, %struct.ifnet* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vmxnet3_driver_shared = type { i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32 }

@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@UPT1_F_CSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@UPT1_F_VLAN = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@UPT1_F_LRO = common dso_local global i32 0, align 4
@VMXNET3_FLAG_RSS = common dso_local global i32 0, align 4
@UPT1_F_RSS = common dso_local global i32 0, align 4
@VMXNET3_BAR1_DSL = common dso_local global i32 0, align 4
@VMXNET3_BAR1_DSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_reinit_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_reinit_shared_data(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vmxnet3_driver_shared*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 4
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %9, i32 0, i32 3
  %11 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %10, align 8
  store %struct.vmxnet3_driver_shared* %11, %struct.vmxnet3_driver_shared** %4, align 8
  %12 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFCAP_RXCSUM, align 4
  %36 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @UPT1_F_CSUM, align 4
  %42 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @UPT1_F_VLAN, align 4
  %55 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFCAP_LRO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @UPT1_F_LRO, align 4
  %68 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VMXNET3_FLAG_RSS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* @UPT1_F_RSS, align 4
  %81 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %4, align 8
  %82 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %86 = call i32 @vmxnet3_reinit_rss_shared_data(%struct.vmxnet3_softc* %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %89 = load i32, i32* @VMXNET3_BAR1_DSL, align 4
  %90 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc* %88, i32 %89, i32 %93)
  %95 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %96 = load i32, i32* @VMXNET3_BAR1_DSH, align 4
  %97 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 32
  %102 = call i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc* %95, i32 %96, i32 %101)
  ret void
}

declare dso_local i32 @vmxnet3_reinit_rss_shared_data(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
