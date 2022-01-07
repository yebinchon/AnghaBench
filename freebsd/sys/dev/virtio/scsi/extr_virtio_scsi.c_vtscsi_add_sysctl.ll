; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_add_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_add_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, %struct.vtscsi_statistics, i32 }
%struct.vtscsi_statistics = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Debug level\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"scsi_cmd_timeouts\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"SCSI command timeouts\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"dequeue_no_requests\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"No available requests to dequeue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_add_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_add_sysctl(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_statistics*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %11, i32 0, i32 1
  store %struct.vtscsi_statistics* %12, %struct.vtscsi_statistics** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %6, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %7, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %23, i32 0, i32 0
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = load %struct.vtscsi_statistics*, %struct.vtscsi_statistics** %4, align 8
  %31 = getelementptr inbounds %struct.vtscsi_statistics, %struct.vtscsi_statistics* %30, i32 0, i32 1
  %32 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.vtscsi_statistics*, %struct.vtscsi_statistics** %4, align 8
  %38 = getelementptr inbounds %struct.vtscsi_statistics, %struct.vtscsi_statistics* %37, i32 0, i32 0
  %39 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
