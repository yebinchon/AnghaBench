; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_rxq_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_setup_rxq_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.vtnet_rxq = type { i32, %struct.vtnet_rxq_stats }
%struct.vtnet_rxq_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Receive Queue\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ipackets\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Receive packets\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ibytes\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Receive bytes\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"iqdrops\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Receive drops\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ierrors\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Receive errors\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"csum\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Receive checksum offloaded\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"csum_failed\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Receive checksum offload failed\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"rescheduled\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Receive interrupt handler rescheduled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, %struct.vtnet_rxq*)* @vtnet_setup_rxq_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_setup_rxq_sysctl(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid_list* %1, %struct.vtnet_rxq* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.vtnet_rxq*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.vtnet_rxq_stats*, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %5, align 8
  store %struct.vtnet_rxq* %2, %struct.vtnet_rxq** %6, align 8
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %12 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %13 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @snprintf(i8* %11, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* %19, i32 %20, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %21, %struct.sysctl_oid** %7, align 8
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %23 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %22)
  store %struct.sysctl_oid_list* %23, %struct.sysctl_oid_list** %8, align 8
  %24 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %25 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %24, i32 0, i32 1
  store %struct.vtnet_rxq_stats* %25, %struct.vtnet_rxq_stats** %9, align 8
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %31 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %30, i32 0, i32 6
  %32 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %38 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %37, i32 0, i32 5
  %39 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %45 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %44, i32 0, i32 4
  %46 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %52 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %51, i32 0, i32 3
  %53 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %50, i32* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %55 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %59 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %58, i32 0, i32 2
  %60 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %54, %struct.sysctl_oid_list* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %57, i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RD, align 4
  %65 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %66 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %65, i32 0, i32 1
  %67 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %64, i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %68 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %69 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %70 = load i32, i32* @OID_AUTO, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = load %struct.vtnet_rxq_stats*, %struct.vtnet_rxq_stats** %9, align 8
  %73 = getelementptr inbounds %struct.vtnet_rxq_stats, %struct.vtnet_rxq_stats* %72, i32 0, i32 0
  %74 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %68, %struct.sysctl_oid_list* %69, i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %71, i32* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
