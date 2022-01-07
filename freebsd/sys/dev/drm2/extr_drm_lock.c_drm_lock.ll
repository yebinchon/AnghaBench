; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__*, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_6__ = type { i64 (%struct.drm_device*)* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_file = type { i32, i32, %struct.drm_master* }
%struct.drm_master = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, i32, i32, i32, %struct.drm_file* }
%struct.drm_lock = type { i64, i32 }

@DRM_KERNEL_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%d (pid %d) requests lock (0x%08x), flags = 0x%08x\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@_DRM_STAT_LOCKS = common dso_local global i64 0, align 8
@drm_global_mutex = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"drmlk2\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"has lock\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@drm_notifier = common dso_local global i32 0, align 4
@_DRM_LOCK_QUIESCENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%d waiting for DMA quiescent\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_lock(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lock*, align 8
  %9 = alloca %struct.drm_master*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_lock*
  store %struct.drm_lock* %12, %struct.drm_lock** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 2
  %15 = load %struct.drm_master*, %struct.drm_master** %14, align 8
  store %struct.drm_master* %15, %struct.drm_master** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %21 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DRM_KERNEL_CONTEXT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* @DRM_CURRENTPID, align 4
  %27 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %28 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %219

33:                                               ; preds = %3
  %34 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %35 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @DRM_CURRENTPID, align 4
  %38 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %39 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %45 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %37, i32 %43, i32 %46)
  %48 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %49 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i32 @mtx_lock(i32* %50)
  %52 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %53 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %58 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %116, %33
  %62 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %63 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @SIGTERM, align 4
  %69 = load i32, i32* @current, align 4
  %70 = call i32 @send_sig(i32 %68, i32 %69, i32 0)
  %71 = load i32, i32* @EINTR, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %117

73:                                               ; preds = %61
  %74 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %75 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %74, i32 0, i32 0
  %76 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %77 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @drm_lock_take(%struct.TYPE_7__* %75, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %73
  %82 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %83 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %84 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store %struct.drm_file* %82, %struct.drm_file** %85, align 8
  %86 = load i32, i32* @jiffies, align 4
  %87 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %88 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 4
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @_DRM_STAT_LOCKS, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @atomic_inc(i32* %94)
  br label %117

96:                                               ; preds = %73
  %97 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %98 = call i32 @DRM_UNLOCK_ASSERT(%struct.drm_device* %97)
  %99 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %100 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* @PCATCH, align 4
  %103 = call i32 @sx_sleep(i32* %101, i32* @drm_global_mutex, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @ERESTART, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load i32, i32* @ERESTARTSYS, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %109, %96
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %117

116:                                              ; preds = %112
  br label %61

117:                                              ; preds = %115, %81, %67
  %118 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %119 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = call i32 @mtx_lock(i32* %120)
  %122 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %123 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %128 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = call i32 @mtx_unlock(i32* %129)
  %131 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %132 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %138 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %133, i8* %137)
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %117
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %4, align 4
  br label %219

143:                                              ; preds = %117
  %144 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %145 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %187, label %148

148:                                              ; preds = %143
  %149 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %150 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %149, i32 0, i32 1
  %151 = call i32 @sigemptyset(i32* %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %153 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %152, i32 0, i32 1
  %154 = load i32, i32* @SIGSTOP, align 4
  %155 = call i32 @sigaddset(i32* %153, i32 %154)
  %156 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %157 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %156, i32 0, i32 1
  %158 = load i32, i32* @SIGTSTP, align 4
  %159 = call i32 @sigaddset(i32* %157, i32 %158)
  %160 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %161 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %160, i32 0, i32 1
  %162 = load i32, i32* @SIGTTIN, align 4
  %163 = call i32 @sigaddset(i32* %161, i32 %162)
  %164 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %165 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %164, i32 0, i32 1
  %166 = load i32, i32* @SIGTTOU, align 4
  %167 = call i32 @sigaddset(i32* %165, i32 %166)
  %168 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %169 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %172 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %175 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %179 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store %struct.TYPE_5__* %177, %struct.TYPE_5__** %180, align 8
  %181 = load i32, i32* @drm_notifier, align 4
  %182 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %183 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %182, i32 0, i32 2
  %184 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %185 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %184, i32 0, i32 1
  %186 = call i32 @block_all_signals(i32 %181, %struct.TYPE_8__* %183, i32* %185)
  br label %187

187:                                              ; preds = %148, %143
  %188 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %189 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %191, align 8
  %193 = icmp ne i64 (%struct.drm_device*)* %192, null
  br i1 %193, label %194, label %218

194:                                              ; preds = %187
  %195 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %196 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @_DRM_LOCK_QUIESCENT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %194
  %202 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %203 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %205, align 8
  %207 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %208 = call i64 %206(%struct.drm_device* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %201
  %211 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %212 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %213)
  %215 = load i32, i32* @EBUSY, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %219

217:                                              ; preds = %201
  br label %218

218:                                              ; preds = %217, %194, %187
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %210, %141, %25
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @drm_lock_take(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @DRM_UNLOCK_ASSERT(%struct.drm_device*) #1

declare dso_local i32 @sx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @block_all_signals(i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
