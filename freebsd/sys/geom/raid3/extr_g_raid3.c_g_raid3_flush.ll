; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i64, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { i64, %struct.g_consumer* }
%struct.g_consumer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i64, %struct.g_raid3_disk*, %struct.TYPE_2__*, i32 }
%struct.bio_queue_head = type { i32 }

@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@g_std_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Consumer %s not opened (r%dw%de%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, %struct.bio*)* @g_raid3_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_flush(%struct.g_raid3_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_queue_head, align 4
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = call i32 @bioq_init(%struct.bio_queue_head* %5)
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %77, %2
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %11
  %18 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %18, i32 0, i32 1
  %20 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %20, i64 %21
  store %struct.g_raid3_disk* %22, %struct.g_raid3_disk** %6, align 8
  %23 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %24 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @G_RAID3_DISK_STATE_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %17
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = call %struct.bio* @g_clone_bio(%struct.bio* %30)
  store %struct.bio* %31, %struct.bio** %8, align 8
  %32 = load %struct.bio*, %struct.bio** %8, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %35, %struct.bio** %8, align 8
  br label %36

36:                                               ; preds = %44, %34
  %37 = load %struct.bio*, %struct.bio** %8, align 8
  %38 = icmp ne %struct.bio* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.bio*, %struct.bio** %8, align 8
  %41 = call i32 @bioq_remove(%struct.bio_queue_head* %5, %struct.bio* %40)
  %42 = load %struct.bio*, %struct.bio** %8, align 8
  %43 = call i32 @g_destroy_bio(%struct.bio* %42)
  br label %44

44:                                               ; preds = %39
  %45 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %45, %struct.bio** %8, align 8
  br label %36

46:                                               ; preds = %36
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @ENOMEM, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @g_io_deliver(%struct.bio* %56, i64 %59)
  br label %139

61:                                               ; preds = %29
  %62 = load %struct.bio*, %struct.bio** %8, align 8
  %63 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %5, %struct.bio* %62)
  %64 = load i32, i32* @g_std_done, align 4
  %65 = load %struct.bio*, %struct.bio** %8, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %68 = load %struct.bio*, %struct.bio** %8, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 1
  store %struct.g_raid3_disk* %67, %struct.g_raid3_disk** %69, align 8
  %70 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %71 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %70, i32 0, i32 1
  %72 = load %struct.g_consumer*, %struct.g_consumer** %71, align 8
  %73 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.bio*, %struct.bio** %8, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 2
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %76, align 8
  br label %77

77:                                               ; preds = %61, %28
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %11

80:                                               ; preds = %11
  %81 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %81, %struct.bio** %8, align 8
  br label %82

82:                                               ; preds = %137, %80
  %83 = load %struct.bio*, %struct.bio** %8, align 8
  %84 = icmp ne %struct.bio* %83, null
  br i1 %84, label %85, label %139

85:                                               ; preds = %82
  %86 = load %struct.bio*, %struct.bio** %8, align 8
  %87 = call i32 @bioq_remove(%struct.bio_queue_head* %5, %struct.bio* %86)
  %88 = load %struct.bio*, %struct.bio** %8, align 8
  %89 = call i32 @G_RAID3_LOGREQ(i32 3, %struct.bio* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.bio*, %struct.bio** %8, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 1
  %92 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %91, align 8
  store %struct.g_raid3_disk* %92, %struct.g_raid3_disk** %6, align 8
  %93 = load %struct.bio*, %struct.bio** %8, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 1
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %94, align 8
  %95 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %96 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %95, i32 0, i32 1
  %97 = load %struct.g_consumer*, %struct.g_consumer** %96, align 8
  store %struct.g_consumer* %97, %struct.g_consumer** %7, align 8
  %98 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %99 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %85
  %103 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %104 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %109 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 1
  br label %112

112:                                              ; preds = %107, %102, %85
  %113 = phi i1 [ false, %102 ], [ false, %85 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %116 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %121 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %124 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %127 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @KASSERT(i32 %114, i8* %130)
  %132 = load %struct.bio*, %struct.bio** %8, align 8
  %133 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %134 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %133, i32 0, i32 1
  %135 = load %struct.g_consumer*, %struct.g_consumer** %134, align 8
  %136 = call i32 @g_io_request(%struct.bio* %132, %struct.g_consumer* %135)
  br label %137

137:                                              ; preds = %112
  %138 = call %struct.bio* @bioq_first(%struct.bio_queue_head* %5)
  store %struct.bio* %138, %struct.bio** %8, align 8
  br label %82

139:                                              ; preds = %55, %82
  ret void
}

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local %struct.bio* @bioq_first(%struct.bio_queue_head*) #1

declare dso_local i32 @bioq_remove(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @G_RAID3_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
