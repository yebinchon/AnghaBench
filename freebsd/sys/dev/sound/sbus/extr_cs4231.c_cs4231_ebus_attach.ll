; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot allocate softc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBDCSR_BURST_1 = common dso_local global i32 0, align 4
@CS4231_RES_MEM_MAX = common dso_local global i32 0, align 4
@CS4231_RES_IRQ_MAX = common dso_local global i32 0, align 4
@CS4231_EBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4231_ebus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_ebus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs4231_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.cs4231_softc* @malloc(i32 20, i32 %5, i32 %8)
  store %struct.cs4231_softc* %9, %struct.cs4231_softc** %4, align 8
  %10 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %11 = icmp eq %struct.cs4231_softc* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %19 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @EBDCSR_BURST_1, align 4
  %21 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %22 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @CS4231_RES_MEM_MAX, align 4
  %24 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CS4231_RES_IRQ_MAX, align 4
  %27 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CS4231_EBUS, align 4
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %33 = call i32 @cs4231_attach_common(%struct.cs4231_softc* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %16, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.cs4231_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cs4231_attach_common(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
