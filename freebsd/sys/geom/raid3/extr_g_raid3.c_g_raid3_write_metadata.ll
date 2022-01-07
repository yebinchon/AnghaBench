; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_write_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i32, %struct.g_consumer*, %struct.g_raid3_softc* }
%struct.g_consumer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.g_raid3_softc = type { i64, i32, i32, i32 }
%struct.g_raid3_metadata = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NULL consumer (%s).\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NULL provider (%s).\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Consumer %s closed? (r%dw%de%d).\00", align 1
@M_RAID3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_BROKEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Cannot write metadata on %s (device=%s, error=%d).\00", align 1
@g_raid3_disconnect_on_failure = common dso_local global i64 0, align 8
@G_RAID3_DEVICE_STATE_COMPLETE = common dso_local global i64 0, align 8
@G_RAID3_BUMP_GENID = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_disk*, %struct.g_raid3_metadata*)* @g_raid3_write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_write_metadata(%struct.g_raid3_disk* %0, %struct.g_raid3_metadata* %1) #0 {
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca %struct.g_raid3_metadata*, align 8
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %3, align 8
  store %struct.g_raid3_metadata* %1, %struct.g_raid3_metadata** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @g_topology_assert_not()
  %12 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %12, i32 0, i32 2
  %14 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %13, align 8
  store %struct.g_raid3_softc* %14, %struct.g_raid3_softc** %5, align 8
  %15 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %16 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %15, i32 0, i32 3
  %17 = load i32, i32* @SX_LOCKED, align 4
  %18 = call i32 @sx_assert(i32* %16, i32 %17)
  %19 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %20 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %19, i32 0, i32 1
  %21 = load %struct.g_consumer*, %struct.g_consumer** %20, align 8
  store %struct.g_consumer* %21, %struct.g_consumer** %6, align 8
  %22 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %23 = icmp ne %struct.g_consumer* %22, null
  %24 = zext i1 %23 to i32
  %25 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %26 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %24, i8* %29)
  %31 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %32 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  %35 = zext i1 %34 to i32
  %36 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %36, i32 0, i32 2
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
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %82 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i32, i32* @M_RAID3, align 4
  %90 = load i32, i32* @M_WAITOK, align 4
  %91 = load i32, i32* @M_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call i32* @malloc(i64 %88, i32 %89, i32 %92)
  store i32* %93, i32** %9, align 8
  %94 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %95 = icmp ne %struct.g_raid3_metadata* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %56
  %97 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @raid3_metadata_encode(%struct.g_raid3_metadata* %97, i32* %98)
  br label %100

100:                                              ; preds = %96, %56
  %101 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @g_write_data(%struct.g_consumer* %101, i64 %102, i32* %103, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @M_RAID3, align 4
  %108 = call i32 @free(i32* %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %159

111:                                              ; preds = %100
  %112 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %113 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @G_RAID3_DISK_FLAG_BROKEN, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %120 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %119)
  %121 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %122 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %123, i32 %124)
  %126 = load i32, i32* @G_RAID3_DISK_FLAG_BROKEN, align 4
  %127 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %128 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %139

131:                                              ; preds = %111
  %132 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %133 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %132)
  %134 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %135 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %118
  %140 = load i64, i64* @g_raid3_disconnect_on_failure, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %144 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @G_RAID3_DEVICE_STATE_COMPLETE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i32, i32* @G_RAID3_BUMP_GENID, align 4
  %150 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %151 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %155 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %156 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %157 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %148, %142, %139
  br label %159

159:                                              ; preds = %158, %100
  %160 = load i32, i32* %10, align 4
  ret i32 %160
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @raid3_metadata_encode(%struct.g_raid3_metadata*, i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
