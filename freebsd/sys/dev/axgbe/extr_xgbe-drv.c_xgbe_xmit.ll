; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { %struct.xgbe_channel*, %struct.TYPE_2__, i32, %struct.xgbe_desc_if, %struct.xgbe_hw_if }
%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_channel.0*, %struct.mbuf*)* }
%struct.xgbe_channel.0 = type opaque
%struct.mbuf = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_channel.1*)* }
%struct.xgbe_channel.1 = type opaque
%struct.mbuf.2 = type { i32* }

@XGBE_DOWN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgbe_xmit(%struct.ifnet* %0, %struct.mbuf.2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf.2*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca %struct.xgbe_desc_if*, align 8
  %9 = alloca %struct.xgbe_channel*, align 8
  %10 = alloca %struct.xgbe_ring*, align 8
  %11 = alloca %struct.xgbe_packet_data*, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf.2* %1, %struct.mbuf.2** %5, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %14, align 8
  store %struct.xgbe_prv_data* %15, %struct.xgbe_prv_data** %6, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 4
  store %struct.xgbe_hw_if* %17, %struct.xgbe_hw_if** %7, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 3
  store %struct.xgbe_desc_if* %19, %struct.xgbe_desc_if** %8, align 8
  %20 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %21 = call i32 @M_ASSERTPKTHDR(%struct.mbuf.2* %20)
  %22 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf.2, %struct.mbuf.2* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load i32, i32* @XGBE_DOWN, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %33, %2
  %41 = phi i1 [ true, %2 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @__predict_false(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %47 = call i32 @m_freem(%struct.mbuf.2* %46)
  %48 = load i32, i32* @ENETDOWN, align 4
  store i32 %48, i32* %3, align 4
  br label %95

49:                                               ; preds = %40
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 0
  %52 = load %struct.xgbe_channel*, %struct.xgbe_channel** %51, align 8
  store %struct.xgbe_channel* %52, %struct.xgbe_channel** %9, align 8
  %53 = load %struct.xgbe_channel*, %struct.xgbe_channel** %9, align 8
  %54 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %53, i32 0, i32 0
  %55 = load %struct.xgbe_ring*, %struct.xgbe_ring** %54, align 8
  store %struct.xgbe_ring* %55, %struct.xgbe_ring** %10, align 8
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %10, align 8
  %57 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %56, i32 0, i32 0
  store %struct.xgbe_packet_data* %57, %struct.xgbe_packet_data** %11, align 8
  %58 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %11, align 8
  %59 = call i32 @memset(%struct.xgbe_packet_data* %58, i32 0, i32 4)
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %61 = load %struct.xgbe_ring*, %struct.xgbe_ring** %10, align 8
  %62 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %63 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %11, align 8
  %64 = call i32 @xgbe_packet_info(%struct.xgbe_prv_data* %60, %struct.xgbe_ring* %61, %struct.mbuf.2* %62, %struct.xgbe_packet_data* %63)
  %65 = load %struct.xgbe_channel*, %struct.xgbe_channel** %9, align 8
  %66 = load %struct.xgbe_ring*, %struct.xgbe_ring** %10, align 8
  %67 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %11, align 8
  %68 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @xgbe_maybe_stop_tx_queue(%struct.xgbe_channel* %65, %struct.xgbe_ring* %66, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %49
  br label %92

74:                                               ; preds = %49
  %75 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %8, align 8
  %76 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %75, i32 0, i32 0
  %77 = load i32 (%struct.xgbe_channel.0*, %struct.mbuf*)*, i32 (%struct.xgbe_channel.0*, %struct.mbuf*)** %76, align 8
  %78 = load %struct.xgbe_channel*, %struct.xgbe_channel** %9, align 8
  %79 = bitcast %struct.xgbe_channel* %78 to %struct.xgbe_channel.0*
  %80 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %81 = bitcast %struct.mbuf.2* %80 to %struct.mbuf*
  %82 = call i32 %77(%struct.xgbe_channel.0* %79, %struct.mbuf* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  br label %92

85:                                               ; preds = %74
  %86 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %87 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %86, i32 0, i32 0
  %88 = load i32 (%struct.xgbe_channel.1*)*, i32 (%struct.xgbe_channel.1*)** %87, align 8
  %89 = load %struct.xgbe_channel*, %struct.xgbe_channel** %9, align 8
  %90 = bitcast %struct.xgbe_channel* %89 to %struct.xgbe_channel.1*
  %91 = call i32 %88(%struct.xgbe_channel.1* %90)
  store i32 0, i32* %3, align 4
  br label %95

92:                                               ; preds = %84, %73
  %93 = load %struct.mbuf.2*, %struct.mbuf.2** %5, align 8
  %94 = call i32 @m_free(%struct.mbuf.2* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %85, %45
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf.2*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf.2*) #1

declare dso_local i32 @memset(%struct.xgbe_packet_data*, i32, i32) #1

declare dso_local i32 @xgbe_packet_info(%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.mbuf.2*, %struct.xgbe_packet_data*) #1

declare dso_local i32 @xgbe_maybe_stop_tx_queue(%struct.xgbe_channel*, %struct.xgbe_ring*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf.2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
