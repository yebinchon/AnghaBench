; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_mngr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_mngr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr*, %struct.TYPE_10__* }
%struct.ecore_cxt_mngr = type { i32, i32, i32*, %struct.ecore_ilt_client_cfg* }
%struct.ecore_ilt_client_cfg = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate `struct ecore_cxt_mngr'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@CDUC = common dso_local global i32 0, align 4
@FIRST_ILT = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@LAST_ILT = common dso_local global i32 0, align 4
@P_SIZE = common dso_local global i32 0, align 4
@QM = common dso_local global i32 0, align 4
@ILT_CLI_QM = common dso_local global i64 0, align 8
@TM = common dso_local global i32 0, align 4
@ILT_CLI_TM = common dso_local global i64 0, align 8
@SRC = common dso_local global i32 0, align 4
@ILT_CLI_SRC = common dso_local global i64 0, align 8
@CDUT = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@TSDM = common dso_local global i32 0, align 4
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@ILT_CLI_MAX = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_mngr_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %5 = alloca %struct.ecore_cxt_mngr*, align 8
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ecore_cxt_mngr* @OSAL_ZALLOC(%struct.TYPE_10__* %9, i32 %10, i32 24)
  store %struct.ecore_cxt_mngr* %11, %struct.ecore_cxt_mngr** %5, align 8
  %12 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %13 = icmp ne %struct.ecore_cxt_mngr* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %15, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %223

18:                                               ; preds = %1
  %19 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %19, i32 0, i32 3
  %21 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %20, align 8
  store %struct.ecore_ilt_client_cfg* %21, %struct.ecore_ilt_client_cfg** %4, align 8
  %22 = load i32, i32* @CDUC, align 4
  %23 = load i32, i32* @FIRST_ILT, align 4
  %24 = call i8* @ILT_CFG_REG(i32 %22, i32 %23)
  %25 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %26 = load i64, i64* @ILT_CLI_CDUC, align 8
  %27 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %25, i64 %26
  %28 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* @CDUC, align 4
  %31 = load i32, i32* @LAST_ILT, align 4
  %32 = call i8* @ILT_CFG_REG(i32 %30, i32 %31)
  %33 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %34 = load i64, i64* @ILT_CLI_CDUC, align 8
  %35 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %33, i64 %34
  %36 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %32, i8** %37, align 8
  %38 = load i32, i32* @CDUC, align 4
  %39 = load i32, i32* @P_SIZE, align 4
  %40 = call i8* @ILT_CFG_REG(i32 %38, i32 %39)
  %41 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %42 = load i64, i64* @ILT_CLI_CDUC, align 8
  %43 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %41, i64 %42
  %44 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* @QM, align 4
  %47 = load i32, i32* @FIRST_ILT, align 4
  %48 = call i8* @ILT_CFG_REG(i32 %46, i32 %47)
  %49 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %50 = load i64, i64* @ILT_CLI_QM, align 8
  %51 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %49, i64 %50
  %52 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %48, i8** %53, align 8
  %54 = load i32, i32* @QM, align 4
  %55 = load i32, i32* @LAST_ILT, align 4
  %56 = call i8* @ILT_CFG_REG(i32 %54, i32 %55)
  %57 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %58 = load i64, i64* @ILT_CLI_QM, align 8
  %59 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %57, i64 %58
  %60 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* @QM, align 4
  %63 = load i32, i32* @P_SIZE, align 4
  %64 = call i8* @ILT_CFG_REG(i32 %62, i32 %63)
  %65 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %66 = load i64, i64* @ILT_CLI_QM, align 8
  %67 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %65, i64 %66
  %68 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i8* %64, i8** %69, align 8
  %70 = load i32, i32* @TM, align 4
  %71 = load i32, i32* @FIRST_ILT, align 4
  %72 = call i8* @ILT_CFG_REG(i32 %70, i32 %71)
  %73 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %74 = load i64, i64* @ILT_CLI_TM, align 8
  %75 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %73, i64 %74
  %76 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %72, i8** %77, align 8
  %78 = load i32, i32* @TM, align 4
  %79 = load i32, i32* @LAST_ILT, align 4
  %80 = call i8* @ILT_CFG_REG(i32 %78, i32 %79)
  %81 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %82 = load i64, i64* @ILT_CLI_TM, align 8
  %83 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %81, i64 %82
  %84 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %80, i8** %85, align 8
  %86 = load i32, i32* @TM, align 4
  %87 = load i32, i32* @P_SIZE, align 4
  %88 = call i8* @ILT_CFG_REG(i32 %86, i32 %87)
  %89 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %90 = load i64, i64* @ILT_CLI_TM, align 8
  %91 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %89, i64 %90
  %92 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* %88, i8** %93, align 8
  %94 = load i32, i32* @SRC, align 4
  %95 = load i32, i32* @FIRST_ILT, align 4
  %96 = call i8* @ILT_CFG_REG(i32 %94, i32 %95)
  %97 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %98 = load i64, i64* @ILT_CLI_SRC, align 8
  %99 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %97, i64 %98
  %100 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i8* %96, i8** %101, align 8
  %102 = load i32, i32* @SRC, align 4
  %103 = load i32, i32* @LAST_ILT, align 4
  %104 = call i8* @ILT_CFG_REG(i32 %102, i32 %103)
  %105 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %106 = load i64, i64* @ILT_CLI_SRC, align 8
  %107 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %105, i64 %106
  %108 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i8* %104, i8** %109, align 8
  %110 = load i32, i32* @SRC, align 4
  %111 = load i32, i32* @P_SIZE, align 4
  %112 = call i8* @ILT_CFG_REG(i32 %110, i32 %111)
  %113 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %114 = load i64, i64* @ILT_CLI_SRC, align 8
  %115 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %113, i64 %114
  %116 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i8* %112, i8** %117, align 8
  %118 = load i32, i32* @CDUT, align 4
  %119 = load i32, i32* @FIRST_ILT, align 4
  %120 = call i8* @ILT_CFG_REG(i32 %118, i32 %119)
  %121 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %122 = load i64, i64* @ILT_CLI_CDUT, align 8
  %123 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %121, i64 %122
  %124 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %120, i8** %125, align 8
  %126 = load i32, i32* @CDUT, align 4
  %127 = load i32, i32* @LAST_ILT, align 4
  %128 = call i8* @ILT_CFG_REG(i32 %126, i32 %127)
  %129 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %130 = load i64, i64* @ILT_CLI_CDUT, align 8
  %131 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %129, i64 %130
  %132 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i8* %128, i8** %133, align 8
  %134 = load i32, i32* @CDUT, align 4
  %135 = load i32, i32* @P_SIZE, align 4
  %136 = call i8* @ILT_CFG_REG(i32 %134, i32 %135)
  %137 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %138 = load i64, i64* @ILT_CLI_CDUT, align 8
  %139 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %137, i64 %138
  %140 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i8* %136, i8** %141, align 8
  %142 = load i32, i32* @TSDM, align 4
  %143 = load i32, i32* @FIRST_ILT, align 4
  %144 = call i8* @ILT_CFG_REG(i32 %142, i32 %143)
  %145 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %146 = load i64, i64* @ILT_CLI_TSDM, align 8
  %147 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %145, i64 %146
  %148 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i8* %144, i8** %149, align 8
  %150 = load i32, i32* @TSDM, align 4
  %151 = load i32, i32* @LAST_ILT, align 4
  %152 = call i8* @ILT_CFG_REG(i32 %150, i32 %151)
  %153 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %154 = load i64, i64* @ILT_CLI_TSDM, align 8
  %155 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %153, i64 %154
  %156 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i8* %152, i8** %157, align 8
  %158 = load i32, i32* @TSDM, align 4
  %159 = load i32, i32* @P_SIZE, align 4
  %160 = call i8* @ILT_CFG_REG(i32 %158, i32 %159)
  %161 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %4, align 8
  %162 = load i64, i64* @ILT_CLI_TSDM, align 8
  %163 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %161, i64 %162
  %164 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i8* %160, i8** %165, align 8
  store i64 0, i64* %6, align 8
  br label %166

166:                                              ; preds = %183, %18
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @ILT_CLI_MAX, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %172 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %171, i32 0, i32 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %177 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %176, i32 0, i32 3
  %178 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %178, i64 %179
  %181 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i32 %175, i32* %182, align 8
  br label %183

183:                                              ; preds = %170
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %166

186:                                              ; preds = %166
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %188 = call i32 @TYPE0_TASK_CXT_SIZE(%struct.ecore_hwfn* %187)
  %189 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %190 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %188, i32* %192, align 4
  %193 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %194 = call i32 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn* %193)
  %195 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %196 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %194, i32* %198, align 4
  %199 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %200 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = icmp ne %struct.TYPE_9__* %203, null
  br i1 %204, label %205, label %215

205:                                              ; preds = %186
  %206 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %207 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %214 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %205, %186
  %216 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %217 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %216, i32 0, i32 0
  %218 = call i32 @OSAL_MUTEX_INIT(i32* %217)
  %219 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %5, align 8
  %220 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %221 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %220, i32 0, i32 0
  store %struct.ecore_cxt_mngr* %219, %struct.ecore_cxt_mngr** %221, align 8
  %222 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %215, %14
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.ecore_cxt_mngr* @OSAL_ZALLOC(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i8* @ILT_CFG_REG(i32, i32) #1

declare dso_local i32 @TYPE0_TASK_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @TYPE1_TASK_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_MUTEX_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
