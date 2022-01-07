; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_build_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_16__*, %union.ib_gid* }
%struct.TYPE_16__ = type { i32** }
%union.ib_gid = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.ib_ud_header = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_25__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i8*, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__, i32, i32, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32**, i32**, i8* }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.ib_ah_attr = type { i32**, %struct.ib_global_route }
%struct.ib_global_route = type { i64, %struct.TYPE_23__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.ib_ah_attr }

@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_ROCE = common dso_local global i32 0, align 4
@ROCE_V1 = common dso_local global i32 0, align 4
@QLNXR_MAX_SGID = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"destination mac: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"source mac: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"QP: %p, opcode: %d, wq: %lx, roce: %x, hops:%d,imm : %d, vlan :%d, AH: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"header: tc: %x, flow_label : %x, hop_limit: %x \0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"udh dgid = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"udh sgid = %x\0A\00", align 1
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@QLNXR_ROCE_PKEY_DEFAULT = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@QLNXR_GSI_QPN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_send_wr*, %struct.ib_ud_header*, i32*)* @qlnxr_gsi_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_gsi_build_header(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ib_send_wr* %2, %struct.ib_ud_header* %3, i32* %4) #0 {
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.ib_ud_header*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_ah_attr*, align 8
  %14 = alloca %struct.ib_global_route*, align 8
  %15 = alloca %union.ib_gid, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %6, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %7, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %8, align 8
  store %struct.ib_ud_header* %3, %struct.ib_ud_header** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %25 = call %struct.TYPE_14__* @ud_wr(%struct.ib_send_wr* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_15__* @get_qlnxr_ah(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store %struct.ib_ah_attr* %29, %struct.ib_ah_attr** %13, align 8
  %30 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %31 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %30, i32 0, i32 1
  store %struct.ib_global_route* %31, %struct.ib_global_route** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %19, align 8
  %35 = alloca i32*, i64 %33, align 16
  store i64 %33, i64* %20, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %36

36:                                               ; preds = %55, %5
  %37 = load i32, i32* %21, align 4
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %21, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %60 = call i32 @qlnxr_get_vlan_id_gsi(%struct.ib_ah_attr* %59, i32* %17)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @ETH_P_ROCE, align 4
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* @ROCE_V1, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %65 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @QLNXR_MAX_SGID, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %58
  %70 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %71 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %70, i32 0, i32 1
  %72 = load %union.ib_gid*, %union.ib_gid** %71, align 8
  %73 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %74 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %72, i64 %75
  %77 = bitcast %union.ib_gid* %15 to i8*
  %78 = bitcast %union.ib_gid* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 8, i1 false)
  br label %86

79:                                               ; preds = %58
  %80 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %81 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %80, i32 0, i32 1
  %82 = load %union.ib_gid*, %union.ib_gid** %81, align 8
  %83 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %82, i64 0
  %84 = bitcast %union.ib_gid* %15 to i8*
  %85 = bitcast %union.ib_gid* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  br label %86

86:                                               ; preds = %79, %69
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %91 = call i32 (i32, i32, i32, i32, i32, i32, ...) @ib_ud_header_init(i32 %87, i32 0, i32 1, i32 %88, i32 %89, i32 0, %struct.ib_ud_header* %90)
  %92 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %93 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %13, align 8
  %94 = call i32 @qlnxr_get_dmac(%struct.qlnxr_dev* %92, %struct.ib_ah_attr* %93, i32** %35)
  %95 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %96 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = call i32 @memcpy(i32** %98, i32** %35, i32 %99)
  %101 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %102 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %106 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i32 @memcpy(i32** %104, i32** %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %86
  %115 = load i32, i32* @ETH_P_8021Q, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %118 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i8* @htons(i32 %120)
  %122 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %123 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i8* @htons(i32 %125)
  %127 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %128 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %136

130:                                              ; preds = %86
  %131 = load i32, i32* %18, align 4
  %132 = call i8* @htons(i32 %131)
  %133 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %134 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %130, %114
  store i32 0, i32* %22, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %22, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %142 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %145 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %151)
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %22, align 4
  br label %137

156:                                              ; preds = %137
  store i32 0, i32* %23, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %23, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %162 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %161, i32 0, i32 0
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %165 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %23, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %171)
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %23, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %23, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %178 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %181 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %182 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %185 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %190 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %194 = call %struct.TYPE_14__* @ud_wr(%struct.ib_send_wr* %193)
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.TYPE_15__* @get_qlnxr_ah(i32 %196)
  %198 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %179, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), %struct.qlnxr_qp* %180, i32 %183, i32 %186, i32 %188, i32 %191, i32 0, i32 %192, %struct.TYPE_15__* %197)
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %294

