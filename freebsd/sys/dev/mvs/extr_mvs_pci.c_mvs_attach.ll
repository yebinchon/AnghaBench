; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.mvs_controller = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32* }
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
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @pci_get_devid(i32* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @pci_get_revid(i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %19 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %18, i32 0, i32 8
  store i32* %17, i32** %19, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %50, %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sgt i64 %43, %44
  br label %46

46:                                               ; preds = %37, %28
  %47 = phi i1 [ true, %28 ], [ %45, %37 ]
  br label %48

48:                                               ; preds = %46, %20
  %49 = phi i1 [ false, %20 ], [ %47, %46 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %20

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %61 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvs_ids, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %69 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %71 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @device_get_name(i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @device_get_unit(i32* %74)
  %76 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %77 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %76, i32 0, i32 2
  %78 = call i32 @resource_int_value(i32 %73, i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %77)
  %79 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %80 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %79, i32 0, i32 3
  store i32 8, i32* %80, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @device_get_name(i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @device_get_unit(i32* %83)
  %85 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %86 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %85, i32 0, i32 3
  %87 = call i32 @resource_int_value(i32 %82, i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %86)
  %88 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %89 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %53
  %93 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %94 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %53
  %98 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %99 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %101 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %104 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 100000
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %109 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %108, i32 0, i32 2
  store i32 100000, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %113 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MVS_Q_GENI, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %128

119:                                              ; preds = %110
  %120 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %121 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MVS_Q_GENII, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %128

128:                                              ; preds = %119, %118
  %129 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %118 ], [ %127, %119 ]
  %130 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %131 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %134 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MVS_Q_GENI, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %141 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %142 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MVS_Q_GENI, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %149 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %150 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MVS_Q_GENIIE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %157 = call i32 (i32*, i8*, ...) @device_printf(i32* %111, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %129, i32 %132, i8* %140, i8* %148, i8* %156)
  %158 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %159 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %158, i32 0, i32 7
  %160 = load i32, i32* @MTX_DEF, align 4
  %161 = call i32 @mtx_init(i32* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 %160)
  %162 = call i32 @PCIR_BAR(i32 0)
  %163 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %164 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @SYS_RES_MEMORY, align 4
  %167 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %168 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %167, i32 0, i32 6
  %169 = load i32, i32* @RF_ACTIVE, align 4
  %170 = call i32 @bus_alloc_resource_any(i32* %165, i32 %166, i32* %168, i32 %169)
  %171 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %172 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = icmp ne i32 %170, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %128
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %2, align 4
  br label %290

176:                                              ; preds = %128
  %177 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %178 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @rman_get_start(i32 %179)
  %181 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %182 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 8
  %184 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %185 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @rman_get_end(i32 %186)
  %188 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %189 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* @RMAN_ARRAY, align 4
  %192 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %193 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 8
  %195 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %196 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %197, align 8
  %198 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %199 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %198, i32 0, i32 4
  %200 = call i32 @rman_init(%struct.TYPE_5__* %199)
  store i32 %200, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %176
  %203 = load i32*, i32** %3, align 8
  %204 = load i32, i32* @SYS_RES_MEMORY, align 4
  %205 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %206 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %209 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @bus_release_resource(i32* %203, i32 %204, i32 %207, i32 %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %290

213:                                              ; preds = %176
  %214 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %215 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %214, i32 0, i32 4
  %216 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %217 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @rman_get_start(i32 %218)
  %220 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %221 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @rman_get_end(i32 %222)
  %224 = call i32 @rman_manage_region(%struct.TYPE_5__* %215, i32 %219, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %213
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* @SYS_RES_MEMORY, align 4
  %229 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %230 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %233 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @bus_release_resource(i32* %227, i32 %228, i32 %231, i32 %234)
  %236 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %237 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %236, i32 0, i32 4
  %238 = call i32 @rman_fini(%struct.TYPE_5__* %237)
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %290

240:                                              ; preds = %213
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @pci_enable_busmaster(i32* %241)
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 @mvs_ctlr_setup(i32* %243)
  %245 = load i32*, i32** %3, align 8
  %246 = call i64 @mvs_setup_interrupt(i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %240
  %249 = load i32*, i32** %3, align 8
  %250 = load i32, i32* @SYS_RES_MEMORY, align 4
  %251 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %252 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %255 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @bus_release_resource(i32* %249, i32 %250, i32 %253, i32 %256)
  %258 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %259 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %258, i32 0, i32 4
  %260 = call i32 @rman_fini(%struct.TYPE_5__* %259)
  %261 = load i32, i32* @ENXIO, align 4
  store i32 %261, i32* %2, align 4
  br label %290

262:                                              ; preds = %240
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %284, %262
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %266 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %263
  %270 = load i32*, i32** %3, align 8
  %271 = call i32* @device_add_child(i32* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  store i32* %271, i32** %5, align 8
  %272 = load i32*, i32** %5, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load i32*, i32** %3, align 8
  %276 = call i32 (i32*, i8*, ...) @device_printf(i32* %275, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  br label %283

277:                                              ; preds = %269
  %278 = load i32*, i32** %5, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = call i32 @device_set_ivars(i32* %278, i8* %281)
  br label %283

283:                                              ; preds = %277, %274
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %7, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %7, align 4
  br label %263

287:                                              ; preds = %263
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @bus_generic_attach(i32* %288)
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %287, %248, %226, %202, %174
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32*) #1

declare dso_local i64 @pci_get_devid(i32*) #1

declare dso_local i64 @pci_get_revid(i32*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @rman_get_end(i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_enable_busmaster(i32*) #1

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
