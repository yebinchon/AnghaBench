; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1030_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@adm1030_start = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@adm1030_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Fan PWM Rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adm1030_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1030_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adm1030_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adm1030_softc* @device_get_softc(i32 %7)
  store %struct.adm1030_softc* %8, %struct.adm1030_softc** %4, align 8
  %9 = load i32, i32* @adm1030_start, align 4
  %10 = load %struct.adm1030_softc*, %struct.adm1030_softc** %4, align 8
  %11 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.adm1030_softc*, %struct.adm1030_softc** %4, align 8
  %15 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.adm1030_softc*, %struct.adm1030_softc** %4, align 8
  %18 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %17, i32 0, i32 0
  %19 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %24)
  store %struct.sysctl_ctx_list* %25, %struct.sysctl_ctx_list** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %26)
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %6, align 8
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %29 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %30 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLTYPE_INT, align 4
  %33 = load i32, i32* @CTLFLAG_RW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @adm1030_sysctl, align 4
  %39 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %28, i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %23, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.adm1030_softc* @device_get_softc(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
