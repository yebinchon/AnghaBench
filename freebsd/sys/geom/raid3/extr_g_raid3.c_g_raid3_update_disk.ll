; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_update_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_update_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i32, i32, %struct.TYPE_2__, %struct.g_raid3_softc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.g_raid3_softc = type { i32, i32, i32, i32, i32*, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Changing disk %s state from %s to %s.\00", align 1
@G_RAID3_DISK_STATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Wrong disk state (%s, %s).\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Device %s: provider %s detected.\00", align 1
@G_RAID3_DEVICE_STATE_STARTING = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_DEGRADED = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Wrong device state (%s, %s, %s, %s).\00", align 1
@G_RAID3_DISK_FLAG_SYNCHRONIZING = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Device %s: provider %s activated.\00", align 1
@G_RAID3_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Device %s: provider %s is stale.\00", align 1
@G_RAID3_BUMP_SYNCID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Device %s: provider %s disconnected.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Unknown state (%u).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_disk*, i32)* @g_raid3_update_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_update_disk(%struct.g_raid3_disk* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid3_softc*, align 8
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %7 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %6, i32 0, i32 3
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %7, align 8
  store %struct.g_raid3_softc* %8, %struct.g_raid3_softc** %5, align 8
  %9 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %10 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %9, i32 0, i32 5
  %11 = load i32, i32* @SX_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %92, %2
  %14 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %15 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %14)
  %16 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %17 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @g_raid3_disk_state2str(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @g_raid3_disk_state2str(i32 %20)
  %22 = call i32 (i32, i8*, i32, i32, ...) @G_RAID3_DEBUG(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %429 [
    i32 130, label %24
    i32 132, label %94
    i32 129, label %187
    i32 128, label %273
    i32 131, label %344
  ]

24:                                               ; preds = %13
  %25 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %26 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @G_RAID3_DISK_STATE_NONE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %32 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %31)
  %33 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %34 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @g_raid3_disk_state2str(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %30, i8* %38)
  %40 = call i32 (...) @DISK_STATE_CHANGED()
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %43 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %45 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %48 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %47)
  %49 = call i32 (i32, i8*, i32, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %51 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @G_RAID3_DEVICE_STATE_STARTING, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %434

56:                                               ; preds = %24
  %57 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %58 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @G_RAID3_DEVICE_STATE_DEGRADED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %64 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %67 = icmp eq i32 %65, %66
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i1 [ true, %56 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %72 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %75 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @g_raid3_device_state2str(i32 %76)
  %78 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %79 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %78)
  %80 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %81 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @g_raid3_disk_state2str(i32 %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %70, i8* %85)
  %87 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %88 = call i32 @g_raid3_determine_state(%struct.g_raid3_disk* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @G_RAID3_DISK_STATE_NONE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %13

93:                                               ; preds = %68
  br label %434

94:                                               ; preds = %13
  %95 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %96 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @G_RAID3_DEVICE_STATE_DEGRADED, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %102 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %105 = icmp eq i32 %103, %104
  br label %106

106:                                              ; preds = %100, %94
  %107 = phi i1 [ true, %94 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %110 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %113 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @g_raid3_device_state2str(i32 %114)
  %116 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %117 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %116)
  %118 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %119 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @g_raid3_disk_state2str(i32 %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @KASSERT(i32 %108, i8* %123)
  %125 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %126 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 130
  br i1 %128, label %134, label %129

129:                                              ; preds = %106
  %130 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %131 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 128
  br label %134

134:                                              ; preds = %129, %106
  %135 = phi i1 [ true, %106 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %138 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %137)
  %139 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %140 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @g_raid3_disk_state2str(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @KASSERT(i32 %136, i8* %144)
  %146 = call i32 (...) @DISK_STATE_CHANGED()
  %147 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %148 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 128
  br i1 %150, label %151, label %166

151:                                              ; preds = %134
  %152 = load i32, i32* @G_RAID3_DISK_FLAG_SYNCHRONIZING, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %155 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* @G_RAID3_DISK_FLAG_FORCE_SYNC, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %161 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %165 = call i32 @g_raid3_sync_stop(%struct.g_raid3_softc* %164, i32 0)
  br label %166

166:                                              ; preds = %151, %134
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %169 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %171 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  %173 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %174 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  %176 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %177 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %178 = call i32 @g_raid3_update_idle(%struct.g_raid3_softc* %176, %struct.g_raid3_disk* %177)
  %179 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %180 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %179)
  %181 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %182 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %185 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %184)
  %186 = call i32 (i32, i8*, i32, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %183, i32 %185)
  br label %434

187:                                              ; preds = %13
  %188 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %189 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 130
  %192 = zext i1 %191 to i32
  %193 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %194 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %193)
  %195 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %196 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @g_raid3_disk_state2str(i32 %197)
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = call i32 @KASSERT(i32 %192, i8* %200)
  %202 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %203 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @G_RAID3_DEVICE_STATE_DEGRADED, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %187
  %208 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %209 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %212 = icmp eq i32 %210, %211
  br label %213

213:                                              ; preds = %207, %187
  %214 = phi i1 [ true, %187 ], [ %212, %207 ]
  %215 = zext i1 %214 to i32
  %216 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %217 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %220 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @g_raid3_device_state2str(i32 %221)
  %223 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %224 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %223)
  %225 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %226 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @g_raid3_disk_state2str(i32 %227)
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @KASSERT(i32 %215, i8* %230)
  %232 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %233 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %240 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %243 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @g_raid3_device_state2str(i32 %244)
  %246 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %247 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %246)
  %248 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %249 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @g_raid3_disk_state2str(i32 %250)
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = call i32 @KASSERT(i32 %238, i8* %253)
  %255 = call i32 (...) @DISK_STATE_CHANGED()
  %256 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %259 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* %4, align 4
  %263 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %264 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %266 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %265)
  %267 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %268 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %271 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %270)
  %272 = call i32 (i32, i8*, i32, i32, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %269, i32 %271)
  br label %434

