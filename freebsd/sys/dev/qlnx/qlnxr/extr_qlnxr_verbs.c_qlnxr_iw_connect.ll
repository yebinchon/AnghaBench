; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)*, i32, i32, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }
%struct.qlnxr_dev = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ecore_iwarp_connect_out = type { i32, i32, %struct.TYPE_9__, i64, i64, %struct.qlnxr_iw_ep*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i8*, i8*, i8**, i8**, i32 }
%struct.qlnxr_iw_ep = type { %struct.iw_cm_id*, %struct.qlnxr_qp*, %struct.qlnxr_dev* }
%struct.qlnxr_qp = type { i32, i32 }
%struct.ecore_iwarp_connect_in = type { i32, i32, %struct.TYPE_9__, i64, i64, %struct.qlnxr_iw_ep*, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"[cm_id, conn_param] = [%p, %p] enter \0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"local = [%d.%d.%d.%d, %d] remote = [%d.%d.%d.%d, %d]\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"struct qlnxr_iw_ep alloc memory failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qlnxr_iw_event_handler = common dso_local global i32 0, align 4
@ECORE_TCP_IPV4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"remote_ip = [%d.%d.%d.%d] local_ip = [%d.%d.%d.%d] remote_port = %d local_port = %d vlan = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"qlnxr_addr4_resolve failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"ord = %d ird=%d private_data=%p private_data_len=%d rq_psn=%d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"ecore_iwarp_connect failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_iw_connect(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.ecore_iwarp_connect_out, align 8
  %8 = alloca %struct.ecore_iwarp_connect_in, align 8
  %9 = alloca %struct.qlnxr_iw_ep*, align 8
  %10 = alloca %struct.qlnxr_qp*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %16 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %17)
  store %struct.qlnxr_dev* %18, %struct.qlnxr_dev** %6, align 8
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %14, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %23 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %24 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %25 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.iw_cm_id* %23, %struct.iw_cm_conn_param* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %255

37:                                               ; preds = %2
  %38 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %39 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %38, i32 0, i32 2
  %40 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %41 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.qlnxr_qp* @idr_find(i32* %39, i32 %42)
  store %struct.qlnxr_qp* %43, %struct.qlnxr_qp** %10, align 8
  %44 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %45 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %44, i32 0, i32 3
  %46 = bitcast i32* %45 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %46, %struct.sockaddr_in** %11, align 8
  %47 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %48 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %47, i32 0, i32 2
  %49 = bitcast i32* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @NIPQUAD(i8* %54)
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @NIPQUAD(i8* %62)
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58, i32 %63, i32 %66)
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.qlnxr_iw_ep* @kzalloc(i32 24, i32 %68)
  store %struct.qlnxr_iw_ep* %69, %struct.qlnxr_iw_ep** %9, align 8
  %70 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %71 = icmp ne %struct.qlnxr_iw_ep* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %37
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %74 = call i32 @QL_DPRINT11(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %255

77:                                               ; preds = %37
  %78 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %79 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %80 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %79, i32 0, i32 2
  store %struct.qlnxr_dev* %78, %struct.qlnxr_dev** %80, align 8
  %81 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %82 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %83 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %82, i32 0, i32 1
  store %struct.qlnxr_qp* %81, %struct.qlnxr_qp** %83, align 8
  %84 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %85 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %84, i32 0, i32 1
  %86 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %85, align 8
  %87 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %88 = call i32 %86(%struct.iw_cm_id* %87)
  %89 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %90 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %91 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %90, i32 0, i32 0
  store %struct.iw_cm_id* %89, %struct.iw_cm_id** %91, align 8
  %92 = bitcast %struct.ecore_iwarp_connect_in* %8 to %struct.ecore_iwarp_connect_out*
  %93 = call i32 @memset(%struct.ecore_iwarp_connect_out* %92, i32 0, i32 104)
  %94 = call i32 @memset(%struct.ecore_iwarp_connect_out* %7, i32 0, i32 104)
  %95 = load i32, i32* @qlnxr_iw_event_handler, align 4
  %96 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 6
  store i32 %95, i32* %96, align 8
  %97 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %98 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 5
  store %struct.qlnxr_iw_ep* %97, %struct.qlnxr_iw_ep** %98, align 8
  %99 = load i32, i32* @ECORE_TCP_IPV4, align 4
  %100 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 8
  %102 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @ntohl(i8* %105)
  %107 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 8
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  store i8* %106, i8** %110, align 8
  %111 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @ntohl(i8* %114)
  %116 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 7
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %115, i8** %119, align 8
  %120 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @ntohs(i32 %122)
  %124 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  %126 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @ntohs(i32 %128)
  %130 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %135 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, 40
  %142 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 4
  store i64 %141, i64* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %144 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 8
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @NIPQUAD(i8* %148)
  %150 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 7
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @NIPQUAD(i8* %154)
  %156 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %143, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %155, i8* %158, i8* %161, i64 %164)
  %166 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %167 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %168 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %169 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  %172 = call i32 @qlnxr_addr4_resolve(%struct.qlnxr_dev* %166, %struct.sockaddr_in* %167, %struct.sockaddr_in* %168, i32* %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %77
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %177 = call i32 @QL_DPRINT11(%struct.TYPE_10__* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %243

178:                                              ; preds = %77
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %180 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %181 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %184 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %187 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %190 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %193 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %179, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %182, i32 %185, i32 %188, i32 %191, i32 %194)
  %196 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %197 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %202 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %207 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %212 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %217 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 1
  store i32 %218, i32* %219, align 4
  %220 = getelementptr inbounds %struct.ecore_iwarp_connect_in, %struct.ecore_iwarp_connect_in* %8, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %223 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %222, i32 0, i32 1
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @ETH_ALEN, align 4
  %228 = call i32 @memcpy(i32 %221, i32 %226, i32 %227)
  %229 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %230 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = bitcast %struct.ecore_iwarp_connect_in* %8 to %struct.ecore_iwarp_connect_out*
  %233 = call i32 @ecore_iwarp_connect(i32 %231, %struct.ecore_iwarp_connect_out* %232, %struct.ecore_iwarp_connect_out* %7)
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %178
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %238 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %237, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %243

239:                                              ; preds = %178
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %241 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %3, align 4
  br label %255

243:                                              ; preds = %236, %175
  %244 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %245 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %244, i32 0, i32 0
  %246 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %245, align 8
  %247 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %248 = call i32 %246(%struct.iw_cm_id* %247)
  %249 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %250 = call i32 @kfree(%struct.qlnxr_iw_ep* %249)
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_10__* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %243, %239, %72, %34
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.qlnxr_qp* @idr_find(i32*, i32) #1

declare dso_local i32 @NIPQUAD(i8*) #1

declare dso_local %struct.qlnxr_iw_ep* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @memset(%struct.ecore_iwarp_connect_out*, i32, i32) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @qlnxr_addr4_resolve(%struct.qlnxr_dev*, %struct.sockaddr_in*, %struct.sockaddr_in*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ecore_iwarp_connect(i32, %struct.ecore_iwarp_connect_out*, %struct.ecore_iwarp_connect_out*) #1

declare dso_local i32 @kfree(%struct.qlnxr_iw_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
