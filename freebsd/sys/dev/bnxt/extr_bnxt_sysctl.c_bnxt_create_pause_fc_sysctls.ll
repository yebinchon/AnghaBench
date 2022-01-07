; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_pause_fc_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_pause_fc_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@bnxt_flow_ctrl_tx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Enable or Disable Tx Flow Ctrl: 0 / 1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@bnxt_flow_ctrl_rx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"autoneg\00", align 1
@bnxt_flow_ctrl_autoneg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Enable or Disable Autoneg Flow Ctrl: 0 / 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_create_pause_fc_sysctls(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %5, i32 0, i32 1
  %7 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  store %struct.sysctl_oid* %7, %struct.sysctl_oid** %4, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %9 = icmp ne %struct.sysctl_oid* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 0
  %15 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %16 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %15)
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = load i32, i32* @CTLTYPE_INT, align 4
  %19 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %22 = load i32, i32* @bnxt_flow_ctrl_tx, align 4
  %23 = call i32 @SYSCTL_ADD_PROC(i32* %14, i32 %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.bnxt_softc* %21, i32 0, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %24, i32 0, i32 0
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLTYPE_INT, align 4
  %30 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %33 = load i32, i32* @bnxt_flow_ctrl_rx, align 4
  %34 = call i32 @SYSCTL_ADD_PROC(i32* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %31, %struct.bnxt_softc* %32, i32 0, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %35, i32 0, i32 0
  %37 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %38 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %37)
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLTYPE_INT, align 4
  %41 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %44 = load i32, i32* @bnxt_flow_ctrl_autoneg, align 4
  %45 = call i32 @SYSCTL_ADD_PROC(i32* %36, i32 %38, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %42, %struct.bnxt_softc* %43, i32 0, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %12, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.bnxt_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
