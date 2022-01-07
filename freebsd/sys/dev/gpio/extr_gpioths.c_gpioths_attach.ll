; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioths_softc = type { i8*, i8*, i8*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@GPIOTHS_POLLTIME = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@gpioths_poll = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@gpioths_temp_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"temperature(C)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"humidity\00", align 1
@gpioths_hum_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"humidity(%)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fails\00", align 1
@gpioths_fails_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"fails since last successful read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpioths_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioths_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpioths_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gpioths_softc* @device_get_softc(i32 %6)
  store %struct.gpioths_softc* %7, %struct.gpioths_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %10)
  store %struct.sysctl_oid* %11, %struct.sysctl_oid** %5, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %16 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %15, i32 0, i32 3
  %17 = call i32 @callout_init(i32* %16, i32 1)
  %18 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %19 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %18, i32 0, i32 3
  %20 = load i32, i32* @GPIOTHS_POLLTIME, align 4
  %21 = load i32, i32* @hz, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* @gpioths_poll, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @callout_reset(i32* %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %27 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %28 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %27)
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLTYPE_INT, align 4
  %31 = load i32, i32* @CTLFLAG_RD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %34 = load i32, i32* @gpioths_temp_sysctl, align 4
  %35 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %26, i32 %28, i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32, %struct.gpioths_softc* %33, i32 0, i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %37 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %39 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %40 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLTYPE_INT, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %46 = load i32, i32* @gpioths_hum_sysctl, align 4
  %47 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %38, i32 %40, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %44, %struct.gpioths_softc* %45, i32 0, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %49 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %51 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %52 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLTYPE_INT, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %58 = load i32, i32* @gpioths_fails_sysctl, align 4
  %59 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %50, i32 %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %56, %struct.gpioths_softc* %57, i32 0, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %61 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  ret i32 0
}

declare dso_local %struct.gpioths_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

declare dso_local i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.gpioths_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
