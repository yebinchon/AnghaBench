; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_power_cycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_power_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i64, i64, i32* }

@RB_POWERCYCLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Power cycling using IPMI\0A\00", align 1
@IPMI_CHASSIS_REQUEST = common dso_local global i32 0, align 4
@IPMI_CHASSIS_CONTROL = common dso_local global i32 0, align 4
@IPMI_CC_POWER_CYCLE = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Power cycling via IPMI failed code %#x %#x\0A\00", align 1
@cycle_wait = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Power cycling via IPMI timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ipmi_power_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_power_cycle(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_softc*, align 8
  %6 = alloca %struct.ipmi_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ipmi_softc*
  store %struct.ipmi_softc* %8, %struct.ipmi_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RB_POWERCYCLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.ipmi_softc*, %struct.ipmi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %20 = load i32, i32* @IPMI_CHASSIS_REQUEST, align 4
  %21 = call i32 @IPMI_ADDR(i32 %20, i32 0)
  %22 = load i32, i32* @IPMI_CHASSIS_CONTROL, align 4
  %23 = call i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request* %19, i32 %21, i32 %22, i32 1, i32 0)
  %24 = load i32, i32* @IPMI_CC_POWER_CYCLE, align 4
  %25 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %26 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.ipmi_softc*, %struct.ipmi_softc** %5, align 8
  %30 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %31 = load i32, i32* @MAX_TIMEOUT, align 4
  %32 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %29, %struct.ipmi_request* %30, i32 %31)
  %33 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %34 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %14
  %38 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %39 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37, %14
  %43 = load %struct.ipmi_softc*, %struct.ipmi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %47 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ipmi_request*, %struct.ipmi_request** %6, align 8
  %50 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51)
  br label %62

53:                                               ; preds = %37
  %54 = load i32, i32* @cycle_wait, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = mul nsw i32 %55, 1000
  %57 = call i32 @DELAY(i32 %56)
  %58 = load %struct.ipmi_softc*, %struct.ipmi_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %53, %42, %13
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request*, i32, i32, i32, i32) #1

declare dso_local i32 @IPMI_ADDR(i32, i32) #1

declare dso_local i32 @ipmi_submit_driver_request(%struct.ipmi_softc*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
