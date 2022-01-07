; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_ver_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_ver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hwrm_ver_get_input = type { i32, i32, i32, i32 }
%struct.hwrm_ver_get_output = type { i32, i32, i32, i32, i32, i32, i8*, i64, i64, i64, i8*, i64, i64, i64, i8*, i64, i64, i64, i8*, i32, i64, i64, i32, i32, i32, i32, i64 }

@__const.bnxt_hwrm_ver_get.nastr = private unnamed_addr constant [16 x i8] c"<not installed>\00", align 16
@__const.bnxt_hwrm_ver_get.naver = private unnamed_addr constant [6 x i8] c"<N/A>\00", align 1
@HWRM_MAX_REQ_LEN = common dso_local global i8* null, align 8
@HWRM_VER_GET = common dso_local global i32 0, align 4
@HWRM_VERSION_MAJOR = common dso_local global i32 0, align 4
@HWRM_VERSION_MINOR = common dso_local global i32 0, align 4
@HWRM_VERSION_UPDATE = common dso_local global i32 0, align 4
@BNXT_VERSTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@HWRM_VERSION_STR = common dso_local global i8* null, align 8
@BNXT_NAME_SIZE = common dso_local global i32 0, align 4
@HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED = common dso_local global i32 0, align 4
@HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_REQUIRED = common dso_local global i32 0, align 4
@BNXT_FLAG_SHORT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_ver_get(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_ver_get_input, align 4
  %4 = alloca %struct.hwrm_ver_get_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %9 = bitcast %struct.hwrm_ver_get_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hwrm_ver_get_output*
  store %struct.hwrm_ver_get_output* %15, %struct.hwrm_ver_get_output** %4, align 8
  %16 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.bnxt_hwrm_ver_get.nastr, i32 0, i32 0), i64 16, i1 false)
  %17 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.bnxt_hwrm_ver_get.naver, i32 0, i32 0), i64 6, i1 false)
  %18 = load i8*, i8** @HWRM_MAX_REQ_LEN, align 8
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 0
  store i32 1000, i32* %22, align 8
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %24 = load i32, i32* @HWRM_VER_GET, align 4
  %25 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %23, %struct.hwrm_ver_get_input* %3, i32 %24)
  %26 = load i32, i32* @HWRM_VERSION_MAJOR, align 4
  %27 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @HWRM_VERSION_MINOR, align 4
  %29 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @HWRM_VERSION_UPDATE, align 4
  %31 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %3, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %33 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %32)
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %35 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %34, %struct.hwrm_ver_get_input* %3, i32 16)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %378

39:                                               ; preds = %1
  %40 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 17
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %46 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %47 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %50 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %53 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %57 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %64 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %71 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 8
  %77 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 16
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %83 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %84 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %87 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %90 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @snprintf(i32 %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32 %91)
  %93 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** @HWRM_VERSION_STR, align 8
  %99 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %100 = call i32 @strlcpy(i32 %97, i8* %98, i32 %99)
  %101 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %102 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 14
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %107 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %110 = call i32 @strlcpy(i32 %105, i8* %108, i32 %109)
  %111 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %112 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %39
  %116 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %117 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %122 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %127 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %132 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %133 = call i32 @strlcpy(i32 %130, i8* %131, i32 %132)
  %134 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %135 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %140 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %141 = call i32 @strlcpy(i32 %138, i8* %139, i32 %140)
  br label %172

142:                                              ; preds = %120, %115, %39
  %143 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %144 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %149 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %150 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %154 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %158 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %157, i32 0, i32 9
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @snprintf(i32 %147, i32 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %156, i32 %160)
  %162 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %163 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %168 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %167, i32 0, i32 10
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %171 = call i32 @strlcpy(i32 %166, i8* %169, i32 %170)
  br label %172

172:                                              ; preds = %142, %125
  %173 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %174 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %173, i32 0, i32 11
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %172
  %178 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %179 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %178, i32 0, i32 12
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %177
  %183 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %184 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %183, i32 0, i32 13
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %182
  %188 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %189 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %188, i32 0, i32 3
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 11
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %194 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %195 = call i32 @strlcpy(i32 %192, i8* %193, i32 %194)
  %196 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %197 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %196, i32 0, i32 3
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %202 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %203 = call i32 @strlcpy(i32 %200, i8* %201, i32 %202)
  br label %234

