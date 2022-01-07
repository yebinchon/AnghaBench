; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_ep = type { i64, i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_10__*, i32, %struct.ecore_iwarp_ep* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.ecore_iwarp_ep*, i32 }
%struct.ecore_iwarp_accept_in = type { i64, i32, i32, %struct.TYPE_10__*, i32, i32, i64 }
%struct.ecore_hwfn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Ep Context receive in accept is NULL\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"QP(0x%x) EP(0x%x)\0A\00", align 1
@ECORE_IWARP_ORD_DEFAULT = common dso_local global i64 0, align 8
@ECORE_IWARP_IRD_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"QP(0x%x) EP(0x%x) ERROR: Invalid ord(0x%x)/ird(0x%x)\0A\00", align 1
@OSAL_NULL = common dso_local global %struct.ecore_iwarp_ep* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Note re-use of QP for different connect\0A\00", align 1
@MPA_NEGOTIATION_TYPE_ENHANCED = common dso_local global i64 0, align 8
@MPA_RTR_TYPE_ZERO_READ = common dso_local global i32 0, align 4
@ECORE_IWARP_EP_CLOSED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"(0x%x) Accept called on EP in CLOSED state\0A\00", align 1
@ECORE_IWARP_INVALID_TCP_CID = common dso_local global i32 0, align 4
@ECORE_CONN_RESET = common dso_local global i32 0, align 4
@ECORE_IWARP_QP_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iwarp_accept(i8* %0, %struct.ecore_iwarp_accept_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_iwarp_accept_in*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_iwarp_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_iwarp_accept_in* %1, %struct.ecore_iwarp_accept_in** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ecore_iwarp_ep*
  store %struct.ecore_iwarp_ep* %15, %struct.ecore_iwarp_ep** %7, align 8
  %16 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %17 = icmp ne %struct.ecore_iwarp_ep* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %20 = call i32 @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %232

22:                                               ; preds = %2
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %25 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ECORE_IWARP_ORD_DEFAULT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %22
  %40 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ECORE_IWARP_IRD_DEFAULT, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39, %22
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %47 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %48 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %57 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %60 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %46, i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55, i64 %58, i64 %61)
  %63 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %232

64:                                               ; preds = %39
  %65 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %68, align 8
  %70 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** @OSAL_NULL, align 8
  %71 = icmp eq %struct.ecore_iwarp_ep* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %74 = call i32 @ecore_iwarp_prealloc_ep(%struct.ecore_hwfn* %73, i32 0)
  br label %86

75:                                               ; preds = %64
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %77 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %78 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %76, i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %80 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %81 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %80, i32 0, i32 3
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %83, align 8
  %85 = call i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn* %79, %struct.ecore_iwarp_ep* %84)
  br label %86

86:                                               ; preds = %75, %72
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %94 = call i32 @ecore_iwarp_move_to_ep_list(%struct.ecore_hwfn* %87, i32* %92, %struct.ecore_iwarp_ep* %93)
  %95 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** @OSAL_NULL, align 8
  %96 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %97 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %96, i32 0, i32 8
  store %struct.ecore_iwarp_ep* %95, %struct.ecore_iwarp_ep** %97, align 8
  %98 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %99 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %102 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %104 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %103, i32 0, i32 3
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %107 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %106, i32 0, i32 6
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %107, align 8
  %108 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %109 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %110 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %109, i32 0, i32 6
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store %struct.ecore_iwarp_ep* %108, %struct.ecore_iwarp_ep** %112, align 8
  %113 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %114 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MPA_NEGOTIATION_TYPE_ENHANCED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %150

118:                                              ; preds = %86
  %119 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %120 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %123 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %121, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %129 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %133 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %118
  %135 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %136 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MPA_RTR_TYPE_ZERO_READ, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %143 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %148 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %141, %134
  br label %150

150:                                              ; preds = %149, %86
  %151 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %152 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %155 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  %157 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %158 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %162 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  %164 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %165 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %166 = call i32 @ecore_iwarp_mpa_v2_set_private(%struct.ecore_hwfn* %164, %struct.ecore_iwarp_ep* %165, i32* %8)
  %167 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %168 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %167, i32 0, i32 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %173 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  store i64 %171, i64* %174, align 8
  %175 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %176 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %181 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 8
  %183 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %184 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %183, i32 0, i32 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %193 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %196 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @OSAL_MEMCPY(i32* %191, i32 %194, i32 %197)
  %199 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %200 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @ECORE_IWARP_EP_CLOSED, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %150
  %205 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %206 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %207 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %205, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ECORE_IWARP_INVALID_TCP_CID, align 4
  %211 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %212 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 8
  %213 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %214 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %215 = call i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn* %213, %struct.ecore_iwarp_ep* %214)
  %216 = load i32, i32* @ECORE_CONN_RESET, align 4
  store i32 %216, i32* %3, align 4
  br label %232

217:                                              ; preds = %150
  %218 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %219 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %220 = call i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn* %218, %struct.ecore_iwarp_ep* %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %225 = load %struct.ecore_iwarp_accept_in*, %struct.ecore_iwarp_accept_in** %5, align 8
  %226 = getelementptr inbounds %struct.ecore_iwarp_accept_in, %struct.ecore_iwarp_accept_in* %225, i32 0, i32 3
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* @ECORE_IWARP_QP_STATE_ERROR, align 4
  %229 = call i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn* %224, %struct.TYPE_10__* %227, i32 %228, i32 1)
  br label %230

230:                                              ; preds = %223, %217
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %230, %204, %45, %18
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_iwarp_prealloc_ep(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @ecore_iwarp_move_to_ep_list(%struct.ecore_hwfn*, i32*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @ecore_iwarp_mpa_v2_set_private(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32*) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
