; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_wdog.c_ar71xx_wdog_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_wdog.c_ar71xx_wdog_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_wdog_softc = type { i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"enable watchdog debugging\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"armed\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"whether the watchdog is armed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"reboot_from_watchdog\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"whether the system rebooted from the watchdog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ar71xx_wdog_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_wdog_sysctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar71xx_wdog_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ar71xx_wdog_softc* @device_get_softc(i32 %6)
  store %struct.ar71xx_wdog_softc* %7, %struct.ar71xx_wdog_softc** %3, align 8
  %8 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %4, align 8
  %12 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %14)
  store %struct.sysctl_oid* %15, %struct.sysctl_oid** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %18 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RW, align 4
  %21 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %21, i32 0, i32 2
  %23 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %16, i32 %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %22, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %26 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %25)
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %29, i32 0, i32 1
  %31 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %24, i32 %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32* %30, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %37, i32 0, i32 0
  %39 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %32, i32 %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ar71xx_wdog_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
