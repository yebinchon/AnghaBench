; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32 }

@WI_CMD_INI = common dso_local global i32 0, align 4
@WI_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@WI_INT_EN = common dso_local global i32 0, align 4
@WI_EVENT_ACK = common dso_local global i32 0, align 4
@WI_RID_TICK_TIME = common dso_local global i32 0, align 4
@WI_INIT_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*)* @wi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_reset(%struct.wi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wi_softc* %0, %struct.wi_softc** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %11 = load i32, i32* @WI_CMD_INI, align 4
  %12 = call i32 @wi_cmd(%struct.wi_softc* %10, i32 %11, i32 0, i32 0, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %23

16:                                               ; preds = %9
  %17 = load i32, i32* @WI_DELAY, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = call i32 @DELAY(i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

23:                                               ; preds = %15, %6
  %24 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %36 = load i32, i32* @WI_INT_EN, align 4
  %37 = call i32 @CSR_WRITE_2(%struct.wi_softc* %35, i32 %36, i32 0)
  %38 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %39 = load i32, i32* @WI_EVENT_ACK, align 4
  %40 = call i32 @CSR_WRITE_2(%struct.wi_softc* %38, i32 %39, i32 65535)
  %41 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %42 = load i32, i32* @WI_RID_TICK_TIME, align 4
  %43 = call i32 @wi_write_val(%struct.wi_softc* %41, i32 %42, i32 8)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @wi_cmd(%struct.wi_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
