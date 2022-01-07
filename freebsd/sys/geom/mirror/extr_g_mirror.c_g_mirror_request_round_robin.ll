; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_request_round_robin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_request_round_robin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32 }
%struct.bio = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.g_mirror_disk = type { %struct.g_consumer* }
%struct.g_consumer = type { i32, i32, i32, i32, %struct.TYPE_2__* }

@ENXIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@g_mirror_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Consumer %s not opened (r%dw%de%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.bio*)* @g_mirror_request_round_robin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_request_round_robin(%struct.g_mirror_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %9 = call %struct.g_mirror_disk* @g_mirror_get_disk(%struct.g_mirror_softc* %8)
  store %struct.g_mirror_disk* %9, %struct.g_mirror_disk** %5, align 8
  %10 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %11 = icmp eq %struct.g_mirror_disk* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @ENXIO, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @g_io_deliver(%struct.bio* %22, i64 %25)
  br label %102

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = call %struct.bio* @g_clone_bio(%struct.bio* %28)
  store %struct.bio* %29, %struct.bio** %7, align 8
  %30 = load %struct.bio*, %struct.bio** %7, align 8
  %31 = icmp eq %struct.bio* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @g_io_deliver(%struct.bio* %42, i64 %45)
  br label %102

47:                                               ; preds = %27
  %48 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %49 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %48, i32 0, i32 0
  %50 = load %struct.g_consumer*, %struct.g_consumer** %49, align 8
  store %struct.g_consumer* %50, %struct.g_consumer** %6, align 8
  %51 = load i32, i32* @g_mirror_done, align 4
  %52 = load %struct.bio*, %struct.bio** %7, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %55 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.bio*, %struct.bio** %7, align 8
  %60 = call i32 @G_MIRROR_LOGREQ(i32 3, %struct.bio* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %62 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %47
  %66 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %67 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %72 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 1
  br label %75

75:                                               ; preds = %70, %65, %47
  %76 = phi i1 [ false, %65 ], [ false, %47 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  %78 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %79 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %84 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %87 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %90 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @KASSERT(i32 %77, i8* %93)
  %95 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %96 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.bio*, %struct.bio** %7, align 8
  %100 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %101 = call i32 @g_io_request(%struct.bio* %99, %struct.g_consumer* %100)
  br label %102

102:                                              ; preds = %75, %41, %21
  ret void
}

declare dso_local %struct.g_mirror_disk* @g_mirror_get_disk(%struct.g_mirror_softc*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
