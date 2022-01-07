; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_phy_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_phy_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EFX_PHY_NSTATS = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sfxge_phy_stat_handler = common dso_local global i32 0, align 4
@EFX_PHY_STAT_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IX\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_phy_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_phy_stat_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %3, align 8
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @efx_nic_cfg_get(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EFX_PHY_NSTATS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %55

33:                                               ; preds = %26
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @efx_phy_stat_name(i32 %36, i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %40 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @CTLTYPE_UINT, align 4
  %44 = load i32, i32* @CTLFLAG_RD, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @sfxge_phy_stat_handler, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EFX_PHY_STAT_OUI, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %54 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %39, %struct.sysctl_oid_list* %40, i32 %41, i8* %42, i32 %45, %struct.sfxge_softc* %46, i32 %47, i32 %48, i8* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %33, %32
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %22

58:                                               ; preds = %22
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.TYPE_2__* @efx_nic_cfg_get(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i8* @efx_phy_stat_name(i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.sfxge_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
