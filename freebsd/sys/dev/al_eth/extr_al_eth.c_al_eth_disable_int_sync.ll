; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_disable_int_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_disable_int_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i64, i64 }

@ALPINE_FPGA_NIC = common dso_local global i64 0, align 8
@ALPINE_NIC = common dso_local global i64 0, align 8
@AL_REG_OFFSET_FORWARD_INTR = common dso_local global i32 0, align 4
@AL_DIS_FORWARD_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_disable_int_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_disable_int_sync(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %3 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ALPINE_FPGA_NIC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ALPINE_NIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8, %1
  %15 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* @AL_REG_OFFSET_FORWARD_INTR, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @AL_DIS_FORWARD_INTR, align 4
  %23 = call i32 @al_eth_forward_int_config(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %8
  %25 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %26 = call i32 @al_eth_interrupts_mask(%struct.al_eth_adapter* %25)
  ret void
}

declare dso_local i32 @al_eth_forward_int_config(i32*, i32) #1

declare dso_local i32 @al_eth_interrupts_mask(%struct.al_eth_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
