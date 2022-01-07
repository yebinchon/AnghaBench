; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_mcu_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_mcu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@RT2860_H2M_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RT2860_TOKEN_NO_INTR = common dso_local global i32 0, align 4
@RT2860_HOST_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32, i32)* @run_mcu_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_mcu_cmd(%struct.run_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %28, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %16 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %17 = call i32 @run_read(%struct.run_softc* %15, i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RT2860_H2M_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %31
  %37 = load i32, i32* @RT2860_H2M_BUSY, align 4
  %38 = load i32, i32* @RT2860_TOKEN_NO_INTR, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %44 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @run_write(%struct.run_softc* %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %50 = load i32, i32* @RT2860_HOST_CMD, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @run_write(%struct.run_softc* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %36
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %34, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
