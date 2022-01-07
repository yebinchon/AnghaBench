; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_sysctl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_sysctl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vol_member_wce\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@mpt_raid_sysctl_vol_member_wce = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"volume member WCE(On,Off,On-During-Rebuild,NC)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vol_queue_depth\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@mpt_raid_sysctl_vol_queue_depth = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"default volume queue depth\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vol_resync_rate\00", align 1
@mpt_raid_sysctl_vol_resync_rate = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"volume resync priority (0 == NC, 1 - 255)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nonoptimal_volumes\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"number of nonoptimal volumes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_raid_sysctl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_raid_sysctl_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_STRING, align 4
  %18 = load i32, i32* @CTLFLAG_RW, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %21 = load i32, i32* @mpt_raid_sysctl_vol_member_wce, align 4
  %22 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %13, i32 %15, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.mpt_softc* %20, i32 0, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLTYPE_INT, align 4
  %28 = load i32, i32* @CTLFLAG_RW, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %31 = load i32, i32* @mpt_raid_sysctl_vol_queue_depth, align 4
  %32 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %23, i32 %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %29, %struct.mpt_softc* %30, i32 0, i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %35 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLTYPE_INT, align 4
  %38 = load i32, i32* @CTLFLAG_RW, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %41 = load i32, i32* @mpt_raid_sysctl_vol_resync_rate, align 4
  %42 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %33, i32 %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %39, %struct.mpt_softc* %40, i32 0, i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %45 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %48, i32 0, i32 0
  %50 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %43, i32 %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %47, i32* %49, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.mpt_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
