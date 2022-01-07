; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.mvs_controller = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i64, i32, i32* }
%struct.TYPE_5__ = type { i8*, i32, i32, i32 }

@mvs_ids = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ccc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cccc\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Gen-%s, %d %sGbps ports, Port Multiplier %s%s\0A\00", align 1
@MVS_Q_GENI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@MVS_Q_GENII = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"IIe\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"not supported\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"supported\00", align 1
@MVS_Q_GENIIE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" with FBS\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"MVS controller lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SATA_PHYCFG_OFS = common dso_local global i64 0, align 8
@MVS_Q_SOC65 = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"I/O memory addresses\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"mvsch\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to add channel device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mvs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mvs_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.mvs_controller* @device_get_softc(i32* %11)
  store %struct.mvs_controller* %12, %struct.mvs_controller** %4, align 8
  %13 = call i32 @soc_id(i64* %9, i64* %10)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %16 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %15, i32 0, i32 8
  store i32* %14, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp sgt i64 %40, %41
  br label %43

43:                                               ; preds = %34, %25
  %44 = phi i1 [ true, %25 ], [ %42, %34 ]
  br label %45

45:                                               ; preds = %43, %17
  %46 = phi i1 [ false, %17 ], [ %44, %43 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %17

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %58 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %66 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %68 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @device_get_name(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @device_get_unit(i32* %71)
  %73 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %74 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %73, i32 0, i32 2
  %75 = call i32 @resource_int_value(i32 %70, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %74)
  %76 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %77 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %76, i32 0, i32 3
  store i32 8, i32* %77, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @device_get_name(i32* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @device_get_unit(i32* %80)
  %82 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %83 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %82, i32 0, i32 3
  %84 = call i32 @resource_int_value(i32 %79, i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  %85 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %86 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %50
  %90 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %91 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89, %50
  %95 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %96 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %98 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %101 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 100000
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %106 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %105, i32 0, i32 2
  store i32 100000, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %110 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MVS_Q_GENI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %125

116:                                              ; preds = %107
  %117 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %118 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MVS_Q_GENII, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %125

125:                                              ; preds = %116, %115
  %126 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %115 ], [ %124, %116 ]
  %127 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %128 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %131 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MVS_Q_GENI, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %138 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %139 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MVS_Q_GENI, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %146 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %147 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MVS_Q_GENIIE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %154 = call i32 (i32*, i8*, ...) @device_printf(i32* %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32 %129, i8* %137, i8* %145, i8* %153)
  %155 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %156 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %155, i32 0, i32 7
  %157 = load i32, i32* @MTX_DEF, align 4
  %158 = call i32 @mtx_init(i32* %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 %157)
  %159 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %160 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* @SYS_RES_MEMORY, align 4
  %163 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %164 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %163, i32 0, i32 6
  %165 = load i32, i32* @RF_ACTIVE, align 4
  %166 = call i32 @bus_alloc_resource_any(i32* %161, i32 %162, i64* %164, i32 %165)
  %167 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %168 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = icmp ne i32 %166, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %125
  %171 = load i32, i32* @ENXIO, align 4
  store i32 %171, i32* %2, align 4
  br label %299

172:                                              ; preds = %125
  %173 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %174 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @PORT_BASE(i32 0)
  %177 = load i64, i64* @SATA_PHYCFG_OFS, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i64 @ATA_INL(i32 %175, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %172
  %182 = load i32, i32* @MVS_Q_SOC65, align 4
  %183 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %184 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %172
  %188 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %189 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @rman_get_start(i32 %190)
  %192 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %193 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  store i32 %191, i32* %194, align 8
  %195 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %196 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @rman_get_end(i32 %197)
  %199 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %200 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* @RMAN_ARRAY, align 4
  %203 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %204 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 8
  %206 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %207 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %208, align 8
  %209 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %210 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %209, i32 0, i32 4
  %211 = call i32 @rman_init(%struct.TYPE_5__* %210)
  store i32 %211, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %187
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* @SYS_RES_MEMORY, align 4
  %216 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %217 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %220 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @bus_release_resource(i32* %214, i32 %215, i64 %218, i32 %221)
  %223 = load i32, i32* %6, align 4
  store i32 %223, i32* %2, align 4
  br label %299

224:                                              ; preds = %187
  %225 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %226 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %225, i32 0, i32 4
  %227 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %228 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @rman_get_start(i32 %229)
  %231 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %232 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @rman_get_end(i32 %233)
  %235 = call i32 @rman_manage_region(%struct.TYPE_5__* %226, i32 %230, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %224
  %238 = load i32*, i32** %3, align 8
  %239 = load i32, i32* @SYS_RES_MEMORY, align 4
  %240 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %241 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %244 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @bus_release_resource(i32* %238, i32 %239, i64 %242, i32 %245)
  %247 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %248 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %247, i32 0, i32 4
  %249 = call i32 @rman_fini(%struct.TYPE_5__* %248)
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %2, align 4
  br label %299

251:                                              ; preds = %224
  %252 = load i32*, i32** %3, align 8
  %253 = call i32 @mvs_ctlr_setup(i32* %252)
  %254 = load i32*, i32** %3, align 8
  %255 = call i64 @mvs_setup_interrupt(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %251
  %258 = load i32*, i32** %3, align 8
  %259 = load i32, i32* @SYS_RES_MEMORY, align 4
  %260 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %261 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %264 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @bus_release_resource(i32* %258, i32 %259, i64 %262, i32 %265)
  %267 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %268 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %267, i32 0, i32 4
  %269 = call i32 @rman_fini(%struct.TYPE_5__* %268)
  %270 = load i32, i32* @ENXIO, align 4
  store i32 %270, i32* %2, align 4
  br label %299

271:                                              ; preds = %251
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %293, %271
  %273 = load i32, i32* %7, align 4
  %274 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %275 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %272
  %279 = load i32*, i32** %3, align 8
  %280 = call i32* @device_add_child(i32* %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  store i32* %280, i32** %5, align 8
  %281 = load i32*, i32** %5, align 8
  %282 = icmp eq i32* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i32*, i32** %3, align 8
  %285 = call i32 (i32*, i8*, ...) @device_printf(i32* %284, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  br label %292

286:                                              ; preds = %278
  %287 = load i32*, i32** %5, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = call i32 @device_set_ivars(i32* %287, i8* %290)
  br label %292

292:                                              ; preds = %286, %283
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %7, align 4
  br label %272

296:                                              ; preds = %272
  %297 = load i32*, i32** %3, align 8
  %298 = call i32 @bus_generic_attach(i32* %297)
  store i32 0, i32* %2, align 4
  br label %299

299:                                              ; preds = %296, %257, %237, %213, %170
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32*) #1

declare dso_local i32 @soc_id(i64*, i64*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i64*, i32) #1

declare dso_local i64 @ATA_INL(i32, i64) #1

declare dso_local i64 @PORT_BASE(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @rman_get_end(i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i64, i32) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_5__*) #1

declare dso_local i32 @mvs_ctlr_setup(i32*) #1

declare dso_local i64 @mvs_setup_interrupt(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
