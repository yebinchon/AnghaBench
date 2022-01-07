; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sysctl_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sysctl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, %struct.sysctl_oid*, i32, i32, i32, %struct.vxlan_statistics, %struct.sysctl_ctx_list }
%struct.sysctl_oid = type { i32 }
%struct.vxlan_statistics = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_net_link_vxlan = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ftable\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Number of entries in fowarding table\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Maximum number of entries allowed in fowarding table\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Number of seconds between prunes of the forwarding table\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@CTLFLAG_SKIP = common dso_local global i32 0, align 4
@vxlan_ftable_sysctl_dump = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Dump the forwarding table entries\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ftable_nospace\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Fowarding table reached maximum entries\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ftable_lock_upgrade_failed\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Forwarding table update required lock upgrade\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*)* @vxlan_sysctl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_sysctl_setup(%struct.vxlan_softc* %0) #0 {
  %2 = alloca %struct.vxlan_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.vxlan_statistics*, align 8
  %6 = alloca [8 x i8], align 1
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %2, align 8
  %7 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %7, i32 0, i32 6
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %9, i32 0, i32 5
  store %struct.vxlan_statistics* %10, %struct.vxlan_statistics** %5, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %12 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @snprintf(i8* %11, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %17 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %16)
  %18 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %19 = load i32, i32* @_net_link_vxlan, align 4
  %20 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %23 = load i32, i32* @CTLFLAG_RD, align 4
  %24 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %18, i32 %20, i32 %21, i8* %22, i32 %23, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to %struct.sysctl_oid*
  %26 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %26, i32 0, i32 1
  store %struct.sysctl_oid* %25, %struct.sysctl_oid** %27, align 8
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %29 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %29, i32 0, i32 1
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %30, align 8
  %32 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %31)
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %28, i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = bitcast i8* %35 to %struct.sysctl_oid*
  store %struct.sysctl_oid* %36, %struct.sysctl_oid** %4, align 8
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %38 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %39 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %42, i32 0, i32 4
  %44 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %37, i32 %39, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %47 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %51 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %50, i32 0, i32 3
  %52 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %45, i32 %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32* %51, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %59 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %58, i32 0, i32 2
  %60 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %57, i32* %59, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %63 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_STRING, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CTLFLAG_SKIP, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %73 = load i32, i32* @vxlan_ftable_sysctl_dump, align 4
  %74 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, i32 %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %71, %struct.vxlan_softc* %72, i32 0, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %76 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %77 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %76, i32 0, i32 1
  %78 = load %struct.sysctl_oid*, %struct.sysctl_oid** %77, align 8
  %79 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %75, i32 %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %81, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %83 = bitcast i8* %82 to %struct.sysctl_oid*
  store %struct.sysctl_oid* %83, %struct.sysctl_oid** %4, align 8
  %84 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %85 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %86 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %85)
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLFLAG_RD, align 4
  %89 = load %struct.vxlan_statistics*, %struct.vxlan_statistics** %5, align 8
  %90 = getelementptr inbounds %struct.vxlan_statistics, %struct.vxlan_statistics* %89, i32 0, i32 1
  %91 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %84, i32 %86, i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %88, i32* %90, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %92 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %93 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %94 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = load %struct.vxlan_statistics*, %struct.vxlan_statistics** %5, align 8
  %98 = getelementptr inbounds %struct.vxlan_statistics, %struct.vxlan_statistics* %97, i32 0, i32 0
  %99 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %92, i32 %94, i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %96, i32* %98, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.vxlan_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
