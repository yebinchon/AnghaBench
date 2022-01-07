; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32, i32 }
%struct.mwl_hal_priv = type { i32, i32, i32, i32, i32, %struct.mwl_hal, i32, i32, %struct.TYPE_6__, %struct.mwl_hal_vap*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mwl_hal_vap = type { i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MWL_BASTREAMS_MAX = common dso_local global i32 0, align 4
@ba2qid = common dso_local global i64* null, align 8
@MWL_BAQID_MAX = common dso_local global i64 0, align 8
@qid2ba = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"unexpected BA tx qid %d for stream %d\0A\00", align 1
@MWL_HAL_AP = common dso_local global i8* null, align 8
@WL_MAC_TYPE_PRIMARY_AP = common dso_local global i32 0, align 4
@MWL_MBSS_AP_MAX = common dso_local global i32 0, align 4
@WL_MAC_TYPE_SECONDARY_AP = common dso_local global i32 0, align 4
@MWL_HAL_STA = common dso_local global i8* null, align 8
@WL_MAC_TYPE_PRIMARY_CLIENT = common dso_local global i32 0, align 4
@MWL_MBSS_MAX = common dso_local global i32 0, align 4
@WL_MAC_TYPE_SECONDARY_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s_hal\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MWL_CMDBUF_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to allocate memory for cmd tag, error %u\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"unable to allocate memory for cmd buffer, error %u\0A\00", align 1
@mwl_hal_load_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to load cmd buffer, error %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mwl_hal* @mwl_hal_attach(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mwl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mwl_hal_priv*, align 8
  %13 = alloca %struct.mwl_hal_vap*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.mwl_hal_priv* @malloc(i32 64, i32 %16, i32 %19)
  store %struct.mwl_hal_priv* %20, %struct.mwl_hal_priv** %12, align 8
  %21 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %22 = icmp eq %struct.mwl_hal_priv* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.mwl_hal* null, %struct.mwl_hal** %6, align 8
  br label %299

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %27 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %30 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.mwl_hal, %struct.mwl_hal* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %34 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.mwl_hal, %struct.mwl_hal* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %101, %24
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @MWL_BASTREAMS_MAX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %104

40:                                               ; preds = %36
  %41 = load i64*, i64** @ba2qid, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %47 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %46, i32 0, i32 10
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %45, i64* %53, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %56 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %55, i32 0, i32 10
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  %62 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %63 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %62, i32 0, i32 10
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MWL_BAQID_MAX, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %40
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** @qid2ba, align 8
  %76 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %77 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %76, i32 0, i32 10
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %75, i64 %84
  store i32 %74, i32* %85, align 4
  br label %100

86:                                               ; preds = %40
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %89 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %88, i32 0, i32 10
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %15, align 4
  %99 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %86, %73
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %36

104:                                              ; preds = %36
  store i32 0, i32* %15, align 4
  %105 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %106 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %105, i32 0, i32 9
  %107 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %107, i64 %109
  store %struct.mwl_hal_vap* %110, %struct.mwl_hal_vap** %13, align 8
  %111 = load i8*, i8** @MWL_HAL_AP, align 8
  %112 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %113 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @WL_MAC_TYPE_PRIMARY_AP, align 4
  %115 = call i8* @htole16(i32 %114)
  %116 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %117 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %119 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %143, %104
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @MWL_MBSS_AP_MAX, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %128 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %127, i32 0, i32 9
  %129 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %129, i64 %131
  store %struct.mwl_hal_vap* %132, %struct.mwl_hal_vap** %13, align 8
  %133 = load i8*, i8** @MWL_HAL_AP, align 8
  %134 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %135 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @WL_MAC_TYPE_SECONDARY_AP, align 4
  %137 = call i8* @htole16(i32 %136)
  %138 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %139 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %142 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %126
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %148 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %147, i32 0, i32 9
  %149 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %149, i64 %151
  store %struct.mwl_hal_vap* %152, %struct.mwl_hal_vap** %13, align 8
  %153 = load i8*, i8** @MWL_HAL_STA, align 8
  %154 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %155 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @WL_MAC_TYPE_PRIMARY_CLIENT, align 4
  %157 = call i8* @htole16(i32 %156)
  %158 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %159 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %162 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %186, %146
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @MWL_MBSS_MAX, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %165
  %170 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %171 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %170, i32 0, i32 9
  %172 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %172, i64 %174
  store %struct.mwl_hal_vap* %175, %struct.mwl_hal_vap** %13, align 8
  %176 = load i8*, i8** @MWL_HAL_STA, align 8
  %177 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %178 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* @WL_MAC_TYPE_SECONDARY_CLIENT, align 4
  %180 = call i8* @htole16(i32 %179)
  %181 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %182 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %13, align 8
  %185 = getelementptr inbounds %struct.mwl_hal_vap, %struct.mwl_hal_vap* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %169
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %165

189:                                              ; preds = %165
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %192 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %195 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i8* @device_get_nameunit(i32 %197)
  %199 = call i32 @snprintf(i32 %196, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %198)
  %200 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %201 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %200, i32 0, i32 1
  %202 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %203 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @MTX_DEF, align 4
  %206 = call i32 @mtx_init(i32* %201, i32 %204, i32* null, i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @PAGE_SIZE, align 4
  %209 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %210 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %211 = load i32, i32* @MWL_CMDBUF_SIZE, align 4
  %212 = load i32, i32* @MWL_CMDBUF_SIZE, align 4
  %213 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %214 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %215 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %214, i32 0, i32 2
  %216 = call i32 @bus_dma_tag_create(i32 %207, i32 %208, i32 0, i32 %209, i32 %210, i32* null, i32* null, i32 %211, i32 1, i32 %212, i32 %213, i32* null, i32* null, i32* %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %189
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %220, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %221)
  br label %292

223:                                              ; preds = %189
  %224 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %225 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %228 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %227, i32 0, i32 4
  %229 = bitcast i32* %228 to i8**
  %230 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %231 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %234 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %233, i32 0, i32 3
  %235 = call i32 @bus_dmamem_alloc(i32 %226, i8** %229, i32 %232, i32* %234)
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %223
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %14, align 4
  %241 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %239, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  br label %287

242:                                              ; preds = %223
  %243 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %244 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %247 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %250 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MWL_CMDBUF_SIZE, align 4
  %253 = load i32, i32* @mwl_hal_load_cb, align 4
  %254 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %255 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %254, i32 0, i32 6
  %256 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %257 = call i32 @bus_dmamap_load(i32 %245, i32 %248, i32 %251, i32 %252, i32 %253, i32* %255, i32 %256)
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %242
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %261, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  br label %276

264:                                              ; preds = %242
  %265 = load i32, i32* %8, align 4
  switch i32 %265, label %272 [
    i32 10754, label %266
    i32 10755, label %266
    i32 10760, label %266
    i32 10763, label %266
    i32 10788, label %266
    i32 10756, label %269
  ]

266:                                              ; preds = %264, %264, %264, %264, %264
  %267 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %268 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %267, i32 0, i32 0
  store i32 1090416823, i32* %268, align 8
  br label %273

269:                                              ; preds = %264
  %270 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %271 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %270, i32 0, i32 0
  store i32 1090285751, i32* %271, align 8
  br label %273

272:                                              ; preds = %264
  br label %273

273:                                              ; preds = %272, %269, %266
  %274 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %275 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %274, i32 0, i32 5
  store %struct.mwl_hal* %275, %struct.mwl_hal** %6, align 8
  br label %299

276:                                              ; preds = %260
  %277 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %278 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %281 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %284 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @bus_dmamem_free(i32 %279, i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %276, %238
  %288 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %289 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @bus_dma_tag_destroy(i32 %290)
  br label %292

292:                                              ; preds = %287, %219
  %293 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %294 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %293, i32 0, i32 1
  %295 = call i32 @mtx_destroy(i32* %294)
  %296 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %12, align 8
  %297 = load i32, i32* @M_DEVBUF, align 4
  %298 = call i32 @free(%struct.mwl_hal_priv* %296, i32 %297)
  store %struct.mwl_hal* null, %struct.mwl_hal** %6, align 8
  br label %299

299:                                              ; preds = %292, %273, %23
  %300 = load %struct.mwl_hal*, %struct.mwl_hal** %6, align 8
  ret %struct.mwl_hal* %300
}

declare dso_local %struct.mwl_hal_priv* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.mwl_hal_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
