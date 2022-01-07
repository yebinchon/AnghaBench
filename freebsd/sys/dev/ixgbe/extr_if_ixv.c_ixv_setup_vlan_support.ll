; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_setup_vlan_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_setup_vlan_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.adapter = type { i64, i32, %struct.TYPE_6__*, %struct.ixgbe_hw }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_VME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IXGBE_VFTA_SIZE = common dso_local global i32 0, align 4
@ixv_shadow_vfta = common dso_local global i64* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_setup_vlan_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_setup_vlan_support(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.ifnet* @iflib_get_ifp(i32 %13)
  store %struct.ifnet* %14, %struct.ifnet** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.adapter* @iflib_get_softc(i32 %15)
  store %struct.adapter* %16, %struct.adapter** %4, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 3
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %5, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %134

24:                                               ; preds = %1
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @IXGBE_VFRXDCTL(i32 %40)
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @IXGBE_RXDCTL_VME, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @IXGBE_VFRXDCTL(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %48, i32 %49)
  %51 = load i32, i32* @TRUE, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %32

63:                                               ; preds = %32
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %134

72:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %131, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IXGBE_VFTA_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %134

77:                                               ; preds = %73
  %78 = load i64*, i64** @ixv_shadow_vfta, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %131

85:                                               ; preds = %77
  %86 = load i64*, i64** @ixv_shadow_vfta, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %127, %85
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %130

95:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %12, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %127

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %103, 32
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %125, %102
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)** %111, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %114 = bitcast %struct.ixgbe_hw* %113 to %struct.ixgbe_hw.0*
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32, i32* @FALSE, align 4
  %118 = call i64 %112(%struct.ixgbe_hw.0* %114, i32 %115, i32 0, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = icmp sgt i32 %122, 5
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %126

125:                                              ; preds = %120
  br label %107

126:                                              ; preds = %124, %107
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %92

130:                                              ; preds = %92
  br label %131

131:                                              ; preds = %130, %84
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %73

134:                                              ; preds = %23, %71, %73
  ret void
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
