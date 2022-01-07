; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_debug_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_debug_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_rxqueue*, %struct.vmxnet3_txqueue*, %struct.TYPE_10__* }
%struct.vmxnet3_rxqueue = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vmxnet3_txqueue = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cmd_next\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cmd_ndesc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cmd_gen\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"comp_next\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"comp_ndesc\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"comp_gen\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cmd0_ndesc\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cmd0_gen\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"cmd1_ndesc\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cmd1_gen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*)* @vmxnet3_setup_debug_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_setup_debug_sysctl(%struct.vmxnet3_softc* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid_list* %2) #0 {
  %4 = alloca %struct.vmxnet3_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmxnet3_txqueue*, align 8
  %12 = alloca %struct.vmxnet3_rxqueue*, align 8
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid_list* %2, %struct.sysctl_oid_list** %6, align 8
  %13 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %16
  %23 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %23, i32 0, i32 1
  %25 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %25, i64 %27
  store %struct.vmxnet3_txqueue* %28, %struct.vmxnet3_txqueue** %11, align 8
  %29 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %30 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %29, i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %35, %struct.sysctl_oid** %8, align 8
  %36 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %37 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %36)
  store %struct.sysctl_oid_list* %37, %struct.sysctl_oid_list** %9, align 8
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32* %44, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %47 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %51 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %46, %struct.sysctl_oid_list* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32* %52, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %55 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %54, %struct.sysctl_oid_list* %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32* %60, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %63 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLFLAG_RD, align 4
  %66 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %62, %struct.sysctl_oid_list* %63, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32* %68, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RD, align 4
  %74 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %70, %struct.sysctl_oid_list* %71, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %73, i32* %76, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %79 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %11, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %78, %struct.sysctl_oid_list* %79, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %81, i32* %84, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %22
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %16

89:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %168, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %171

96:                                               ; preds = %90
  %97 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %97, i32 0, i32 0
  %99 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %99, i64 %101
  store %struct.vmxnet3_rxqueue* %102, %struct.vmxnet3_rxqueue** %12, align 8
  %103 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %104 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %105 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLFLAG_RD, align 4
  %109 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %103, i32 %106, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %108, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %109, %struct.sysctl_oid** %8, align 8
  %110 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %111 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %110)
  store %struct.sysctl_oid_list* %111, %struct.sysctl_oid_list** %9, align 8
  %112 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %113 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %114 = load i32, i32* @OID_AUTO, align 4
  %115 = load i32, i32* @CTLFLAG_RD, align 4
  %116 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %117 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %112, %struct.sysctl_oid_list* %113, i32 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %115, i32* %120, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %127 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %125, i32* %130, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %133 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %134 = load i32, i32* @OID_AUTO, align 4
  %135 = load i32, i32* @CTLFLAG_RD, align 4
  %136 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid_list* %133, i32 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32* %140, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %143 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %144 = load i32, i32* @OID_AUTO, align 4
  %145 = load i32, i32* @CTLFLAG_RD, align 4
  %146 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %147 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %142, %struct.sysctl_oid_list* %143, i32 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %145, i32* %150, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %153 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %154 = load i32, i32* @OID_AUTO, align 4
  %155 = load i32, i32* @CTLFLAG_RD, align 4
  %156 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %157 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %152, %struct.sysctl_oid_list* %153, i32 %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32* %158, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %161 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %162 = load i32, i32* @OID_AUTO, align 4
  %163 = load i32, i32* @CTLFLAG_RD, align 4
  %164 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %12, align 8
  %165 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %160, %struct.sysctl_oid_list* %161, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32* %166, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %96
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %90

171:                                              ; preds = %90
  ret void
}

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
