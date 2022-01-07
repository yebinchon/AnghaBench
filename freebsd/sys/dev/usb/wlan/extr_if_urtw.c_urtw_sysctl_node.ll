; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, %struct.urtw_stats }
%struct.urtw_stats = type { i32* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"URTW statistics\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1m\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"1 Mbit/s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"2m\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"2 Mbit/s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"5.5m\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"5.5 Mbit/s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"6m\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"6 Mbit/s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"9m\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"9 Mbit/s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"11m\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"11 Mbit/s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"12m\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"12 Mbit/s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"18m\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"18 Mbit/s\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"24 Mbit/s\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"36m\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"36 Mbit/s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"48m\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"48 Mbit/s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"54m\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"54 Mbit/s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urtw_softc*)* @urtw_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_sysctl_node(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.urtw_stats*, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %9 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %8, i32 0, i32 1
  store %struct.urtw_stats* %9, %struct.urtw_stats** %7, align 8
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %11 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %15 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %4, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %23, %struct.sysctl_oid** %6, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %25 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  store %struct.sysctl_oid_list* %25, %struct.sysctl_oid_list** %5, align 8
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %30, %struct.sysctl_oid** %6, align 8
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %32 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %31)
  store %struct.sysctl_oid_list* %32, %struct.sysctl_oid_list** %4, align 8
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %38 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %40, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %43 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLFLAG_RD, align 4
  %46 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %47 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %42, %struct.sysctl_oid_list* %43, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32* %49, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %52 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %56 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %51, %struct.sysctl_oid_list* %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32* %58, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %65 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %60, %struct.sysctl_oid_list* %61, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %63, i32* %67, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %70 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %74 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %69, %struct.sysctl_oid_list* %70, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %72, i32* %76, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %79 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %83 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %78, %struct.sysctl_oid_list* %79, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %81, i32* %85, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %87 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %88 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLFLAG_RD, align 4
  %91 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %92 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %87, %struct.sysctl_oid_list* %88, i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %90, i32* %94, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %98 = load i32, i32* @OID_AUTO, align 4
  %99 = load i32, i32* @CTLFLAG_RD, align 4
  %100 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %101 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %96, %struct.sysctl_oid_list* %97, i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %99, i32* %103, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLFLAG_RD, align 4
  %109 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %110 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %108, i32* %112, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %114 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %115 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %116 = load i32, i32* @OID_AUTO, align 4
  %117 = load i32, i32* @CTLFLAG_RD, align 4
  %118 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %119 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 9
  %122 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %114, %struct.sysctl_oid_list* %115, i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %117, i32* %121, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %123 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %124 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %125 = load i32, i32* @OID_AUTO, align 4
  %126 = load i32, i32* @CTLFLAG_RD, align 4
  %127 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %128 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  %131 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %123, %struct.sysctl_oid_list* %124, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 %126, i32* %130, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %133 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %134 = load i32, i32* @OID_AUTO, align 4
  %135 = load i32, i32* @CTLFLAG_RD, align 4
  %136 = load %struct.urtw_stats*, %struct.urtw_stats** %7, align 8
  %137 = getelementptr inbounds %struct.urtw_stats, %struct.urtw_stats* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 11
  %140 = call i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...) bitcast (i32 (...)* @SYSCTL_ADD_UINT to i32 (%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*, ...)*)(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid_list* %133, i32 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 %135, i32* %139, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
