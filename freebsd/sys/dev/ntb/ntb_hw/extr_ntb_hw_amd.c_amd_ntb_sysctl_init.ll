; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@amd_ntb_hw_info_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"AMD NTB HW Information\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_ntb_softc*)* @amd_ntb_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_ntb_sysctl_init(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca %struct.amd_ntb_softc*, align 8
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %2, align 8
  %5 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %4, align 8
  %9 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %3, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_STRING, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %23 = load i32, i32* @amd_ntb_hw_info_handler, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.amd_ntb_softc* %22, i32 0, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.amd_ntb_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
