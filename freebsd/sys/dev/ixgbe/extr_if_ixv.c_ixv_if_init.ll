; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.4*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ixv_if_init: begin\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Mailbox API negotiation failed in if_init!\0A\00", align 1
@IXGBE_VTEIAM = common dso_local global i32 0, align 4
@IXGBE_EICS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_LINK_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_if_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_if_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.ifnet* @iflib_get_ifp(i32 %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 4
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32 (%struct.ixgbe_hw.4*)*, i32 (%struct.ixgbe_hw.4*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.4*
  %27 = call i32 %24(%struct.ixgbe_hw.4* %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32 (%struct.ixgbe_hw.3*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.3*
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IXGBE_RAH_AV, align 4
  %40 = call i32 %32(%struct.ixgbe_hw.3* %34, i32 0, i32 %38, i32 0, i32 %39)
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = call i32 @IF_LLADDR(%struct.ifnet* %41)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IXGBE_ETH_LENGTH_OF_ADDRESS, align 4
  %48 = call i32 @bcopy(i32 %42, i32 %46, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32 (%struct.ixgbe_hw.3*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.3*
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(%struct.ixgbe_hw.3* %55, i32 0, i32 %59, i32 0, i32 1)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.2*
  %68 = call i32 %65(%struct.ixgbe_hw.2* %67)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %72, align 8
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = bitcast %struct.ixgbe_hw* %74 to %struct.ixgbe_hw.1*
  %76 = call i32 %73(%struct.ixgbe_hw.1* %75)
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = call i32 @ixv_negotiate_api(%struct.adapter* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %1
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %127

84:                                               ; preds = %1
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @ixv_initialize_transmit_units(i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @ixv_if_multi_set(i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @iflib_get_rx_mbuf_sz(i32 %89)
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @ixv_initialize_receive_units(i32 %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @ixv_setup_vlan_support(i32 %95)
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = call i32 @ixv_configure_ivars(%struct.adapter* %97)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %100 = load i32, i32* @IXGBE_VTEIAM, align 4
  %101 = load i32, i32* @IXGBE_EICS_RTX_QUEUE, align 4
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = getelementptr inbounds %struct.adapter, %struct.adapter* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @IXGBE_VTEITR(i32 %106)
  %108 = load i32, i32* @IXGBE_LINK_ITR, align 4
  %109 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %103, i32 %107, i32 %108)
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = call i32 @ixv_init_stats(%struct.adapter* %110)
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.0*
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = load %struct.adapter*, %struct.adapter** %3, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 0
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 %116(%struct.ixgbe_hw.0* %118, i32* %120, i32* %122, i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @ixv_if_enable_intr(i32 %125)
  br label %127

127:                                              ; preds = %84, %81
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ixv_negotiate_api(%struct.adapter*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ixv_initialize_transmit_units(i32) #1

declare dso_local i32 @ixv_if_multi_set(i32) #1

declare dso_local i32 @iflib_get_rx_mbuf_sz(i32) #1

declare dso_local i32 @ixv_initialize_receive_units(i32) #1

declare dso_local i32 @ixv_setup_vlan_support(i32) #1

declare dso_local i32 @ixv_configure_ivars(%struct.adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VTEITR(i32) #1

declare dso_local i32 @ixv_init_stats(%struct.adapter*) #1

declare dso_local i32 @ixv_if_enable_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
