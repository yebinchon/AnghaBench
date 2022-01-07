; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_concat_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_consumer* }
%struct.g_consumer = type { i32 }
%struct.bio = type { i64, %struct.g_consumer*, i32, i32 }
%struct.bio_queue_head = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@g_concat_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_concat_softc*, %struct.bio*)* @g_concat_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_flush(%struct.g_concat_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_concat_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_queue_head, align 4
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  store %struct.g_concat_softc* %0, %struct.g_concat_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = call i32 @bioq_init(%struct.bio_queue_head* %5)
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %69, %2
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %10
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call %struct.bio* @g_clone_bio(%struct.bio* %17)
  store %struct.bio* %18, %struct.bio** %7, align 8
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %25, %21
  %23 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %5)
  store %struct.bio* %23, %struct.bio** %7, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = call i32 @g_destroy_bio(%struct.bio* %26)
  br label %22

28:                                               ; preds = %22
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @g_io_deliver(%struct.bio* %38, i64 %41)
  br label %87

43:                                               ; preds = %16
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %5, %struct.bio* %44)
  %46 = load i32, i32* @g_concat_done, align 4
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %50 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.g_consumer*, %struct.g_consumer** %54, align 8
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  store %struct.g_consumer* %55, %struct.g_consumer** %57, align 8
  %58 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %59 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.g_consumer*, %struct.g_consumer** %63, align 8
  %65 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bio*, %struct.bio** %7, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %43
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %10

72:                                               ; preds = %10
  br label %73

73:                                               ; preds = %76, %72
  %74 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %5)
  store %struct.bio* %74, %struct.bio** %7, align 8
  %75 = icmp ne %struct.bio* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = call i32 @G_CONCAT_LOGREQ(%struct.bio* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.bio*, %struct.bio** %7, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 1
  %81 = load %struct.g_consumer*, %struct.g_consumer** %80, align 8
  store %struct.g_consumer* %81, %struct.g_consumer** %6, align 8
  %82 = load %struct.bio*, %struct.bio** %7, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  store %struct.g_consumer* null, %struct.g_consumer** %83, align 8
  %84 = load %struct.bio*, %struct.bio** %7, align 8
  %85 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %86 = call i32 @g_io_request(%struct.bio* %84, %struct.g_consumer* %85)
  br label %73

87:                                               ; preds = %37, %73
  ret void
}

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @G_CONCAT_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
