; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_write_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i32, %struct.g_consumer*, %struct.g_mirror_softc* }
%struct.g_consumer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.g_mirror_softc = type { i32, i32, i32, i32 }
%struct.g_mirror_metadata = type { i64 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NULL consumer (%s).\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NULL provider (%s).\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Consumer %s closed? (r%dw%de%d).\00", align 1
@M_MIRROR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@G_MIRROR_DEVICE_FLAG_WIPE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@DEBUG_FP = common dso_local global i32 0, align 4
@g_mirror_metadata_write = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_BROKEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Cannot write metadata on %s (device=%s, error=%d).\00", align 1
@g_mirror_disconnect_on_failure = common dso_local global i64 0, align 8
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@G_MIRROR_BUMP_GENID = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_mirror_disk*, %struct.g_mirror_metadata*)* @g_mirror_write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mirror_write_metadata(%struct.g_mirror_disk* %0, %struct.g_mirror_metadata* %1) #0 {
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca %struct.g_mirror_metadata*, align 8
  %5 = alloca %struct.g_mirror_softc*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %3, align 8
  store %struct.g_mirror_metadata* %1, %struct.g_mirror_metadata** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @g_topology_assert_not()
  %12 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %12, i32 0, i32 2
  %14 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %13, align 8
  store %struct.g_mirror_softc* %14, %struct.g_mirror_softc** %5, align 8
  %15 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %16 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %15, i32 0, i32 3
  %17 = load i32, i32* @SX_LOCKED, align 4
  %18 = call i32 @sx_assert(i32* %16, i32 %17)
  %19 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %20 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %19, i32 0, i32 1
  %21 = load %struct.g_consumer*, %struct.g_consumer** %20, align 8
  store %struct.g_consumer* %21, %struct.g_consumer** %6, align 8
  %22 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %23 = icmp ne %struct.g_consumer* %22, null
  %24 = zext i1 %23 to i32
  %25 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %26 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %24, i8* %29)
  %31 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %32 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  %35 = zext i1 %34 to i32
  %36 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %37 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %35, i8* %40)
  %42 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %2
  %47 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %53 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 1
  br label %56

56:                                               ; preds = %51, %46, %2
  %57 = phi i1 [ false, %46 ], [ false, %2 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %60 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %65 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %71 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @KASSERT(i32 %58, i8* %74)
  %76 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %77 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %82 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i32, i32* @M_MIRROR, align 4
  %90 = load i32, i32* @M_WAITOK, align 4
  %91 = load i32, i32* @M_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call i32* @malloc(i64 %88, i32 %89, i32 %92)
  store i32* %93, i32** %9, align 8
  %94 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %95 = icmp ne %struct.g_mirror_metadata* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %56
  %97 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %98 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @G_MIRROR_DEVICE_FLAG_WIPE, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %106 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @ENOSPC, align 4
  store i32 %110, i32* %10, align 4
  br label %115

111:                                              ; preds = %103
  %112 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @mirror_metadata_encode(%struct.g_mirror_metadata* %112, i32* %113)
  br label %115

115:                                              ; preds = %111, %109
  br label %116

116:                                              ; preds = %115, %96, %56
  %117 = load i32, i32* @DEBUG_FP, align 4
  %118 = load i32, i32* @g_mirror_metadata_write, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @KFAIL_POINT_ERROR(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @g_write_data(%struct.g_consumer* %124, i64 %125, i32* %126, i64 %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %123, %116
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* @M_MIRROR, align 4
  %132 = call i32 @free(i32* %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %182

135:                                              ; preds = %129
  %136 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %137 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @G_MIRROR_DISK_FLAG_BROKEN, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load i32, i32* @G_MIRROR_DISK_FLAG_BROKEN, align 4
  %144 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %145 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %149 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %148)
  %150 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %151 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %152, i32 %153)
  br label %163

155:                                              ; preds = %135
  %156 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %157 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %156)
  %158 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %159 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %155, %142
  %164 = load i64, i64* @g_mirror_disconnect_on_failure, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %168 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  %169 = call i32 @g_mirror_ndisks(%struct.g_mirror_softc* %167, i32 %168)
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = load i32, i32* @G_MIRROR_BUMP_GENID, align 4
  %173 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %174 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %178 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %179 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %180 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %171, %166, %163
  br label %182

182:                                              ; preds = %181, %129
  %183 = load i32, i32* %10, align 4
  ret i32 %183
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @mirror_metadata_encode(%struct.g_mirror_metadata*, i32*) #1

declare dso_local i32 @KFAIL_POINT_ERROR(i32, i32, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_ndisks(%struct.g_mirror_softc*, i32) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