273:                                              ; preds = %13
  %274 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %275 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 130
  %278 = zext i1 %277 to i32
  %279 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %280 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %279)
  %281 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %282 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @g_raid3_disk_state2str(i32 %283)
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i8*
  %287 = call i32 @KASSERT(i32 %278, i8* %286)
  %288 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %289 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @G_RAID3_DEVICE_STATE_DEGRADED, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %273
  %294 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %295 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %298 = icmp eq i32 %296, %297
  br label %299

299:                                              ; preds = %293, %273
  %300 = phi i1 [ true, %273 ], [ %298, %293 ]
  %301 = zext i1 %300 to i32
  %302 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %303 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %306 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @g_raid3_device_state2str(i32 %307)
  %309 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %310 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %309)
  %311 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %312 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @g_raid3_disk_state2str(i32 %313)
  %315 = sext i32 %314 to i64
  %316 = inttoptr i64 %315 to i8*
  %317 = call i32 @KASSERT(i32 %301, i8* %316)
  %318 = call i32 (...) @DISK_STATE_CHANGED()
  %319 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %320 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 130
  br i1 %322, label %323, label %330

323:                                              ; preds = %299
  %324 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %327 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %299
  %331 = load i32, i32* %4, align 4
  %332 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %333 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  %334 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %335 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %343

338:                                              ; preds = %330
  %339 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %340 = call i32 @g_raid3_sync_start(%struct.g_raid3_softc* %339)
  %341 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %342 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %341)
  br label %343

343:                                              ; preds = %338, %330
  br label %434

344:                                              ; preds = %13
  %345 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %346 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @G_RAID3_DEVICE_STATE_DEGRADED, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %356, label %350

350:                                              ; preds = %344
  %351 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %352 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %383

356:                                              ; preds = %350, %344
  %357 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %358 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 132
  br i1 %360, label %371, label %361

361:                                              ; preds = %356
  %362 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %363 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp eq i32 %364, 129
  br i1 %365, label %371, label %366

366:                                              ; preds = %361
  %367 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %368 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 128
  br label %371

371:                                              ; preds = %366, %361, %356
  %372 = phi i1 [ true, %361 ], [ true, %356 ], [ %370, %366 ]
  %373 = zext i1 %372 to i32
  %374 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %375 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %374)
  %376 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %377 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @g_raid3_disk_state2str(i32 %378)
  %380 = sext i32 %379 to i64
  %381 = inttoptr i64 %380 to i8*
  %382 = call i32 @KASSERT(i32 %373, i8* %381)
  br label %419

383:                                              ; preds = %350
  %384 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %385 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @G_RAID3_DEVICE_STATE_STARTING, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %418

389:                                              ; preds = %383
  %390 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %391 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp eq i32 %392, 130
  %394 = zext i1 %393 to i32
  %395 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %396 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %395)
  %397 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %398 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @g_raid3_disk_state2str(i32 %399)
  %401 = sext i32 %400 to i64
  %402 = inttoptr i64 %401 to i8*
  %403 = call i32 @KASSERT(i32 %394, i8* %402)
  %404 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %405 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @G_RAID3_BUMP_SYNCID, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %389
  %411 = load i32, i32* @G_RAID3_BUMP_SYNCID, align 4
  %412 = xor i32 %411, -1
  %413 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %414 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = and i32 %415, %412
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %410, %389
  br label %418

418:                                              ; preds = %417, %383
  br label %419

419:                                              ; preds = %418, %371
  %420 = call i32 (...) @DISK_STATE_CHANGED()
  %421 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %422 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %425 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %424)
  %426 = call i32 (i32, i8*, i32, i32, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %423, i32 %425)
  %427 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %428 = call i32 @g_raid3_destroy_disk(%struct.g_raid3_disk* %427)
  br label %434

429:                                              ; preds = %13
  %430 = load i32, i32* %4, align 4
  %431 = sext i32 %430 to i64
  %432 = inttoptr i64 %431 to i8*
  %433 = call i32 @KASSERT(i32 0, i8* %432)
  br label %434

434:                                              ; preds = %429, %419, %343, %213, %166, %93, %55
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_disk_state2str(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DISK_STATE_CHANGED(...) #1

declare dso_local i32 @g_raid3_device_state2str(i32) #1

declare dso_local i32 @g_raid3_determine_state(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_sync_stop(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_raid3_update_idle(%struct.g_raid3_softc*, %struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_sync_start(%struct.g_raid3_softc*) #1

declare dso_local i32 @g_raid3_destroy_disk(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