201:                                              ; preds = %176
  %202 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %203 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %206 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 5
  store i32 %204, i32* %207, align 8
  %208 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %209 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %212 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 4
  store i32 %210, i32* %213, align 4
  %214 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %215 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %218 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 3
  store i32 %216, i32* %219, align 8
  %220 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %221 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 2
  %223 = load %struct.ib_global_route*, %struct.ib_global_route** %14, align 8
  %224 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %223, i32 0, i32 1
  %225 = bitcast %struct.TYPE_23__* %222 to i8*
  %226 = bitcast %struct.TYPE_23__* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 %226, i64 8, i1 false)
  %227 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %228 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = bitcast %union.ib_gid* %15 to i32**
  %232 = call i32 @memcpy(i32** %230, i32** %231, i32 8)
  %233 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %234 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %233, i32 0, i32 0
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %237 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %241 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %245 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %235, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %239, i32 %243, i32 %247)
  store i32 0, i32* %21, align 4
  br label %249

249:                                              ; preds = %266, %201
  %250 = load i32, i32* %21, align 4
  %251 = icmp slt i32 %250, 16
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %254 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %253, i32 0, i32 0
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %257 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %252
  %267 = load i32, i32* %21, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %21, align 4
  br label %249

269:                                              ; preds = %249
  store i32 0, i32* %21, align 4
  br label %270

270:                                              ; preds = %287, %269
  %271 = load i32, i32* %21, align 4
  %272 = icmp slt i32 %271, 16
  br i1 %272, label %273, label %290

273:                                              ; preds = %270
  %274 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %275 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %274, i32 0, i32 0
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %275, align 8
  %277 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %278 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %21, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %273
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %21, align 4
  br label %270

290:                                              ; preds = %270
  %291 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %292 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  store i32 27, i32* %293, align 8
  br label %294

294:                                              ; preds = %290, %176
  %295 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %296 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %305 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 8
  %307 = load i32, i32* @QLNXR_ROCE_PKEY_DEFAULT, align 4
  %308 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %309 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 4
  store i32 %307, i32* %310, align 8
  %311 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %312 = call %struct.TYPE_14__* @ud_wr(%struct.ib_send_wr* %311)
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @OSAL_CPU_TO_BE32(i32 %314)
  %316 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %317 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 3
  store i8* %315, i8** %318, align 8
  %319 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %320 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  %323 = and i32 %321, 16777215
  %324 = call i8* @OSAL_CPU_TO_BE32(i32 %323)
  %325 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %326 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 2
  store i8* %324, i8** %327, align 8
  %328 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %329 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %330 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 1
  store i32 %328, i32* %331, align 4
  %332 = call i8* @OSAL_CPU_TO_BE32(i32 -2147418112)
  %333 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %334 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  store i8* %332, i8** %335, align 8
  %336 = load i32, i32* @QLNXR_GSI_QPN, align 4
  %337 = call i8* @OSAL_CPU_TO_BE32(i32 %336)
  %338 = load %struct.ib_ud_header*, %struct.ib_ud_header** %9, align 8
  %339 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  store i8* %337, i8** %340, align 8
  %341 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %342 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %341, i32 0, i32 0
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %342, align 8
  %344 = call i32 (%struct.TYPE_16__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_16__* %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %345 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %345)
  ret i32 0
}

declare dso_local %struct.TYPE_15__* @get_qlnxr_ah(i32) #1

declare dso_local %struct.TYPE_14__* @ud_wr(%struct.ib_send_wr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qlnxr_get_vlan_id_gsi(%struct.ib_ah_attr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ib_ud_header_init(i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @qlnxr_get_dmac(%struct.qlnxr_dev*, %struct.ib_ah_attr*, i32**) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i8* @OSAL_CPU_TO_BE32(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
