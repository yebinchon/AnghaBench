; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_uninit_synchronized.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_uninit_synchronized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.adapter*, i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, %struct.ifnet* }
%struct.adapter = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_7__ = type { i64 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@A_XGM_TX_CFG = common dso_local global i64 0, align 8
@F_TXPAUSEEN = common dso_local global i32 0, align 4
@A_XGM_RXFIFO_CFG = common dso_local global i64 0, align 8
@M_RXFIFOPAUSEHWM = common dso_local global i32 0, align 4
@A_XGM_TXFIFO_CFG = common dso_local global i64 0, align 8
@F_TXFIFO_EMPTY = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*)* @cxgb_uninit_synchronized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_uninit_synchronized(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %5 = load %struct.port_info*, %struct.port_info** %2, align 8
  %6 = getelementptr inbounds %struct.port_info, %struct.port_info* %5, i32 0, i32 0
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.port_info*, %struct.port_info** %2, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 7
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call i32 @ADAPTER_LOCK_ASSERT_NOTOWNED(%struct.adapter* %11)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load %struct.port_info*, %struct.port_info** %2, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clrbit(i64* %14, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load %struct.port_info*, %struct.port_info** %2, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @t3_port_intr_disable(%struct.adapter* %19, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 3
  %29 = call i32 @taskqueue_drain(i32 %26, i32* %28)
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 2
  %35 = call i32 @taskqueue_drain(i32 %32, i32* %34)
  %36 = load %struct.port_info*, %struct.port_info** %2, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 6
  %38 = call i32 @callout_drain(i32* %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.port_info*, %struct.port_info** %2, align 8
  %43 = getelementptr inbounds %struct.port_info, %struct.port_info* %42, i32 0, i32 5
  %44 = call i32 @taskqueue_drain(i32 %41, i32* %43)
  %45 = load %struct.port_info*, %struct.port_info** %2, align 8
  %46 = call i32 @PORT_LOCK(%struct.port_info* %45)
  %47 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %48 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = load i64, i64* @A_XGM_TX_CFG, align 8
  %57 = load %struct.port_info*, %struct.port_info** %2, align 8
  %58 = getelementptr inbounds %struct.port_info, %struct.port_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %56, %60
  %62 = load i32, i32* @F_TXPAUSEEN, align 4
  %63 = call i32 @t3_set_reg_field(%struct.adapter* %55, i64 %61, i32 %62, i32 0)
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = load i64, i64* @A_XGM_RXFIFO_CFG, align 8
  %66 = load %struct.port_info*, %struct.port_info** %2, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %65, %69
  %71 = load i32, i32* @M_RXFIFOPAUSEHWM, align 4
  %72 = call i32 @V_RXFIFOPAUSEHWM(i32 %71)
  %73 = call i32 @t3_set_reg_field(%struct.adapter* %64, i64 %70, i32 %72, i32 0)
  %74 = call i32 @DELAY(i32 100000)
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %77 = load %struct.port_info*, %struct.port_info** %2, align 8
  %78 = getelementptr inbounds %struct.port_info, %struct.port_info* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %76, %80
  %82 = load i32, i32* @F_TXFIFO_EMPTY, align 4
  %83 = call i32 @t3_wait_op_done(%struct.adapter* %75, i64 %81, i32 %82, i32 1, i32 20, i32 5)
  %84 = call i32 @DELAY(i32 100000)
  %85 = load %struct.port_info*, %struct.port_info** %2, align 8
  %86 = getelementptr inbounds %struct.port_info, %struct.port_info* %85, i32 0, i32 4
  %87 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %88 = call i32 @t3_mac_disable(%struct.TYPE_7__* %86, i32 %87)
  %89 = load %struct.port_info*, %struct.port_info** %2, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %93, align 8
  %95 = load %struct.port_info*, %struct.port_info** %2, align 8
  %96 = getelementptr inbounds %struct.port_info, %struct.port_info* %95, i32 0, i32 3
  %97 = call i32 %94(%struct.TYPE_8__* %96, i32 1)
  %98 = load %struct.port_info*, %struct.port_info** %2, align 8
  %99 = call i32 @PORT_UNLOCK(%struct.port_info* %98)
  %100 = load %struct.port_info*, %struct.port_info** %2, align 8
  %101 = getelementptr inbounds %struct.port_info, %struct.port_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.adapter*, %struct.adapter** %3, align 8
  %104 = load %struct.port_info*, %struct.port_info** %2, align 8
  %105 = getelementptr inbounds %struct.port_info, %struct.port_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @t3_os_link_changed(%struct.adapter* %103, i32 %106, i32 0, i32 0, i32 0, i32 0, i32 0)
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %1
  %113 = load %struct.port_info*, %struct.port_info** %2, align 8
  %114 = getelementptr inbounds %struct.port_info, %struct.port_info* %113, i32 0, i32 0
  %115 = load %struct.adapter*, %struct.adapter** %114, align 8
  %116 = call i32 @cxgb_down(%struct.adapter* %115)
  br label %117

117:                                              ; preds = %112, %1
  ret i32 0
}

declare dso_local i32 @ADAPTER_LOCK_ASSERT_NOTOWNED(%struct.adapter*) #1

declare dso_local i32 @clrbit(i64*, i32) #1

declare dso_local i32 @t3_port_intr_disable(%struct.adapter*, i32) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @PORT_LOCK(%struct.port_info*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @V_RXFIFOPAUSEHWM(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @t3_mac_disable(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PORT_UNLOCK(%struct.port_info*) #1

declare dso_local i32 @t3_os_link_changed(%struct.adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxgb_down(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
