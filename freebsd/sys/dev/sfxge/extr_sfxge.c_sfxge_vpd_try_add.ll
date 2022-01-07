; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_try_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_try_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sfxge_vpd_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, %struct.sysctl_oid_list*, i32, i8*)* @sfxge_vpd_try_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_vpd_try_add(%struct.sfxge_softc* %0, %struct.sysctl_oid_list* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysctl_ctx_list*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %5, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @EFX_VPD_KEYWORD(i8 signext %19, i8 signext %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %26 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %29 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %32 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @efx_vpd_get(i32 %27, i32 %30, i32 %33, %struct.TYPE_3__* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %58

37:                                               ; preds = %4
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @CTLTYPE_STRING, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 16
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @EFX_VPD_KEYWORD(i8 signext %50, i8 signext %53)
  %55 = or i32 %47, %54
  %56 = load i32, i32* @sfxge_vpd_handler, align 4
  %57 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* %41, i32 %44, %struct.sfxge_softc* %45, i32 %55, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @EFX_VPD_KEYWORD(i8 signext, i8 signext) #1

declare dso_local i64 @efx_vpd_get(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.sfxge_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
