; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7418_softc = type { i32, i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@ticks = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ad7418\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ad7418_sysctl_temp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"operating temperature\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"volt\00", align 1
@ad7418_sysctl_voltage = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"input voltage\00", align 1
@AD7418_CONF = common dso_local global i32 0, align 4
@AD7418_CONF_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ad7418_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7418_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ad7418_softc* @device_get_softc(i32 %7)
  store %struct.ad7418_softc* %8, %struct.ad7418_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %5, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* @ticks, align 8
  %17 = load i64, i64* @hz, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %21, i32 0, i32 0
  %23 = call i32 @sx_init(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %26 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %25)
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLTYPE_INT, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %32 = load i32, i32* @ad7418_sysctl_temp, align 4
  %33 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %24, i32 %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %30, %struct.ad7418_softc* %31, i32 0, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %35 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %36 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %35)
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = load i32, i32* @CTLTYPE_INT, align 4
  %39 = load i32, i32* @CTLFLAG_RD, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %42 = load i32, i32* @ad7418_sysctl_voltage, align 4
  %43 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %34, i32 %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %40, %struct.ad7418_softc* %41, i32 0, i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @AD7418_CONF, align 4
  %46 = call i32 @ad7418_read_1(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AD7418_CONF_SHUTDOWN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @AD7418_CONF, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @AD7418_CONF_SHUTDOWN, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @ad7418_write_1(i32 %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %54, %49, %1
  ret i32 0
}

declare dso_local %struct.ad7418_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ad7418_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @ad7418_read_1(i32, i32) #1

declare dso_local i32 @ad7418_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
