; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }

@RT2661_H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@RT2661_H2M_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RT2661_TOKEN_NO_INTR = common dso_local global i32 0, align 4
@RT2661_HOST_CMD_CSR = common dso_local global i32 0, align 4
@RT2661_KICK_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, i32, i32)* @rt2661_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_tx_cmd(%struct.rt2661_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2661_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %9 = load i32, i32* @RT2661_H2M_MAILBOX_CSR, align 4
  %10 = call i32 @RAL_READ(%struct.rt2661_softc* %8, i32 %9)
  %11 = load i32, i32* @RT2661_H2M_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  store i32 %15, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %18 = load i32, i32* @RT2661_H2M_MAILBOX_CSR, align 4
  %19 = load i32, i32* @RT2661_H2M_BUSY, align 4
  %20 = load i32, i32* @RT2661_TOKEN_NO_INTR, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @RAL_WRITE(%struct.rt2661_softc* %17, i32 %18, i32 %24)
  %26 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %27 = load i32, i32* @RT2661_HOST_CMD_CSR, align 4
  %28 = load i32, i32* @RT2661_KICK_CMD, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @RAL_WRITE(%struct.rt2661_softc* %26, i32 %27, i32 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