204:                                              ; preds = %182, %177, %172
  %205 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %206 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 11
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %211 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %212 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %211, i32 0, i32 11
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %216 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %215, i32 0, i32 12
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %220 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %219, i32 0, i32 13
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @snprintf(i32 %209, i32 %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %214, i32 %218, i32 %222)
  %224 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %225 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %224, i32 0, i32 3
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %230 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %229, i32 0, i32 14
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %233 = call i32 @strlcpy(i32 %228, i8* %231, i32 %232)
  br label %234

234:                                              ; preds = %204, %187
  %235 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %236 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %235, i32 0, i32 15
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %266

239:                                              ; preds = %234
  %240 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %241 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %240, i32 0, i32 16
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %266

244:                                              ; preds = %239
  %245 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %246 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %245, i32 0, i32 17
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %244
  %250 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %251 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %250, i32 0, i32 3
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %256 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %257 = call i32 @strlcpy(i32 %254, i8* %255, i32 %256)
  %258 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %259 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %258, i32 0, i32 3
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %264 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %265 = call i32 @strlcpy(i32 %262, i8* %263, i32 %264)
  br label %296

266:                                              ; preds = %244, %239, %234
  %267 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %267, i32 0, i32 3
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 9
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @BNXT_VERSTR_SIZE, align 4
  %273 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %274 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %273, i32 0, i32 15
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %278 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %277, i32 0, i32 16
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %282 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %281, i32 0, i32 17
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = call i32 @snprintf(i32 %271, i32 %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %276, i32 %280, i32 %284)
  %286 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %287 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %286, i32 0, i32 3
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %292 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %291, i32 0, i32 18
  %293 = load i8*, i8** %292, align 8
  %294 = load i32, i32* @BNXT_NAME_SIZE, align 4
  %295 = call i32 @strlcpy(i32 %290, i8* %293, i32 %294)
  br label %296

296:                                              ; preds = %266, %249
  %297 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %298 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %297, i32 0, i32 26
  %299 = load i64, i64* %298, align 8
  %300 = call i8* @le16toh(i64 %299)
  %301 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %302 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %301, i32 0, i32 3
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 7
  store i8* %300, i8** %304, align 8
  %305 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %306 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %305, i32 0, i32 25
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %309 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %308, i32 0, i32 3
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 6
  store i32 %307, i32* %311, align 8
  %312 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %313 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %312, i32 0, i32 24
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %316 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %315, i32 0, i32 3
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 5
  store i32 %314, i32* %318, align 4
  %319 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %320 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %319, i32 0, i32 23
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %323 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %322, i32 0, i32 3
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 4
  store i32 %321, i32* %325, align 8
  %326 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %327 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %326, i32 0, i32 22
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %330 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %329, i32 0, i32 3
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 3
  store i32 %328, i32* %332, align 4
  %333 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %334 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %333, i32 0, i32 21
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %296
  %338 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %339 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %338, i32 0, i32 21
  %340 = load i64, i64* %339, align 8
  %341 = call i8* @le16toh(i64 %340)
  %342 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %343 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %342, i32 0, i32 2
  store i8* %341, i8** %343, align 8
  br label %344

344:                                              ; preds = %337, %296
  %345 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %346 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %345, i32 0, i32 20
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %344
  %350 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %351 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %350, i32 0, i32 20
  %352 = load i64, i64* %351, align 8
  %353 = call i8* @le16toh(i64 %352)
  %354 = ptrtoint i8* %353 to i32
  %355 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %356 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  br label %357

357:                                              ; preds = %349, %344
  %358 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %4, align 8
  %359 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %358, i32 0, i32 19
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @le32toh(i32 %360)
  store i32 %361, i32* %8, align 4
  %362 = load i32, i32* %8, align 4
  %363 = load i32, i32* @HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %357
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* @HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_REQUIRED, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load i32, i32* @BNXT_FLAG_SHORT_CMD, align 4
  %373 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %374 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  br label %377

377:                                              ; preds = %371, %366, %357
  br label %378

378:                                              ; preds = %377, %38
  %379 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %380 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %379)
  %381 = load i32, i32* %5, align 4
  ret i32 %381
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_ver_get_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_ver_get_input*, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i8* @le16toh(i64) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
