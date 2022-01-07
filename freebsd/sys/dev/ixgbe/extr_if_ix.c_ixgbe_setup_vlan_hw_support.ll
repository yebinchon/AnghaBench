; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_vlan_hw_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_vlan_hw_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.adapter = type { i64, i32, i32*, %struct.TYPE_3__*, %struct.ixgbe_hw }
%struct.TYPE_3__ = type { %struct.rx_ring }
%struct.rx_ring = type { i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_VME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IXGBE_VFTA_SIZE = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL_CFIEN = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL_VFE = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL_VME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_setup_vlan_hw_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_vlan_hw_support(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.ifnet* @iflib_get_ifp(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.adapter* @iflib_get_softc(i32 %11)
  store %struct.adapter* %12, %struct.adapter** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 4
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %5, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %145

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.rx_ring* %41, %struct.rx_ring** %6, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %34
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IXGBE_RXDCTL(i32 %52)
  %54 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %49, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @IXGBE_RXDCTL_VME, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %60 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IXGBE_RXDCTL(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %48, %34
  %66 = load i32, i32* @TRUE, align 4
  %67 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %28

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72, %20
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %145

81:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @IXGBE_VFTA_SIZE, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load %struct.adapter*, %struct.adapter** %4, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %86
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @IXGBE_VFTA(i32 %97)
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %98, i32 %105)
  br label %107

107:                                              ; preds = %95, %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %82

111:                                              ; preds = %82
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %113 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %114 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %111
  %122 = load i32, i32* @IXGBE_VLNCTRL_CFIEN, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @IXGBE_VLNCTRL_VFE, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %121, %111
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @IXGBE_VLNCTRL_VME, align 4
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %142 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %80, %19
  ret void
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
