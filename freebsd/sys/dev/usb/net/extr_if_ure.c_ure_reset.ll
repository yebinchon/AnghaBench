; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@URE_PLA_CR = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_CR_RST = common dso_local global i32 0, align 4
@URE_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset never completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ure_softc*)* @ure_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_reset(%struct.ure_softc* %0) #0 {
  %2 = alloca %struct.ure_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ure_softc* %0, %struct.ure_softc** %2, align 8
  %4 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %5 = load i32, i32* @URE_PLA_CR, align 4
  %6 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %7 = load i32, i32* @URE_CR_RST, align 4
  %8 = call i32 @ure_write_1(%struct.ure_softc* %4, i32 %5, i32 %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @URE_TIMEOUT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %15 = load i32, i32* @URE_PLA_CR, align 4
  %16 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %17 = call i32 @ure_read_1(%struct.ure_softc* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @URE_CR_RST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %23, i32 0, i32 0
  %25 = load i32, i32* @hz, align 4
  %26 = sdiv i32 %25, 100
  %27 = call i32 @uether_pause(%struct.TYPE_2__* %24, i32 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %21, %9
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @URE_TIMEOUT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @ure_write_1(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_1(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
