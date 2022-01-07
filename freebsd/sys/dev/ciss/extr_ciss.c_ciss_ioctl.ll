; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.ciss_softc = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%union.ciss_statrequest = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ENOIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CISS_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown ioctl 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CCISS_GETPCIINFO:   0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CCISS_GETINTINFO:   0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CCISS_SETINTINFO:   0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CCISS_GETNODENAME:  0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"CCISS_SETNODENAME:  0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"CCISS_GETHEARTBEAT: 0x%lx\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"CCISS_GETBUSTYPES:  0x%lx\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"CCISS_GETFIRMVER:   0x%lx\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"CCISS_GETDRIVERVER: 0x%lx\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"CCISS_REVALIDVOLS:  0x%lx\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"CCISS_PASSTHRU:     0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ciss_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ciss_softc*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.ciss_statrequest*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %13, align 8
  %24 = call i32 @debug_called(i32 1)
  %25 = load %struct.cdev*, %struct.cdev** %6, align 8
  %26 = getelementptr inbounds %struct.cdev, %struct.cdev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ciss_softc*
  store %struct.ciss_softc* %28, %struct.ciss_softc** %11, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %30 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %213 [
    i32 135, label %33
    i32 136, label %53
    i32 138, label %80
    i32 131, label %97
    i32 137, label %132
    i32 130, label %141
    i32 139, label %156
    i32 142, label %164
    i32 140, label %172
    i32 141, label %181
    i32 132, label %185
    i32 133, label %186
    i32 134, label %209
  ]

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to %union.ciss_statrequest*
  store %union.ciss_statrequest* %35, %union.ciss_statrequest** %16, align 8
  %36 = load %union.ciss_statrequest*, %union.ciss_statrequest** %16, align 8
  %37 = bitcast %union.ciss_statrequest* %36 to i64*
  %38 = load i64, i64* %37, align 8
  switch i64 %38, label %50 [
    i64 129, label %39
    i64 128, label %39
  ]

39:                                               ; preds = %33, %33
  %40 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %41 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load %union.ciss_statrequest*, %union.ciss_statrequest** %16, align 8
  %44 = bitcast %union.ciss_statrequest* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load %union.ciss_statrequest*, %union.ciss_statrequest** %16, align 8
  %48 = bitcast %union.ciss_statrequest* %47 to i32*
  %49 = call i32 @bcopy(i32* %46, i32* %48, i32 4)
  br label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @ENOIOCTL, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %39
  br label %228

53:                                               ; preds = %5
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %17, align 8
  %56 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %57 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_get_bus(i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %63 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pci_get_slot(i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %69 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pci_get_subvendor(i32 %70)
  %72 = shl i32 %71, 16
  %73 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %74 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pci_get_subdevice(i32 %75)
  %77 = or i32 %72, %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %228

80:                                               ; preds = %5
  %81 = load i64, i64* %8, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %18, align 8
  %83 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %84 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %91 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %228

97:                                               ; preds = %5
  %98 = load i64, i64* %8, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %19, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %15, align 4
  br label %228

111:                                              ; preds = %104, %97
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %116 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %123 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 8
  %126 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %127 = call i32 @ciss_update_config(%struct.ciss_softc* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i32, i32* @EIO, align 4
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %111
  br label %228

132:                                              ; preds = %5
  %133 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %134 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = call i32 @bcopy(i32* %137, i32* %139, i32 4)
  br label %228

141:                                              ; preds = %5
  %142 = load i64, i64* %8, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %145 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @bcopy(i32* %143, i32* %148, i32 4)
  %150 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %151 = call i32 @ciss_update_config(%struct.ciss_softc* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* @EIO, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %141
  br label %228

156:                                              ; preds = %5
  %157 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %158 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %157, i32 0, i32 2
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %8, align 8
  %163 = inttoptr i64 %162 to i32*
  store i32 %161, i32* %163, align 4
  br label %228

164:                                              ; preds = %5
  %165 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %166 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %165, i32 0, i32 2
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = inttoptr i64 %170 to i32*
  store i32 %169, i32* %171, align 4
  br label %228

172:                                              ; preds = %5
  %173 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %174 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = inttoptr i64 %178 to i32*
  %180 = call i32 @bcopy(i32* %177, i32* %179, i32 4)
  br label %228

181:                                              ; preds = %5
  %182 = load i32, i32* @CISS_DRIVER_VERSION, align 4
  %183 = load i64, i64* %8, align 8
  %184 = inttoptr i64 %183 to i32*
  store i32 %182, i32* %184, align 4
  br label %228

185:                                              ; preds = %5
  br label %228

186:                                              ; preds = %5
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  store i32 %189, i32* %190, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  store i32 %193, i32* %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i32 %197, i32* %198, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32 %201, i32* %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i32*
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32* %207, i32** %208, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %12, align 8
  br label %209

209:                                              ; preds = %5, %186
  %210 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %212 = call i32 @ciss_user_command(%struct.ciss_softc* %210, %struct.TYPE_13__* %211)
  store i32 %212, i32* %15, align 4
  br label %228

213:                                              ; preds = %5
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @debug(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 136)
  %217 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 138)
  %218 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 131)
  %219 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 137)
  %220 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 130)
  %221 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 139)
  %222 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 142)
  %223 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 140)
  %224 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 141)
  %225 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 132)
  %226 = call i32 @debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 134)
  %227 = load i32, i32* @ENOIOCTL, align 4
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %213, %209, %185, %181, %172, %164, %156, %155, %132, %131, %109, %80, %53, %52
  %229 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %230 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %229, i32 0, i32 0
  %231 = call i32 @mtx_unlock(i32* %230)
  %232 = load i32, i32* %15, align 4
  ret i32 %232
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @ciss_update_config(%struct.ciss_softc*) #1

declare dso_local i32 @ciss_user_command(%struct.ciss_softc*, %struct.TYPE_13__*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
