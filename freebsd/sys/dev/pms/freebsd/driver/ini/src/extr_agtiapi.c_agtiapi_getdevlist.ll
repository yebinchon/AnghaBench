; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_getdevlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_getdevlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.agtiapi_softc = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i32, i32, i32* }

@IOCTL_CALL_INVALID_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"agtiapi_getdevlist: Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"agtiapi_getdevlist: MaxDeviceCount: %d > Requested device length: %d\0A\00", align 1
@IOCTL_CALL_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"agtiapi_getdevlist: portCount %d\0A\00", align 1
@TEMP2 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"agtiapi_getdevlist: failed to allocate memory\0A\00", align 1
@IOCTL_ERR_STATUS_INTERNAL_ERROR = common dso_local global i8* null, align 8
@DISCOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"agtiapi_getdevlist: DISCOVERY_IN_PROGRESS on portal %d\0A\00", align 1
@agNULL = common dso_local global %struct.TYPE_18__* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"agtiapi_getdevlist: devicetype %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"agtiapi_getdevlist: linkrate %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"agtiapi_getdevlist: phyID %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"agtiapi_getdevlist: addresshi %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"agtiapi_getdevlist: addresslo %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"agtiapi_getdevlist: pDeviceData %p or pDeviceInfo %p is NULL %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"agtiapi_getdevlist: Exit RealDeviceCount = %d\0A\00", align 1
@IOCTL_CALL_SUCCESS = common dso_local global i32 0, align 4
@IOCTL_ERR_STATUS_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agtiapi_getdevlist(%struct.agtiapi_softc* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agtiapi_softc*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.agtiapi_softc* %0, %struct.agtiapi_softc** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %27 = load i32, i32* @IOCTL_CALL_INVALID_CODE, align 4
  store i32 %27, i32* %18, align 4
  store i32* null, i32** %20, align 8
  %28 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* @IOCTL_CALL_FAIL, align 4
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %40, %2
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @AG_ALIGNSIZE(i32 %59, i32 8)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @TEMP2, align 4
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = call %struct.TYPE_18__** @malloc(i32 %65, i32 %66, i32 %67)
  store %struct.TYPE_18__** %68, %struct.TYPE_18__*** %10, align 8
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %70 = icmp eq %struct.TYPE_18__** %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %50
  %72 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @IOCTL_CALL_FAIL, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i8*, i8** @IOCTL_ERR_STATUS_INTERNAL_ERROR, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %3, align 4
  br label %331

78:                                               ; preds = %50
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @osti_memset(%struct.TYPE_18__** %79, i32 0, i32 %80)
  %82 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %83 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %82, i32 0, i32 3
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 0
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %19, align 8
  %86 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %87 = bitcast %struct.TYPE_18__** %86 to i32*
  store i32* %87, i32** %20, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %130, %78
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %91 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %88
  %95 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %96 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32*, i32** %20, align 8
  %101 = bitcast i32* %100 to %struct.TYPE_18__**
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @tiINIGetDeviceHandlesForWinIOCTL(i32* %96, i32* %99, %struct.TYPE_18__** %101, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @DISCOVERY_IN_PROGRESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %94
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %111 = load i32, i32* @TEMP2, align 4
  %112 = call i32 @free(%struct.TYPE_18__** %110, i32 %111)
  %113 = load i32, i32* @IOCTL_CALL_FAIL, align 4
  store i32 %113, i32* %18, align 4
  %114 = load i8*, i8** @IOCTL_ERR_STATUS_INTERNAL_ERROR, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %3, align 4
  br label %331

118:                                              ; preds = %94
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 8
  %125 = load i32*, i32** %20, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 %124
  store i32* %126, i32** %20, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 1
  store %struct.TYPE_20__* %134, %struct.TYPE_20__** %19, align 8
  br label %88

135:                                              ; preds = %88
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %141, %135
  store i32 0, i32* %15, align 4
  %146 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  store %struct.TYPE_18__** %146, %struct.TYPE_18__*** %11, align 8
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %305, %145
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %150 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %308

153:                                              ; preds = %147
  %154 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %154, i64 %156
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %12, align 8
  %159 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %159, i64 %161
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** @agNULL, align 8
  %165 = icmp ne %struct.TYPE_18__* %163, %164
  br i1 %165, label %166, label %304

166:                                              ; preds = %153
  %167 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %167, i64 %169
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 10
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %9, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 64, %176
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = bitcast i32* %178 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %7, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** @agNULL, align 8
  %182 = icmp ne %struct.TYPE_18__* %180, %181
  br i1 %182, label %183, label %296

183:                                              ; preds = %166
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** @agNULL, align 8
  %186 = icmp ne %struct.TYPE_18__* %184, %185
  br i1 %186, label %187, label %296

187:                                              ; preds = %183
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 9
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @osti_memcpy(i32* %189, i32 %193, i32 4)
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @osti_memcpy(i32* %196, i32 %200, i32 4)
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 9
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 48
  %207 = ashr i32 %206, 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 9
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, 15
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %228 = ptrtoint %struct.TYPE_18__* %227 to i64
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 6
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %260

235:                                              ; preds = %187
  %236 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %4, align 8
  %237 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %236, i32 0, i32 2
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @tiIniGetDirectSataSasAddr(i32* %237, i32 %240, i32** %21, i32** %22)
  %242 = load i32*, i32** %21, align 8
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @DMA_BEBIT32_TO_BIT32(i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i32*, i32** %22, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @DMA_BEBIT32_TO_BIT32(i32 %249)
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr i8, i8* %250, i64 %254
  %256 = getelementptr i8, i8* %255, i64 16
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %275

260:                                              ; preds = %187
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i8* @DMA_BEBIT32_TO_BIT32(i32 %263)
  %265 = ptrtoint i8* %264 to i32
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @DMA_BEBIT32_TO_BIT32(i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %260, %235
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %278)
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %282)
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %286)
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %290)
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %294)
  br label %301

