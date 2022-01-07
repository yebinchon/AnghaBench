; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_device_sysctl_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_device_sysctl_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__*, %struct.sysctl_oid* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"iflib\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IFLIB fields\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"driver version\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"override_ntxqs\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"# of txqs to use, 0 => use default #\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"override_nrxqs\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"# of rxqs to use, 0 => use default #\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"override_qs_enable\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"permit #txq != #rxq\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"disable_msix\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"disable MSI-X (default 0)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"rx_budget\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"set the RX budget\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"tx_abdicate\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"cause TX to abdicate instead of running to completion\00", align 1
@CORE_OFFSET_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"core_offset\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"offset to start using cores at\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"separate_txrx\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"use separate cores for TX and RX\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"override_ntxds\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@IFLIB_NTXD_HANDLER = common dso_local global i32 0, align 4
@mp_ndesc_handler = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"list of # of TX descriptors to use, 0 = use default #\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"override_nrxds\00", align 1
@IFLIB_NRXD_HANDLER = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [54 x i8] c"list of # of RX descriptors to use, 0 = use default #\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @iflib_add_device_sysctl_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_add_device_sysctl_pre(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32 @iflib_get_dev(%struct.TYPE_9__* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %16 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %15, %struct.sysctl_oid_list* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %21, align 8
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %23 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %22)
  store %struct.sysctl_oid_list* %23, %struct.sysctl_oid_list** %5, align 8
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SYSCTL_ADD_CONST_STRING(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 7
  %40 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32* %39, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %42 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %41, %struct.sysctl_oid_list* %42, i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32* %46, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %49 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %50 = load i32, i32* @OID_AUTO, align 4
  %51 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %48, %struct.sysctl_oid_list* %49, i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32* %53, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %56 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %56, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %58, i32* %61, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %64 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %63, %struct.sysctl_oid_list* %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %66, i32* %68, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %70, %struct.sysctl_oid_list* %71, i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %73, i32* %75, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0))
  %77 = load i32, i32* @CORE_OFFSET_UNSPECIFIED, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %83, i32* %85, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %87 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %88 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = call i32 @SYSCTL_ADD_U8(%struct.sysctl_ctx_list* %87, %struct.sysctl_oid_list* %88, i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %90, i32* %92, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %94 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %95 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %96 = load i32, i32* @OID_AUTO, align 4
  %97 = load i32, i32* @CTLTYPE_STRING, align 4
  %98 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = load i32, i32* @IFLIB_NTXD_HANDLER, align 4
  %102 = load i32, i32* @mp_ndesc_handler, align 4
  %103 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %94, %struct.sysctl_oid_list* %95, i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %99, %struct.TYPE_9__* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  %104 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %105 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %106 = load i32, i32* @OID_AUTO, align 4
  %107 = load i32, i32* @CTLTYPE_STRING, align 4
  %108 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = load i32, i32* @IFLIB_NRXD_HANDLER, align 4
  %112 = load i32, i32* @mp_ndesc_handler, align 4
  %113 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %104, %struct.sysctl_oid_list* %105, i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %109, %struct.TYPE_9__* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @iflib_get_dev(%struct.TYPE_9__*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_CONST_STRING(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U8(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.TYPE_9__*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
