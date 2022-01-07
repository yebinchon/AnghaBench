; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, %struct.upgt_stat }
%struct.upgt_stat = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"UPGT statistics\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tx_active\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Active numbers in TX queue\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tx_inactive\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Inactive numbers in TX queue\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tx_pending\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Pending numbers in TX queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*)* @upgt_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_sysctl_node(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.upgt_stat*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  %7 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %8 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %7, i32 0, i32 1
  store %struct.upgt_stat* %8, %struct.upgt_stat** %6, align 8
  %9 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %3, align 8
  %13 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %14 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %4, align 8
  %18 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %19 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLFLAG_RD, align 4
  %22 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %18, %struct.sysctl_oid_list* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %22, %struct.sysctl_oid** %5, align 8
  %23 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %24 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %23)
  store %struct.sysctl_oid_list* %24, %struct.sysctl_oid_list** %4, align 8
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %27 = load %struct.upgt_stat*, %struct.upgt_stat** %6, align 8
  %28 = getelementptr inbounds %struct.upgt_stat, %struct.upgt_stat* %27, i32 0, i32 2
  %29 = call i32 @UPGT_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load %struct.upgt_stat*, %struct.upgt_stat** %6, align 8
  %33 = getelementptr inbounds %struct.upgt_stat, %struct.upgt_stat* %32, i32 0, i32 1
  %34 = call i32 @UPGT_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %36 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %37 = load %struct.upgt_stat*, %struct.upgt_stat** %6, align 8
  %38 = getelementptr inbounds %struct.upgt_stat, %struct.upgt_stat* %37, i32 0, i32 0
  %39 = call i32 @UPGT_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %35, %struct.sysctl_oid_list* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @UPGT_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