296:                                              ; preds = %183, %166
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %299 = load i32, i32* %13, align 4
  %300 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_18__* %297, %struct.TYPE_18__* %298, i32 %299)
  br label %301

301:                                              ; preds = %296, %275
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %15, align 4
  br label %304

304:                                              ; preds = %301, %153
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %147

308:                                              ; preds = %147
  %309 = load i32, i32* %15, align 4
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %15, align 4
  %313 = call i32 (i8*, ...) @AGTIAPI_PRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %312)
  %314 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %315 = icmp ne %struct.TYPE_18__** %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %318 = load i32, i32* @TEMP2, align 4
  %319 = call i32 @free(%struct.TYPE_18__** %317, i32 %318)
  br label %320

320:                                              ; preds = %316, %308
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* @IOCTL_CALL_FAIL, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load i32, i32* @IOCTL_CALL_SUCCESS, align 4
  store i32 %325, i32* %18, align 4
  br label %326

326:                                              ; preds = %324, %320
  %327 = load i8*, i8** @IOCTL_ERR_STATUS_OK, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  store i8* %327, i8** %329, align 8
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %3, align 4
  br label %331

331:                                              ; preds = %326, %107, %71
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i32 @AGTIAPI_PRINTK(i8*, ...) #1

declare dso_local i32 @AG_ALIGNSIZE(i32, i32) #1

declare dso_local %struct.TYPE_18__** @malloc(i32, i32, i32) #1

declare dso_local i32 @osti_memset(%struct.TYPE_18__**, i32, i32) #1

declare dso_local i32 @tiINIGetDeviceHandlesForWinIOCTL(i32*, i32*, %struct.TYPE_18__**, i32) #1

declare dso_local i32 @free(%struct.TYPE_18__**, i32) #1

declare dso_local i32 @osti_memcpy(i32*, i32, i32) #1

declare dso_local i32 @tiIniGetDirectSataSasAddr(i32*, i32, i32**, i32**) #1

declare dso_local i8* @DMA_BEBIT32_TO_BIT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
