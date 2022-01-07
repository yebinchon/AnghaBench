; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_ipmi_kcs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_ipmi_kcs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32, i32, i32, i32 }

@kcs_startup = common dso_local global i32 0, align 4
@ipmi_polled_enqueue_request = common dso_local global i32 0, align 4
@kcs_driver_request = common dso_local global i32 0, align 4
@KCS_CTL_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"couldn't find it\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@KCS_STATUS_OBF = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_kcs_attach(%struct.ipmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  %5 = load i32, i32* @kcs_startup, align 4
  %6 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @ipmi_polled_enqueue_request, align 4
  %9 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @kcs_driver_request, align 4
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %17 = load i32, i32* @KCS_CTL_STS, align 4
  %18 = call i32 @INB(%struct.ipmi_softc* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @KCS_STATUS_OBF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @KCS_STATUS_STATE(i32 %33)
  %35 = load i64, i64* @KCS_STATUS_STATE_IDLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %39 = call i32 @kcs_error(%struct.ipmi_softc* %38)
  br label %40

40:                                               ; preds = %37, %32
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @KCS_STATUS_STATE(i32) #1

declare dso_local i32 @kcs_error(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
