; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i64, %struct.TYPE_6__*, i32, i64, %struct.g_geom*, %struct.TYPE_7__* }
%struct.g_geom = type { i32, i32, %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (i32, %struct.bio*)* }
%struct.TYPE_7__ = type { %struct.g_geom* }

@START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@g_sched_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"NULL provider\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@G_SCHED_FLUSHING = common dso_local global i32 0, align 4
@me = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g_std_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_sched_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_sched_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_sched_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 5
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  store %struct.g_geom* %10, %struct.g_geom** %3, align 8
  %11 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %12 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %11, i32 0, i32 2
  %13 = load %struct.g_sched_softc*, %struct.g_sched_softc** %12, align 8
  store %struct.g_sched_softc* %13, %struct.g_sched_softc** %4, align 8
  %14 = load i32, i32* @START, align 4
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = call i32 @TRC_BIO_EVENT(i32 %14, %struct.bio* %15)
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = call i32 @G_SCHED_LOGREQ(%struct.bio* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = call %struct.bio* @g_clone_bio(%struct.bio* %19)
  store %struct.bio* %20, %struct.bio** %5, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = icmp eq %struct.bio* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @g_io_deliver(%struct.bio* %24, i32 %25)
  br label %143

27:                                               ; preds = %1
  %28 = load i32, i32* @g_sched_done, align 4
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %32 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %31, i32 0, i32 1
  %33 = call %struct.TYPE_7__* @LIST_FIRST(i32* %32)
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 5
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BIO_READ, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BIO_WRITE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %132

54:                                               ; preds = %47, %27
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = call i32 @G_SCHED_LOGREQ(%struct.bio* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %58 = call i32 @g_sched_lock(%struct.g_geom* %57)
  %59 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %60 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %54
  %64 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %65 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @G_SCHED_FLUSHING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %63
  %71 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %72 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (i32, %struct.bio*)*, i64 (i32, %struct.bio*)** %74, align 8
  %76 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %77 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = call i64 %75(i32 %78, %struct.bio* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70, %63, %54
  %83 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %84 = call i32 @g_sched_unlock(%struct.g_geom* %83)
  br label %132

85:                                               ; preds = %70
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = icmp eq %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 1
  store %struct.TYPE_6__* @me, %struct.TYPE_6__** %92, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 4
  store %struct.g_geom* %94, %struct.g_geom** %96, align 8
  %97 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %98 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 4), align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 4), align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 3), align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 3), align 4
  %105 = load %struct.bio*, %struct.bio** %2, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 2), align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 2), align 4
  %112 = load %struct.bio*, %struct.bio** %2, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BIO_WRITE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %93
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 1), align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 1), align 4
  %120 = load %struct.bio*, %struct.bio** %2, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 0), align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @me, i32 0, i32 0), align 4
  br label %127

127:                                              ; preds = %117, %93
  %128 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %129 = call i32 @g_sched_dispatch(%struct.g_geom* %128)
  %130 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %131 = call i32 @g_sched_unlock(%struct.g_geom* %130)
  br label %143

132:                                              ; preds = %82, %53
  %133 = load i32, i32* @g_std_done, align 4
  %134 = load %struct.bio*, %struct.bio** %5, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.bio*, %struct.bio** %5, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %137, align 8
  %138 = load %struct.bio*, %struct.bio** %5, align 8
  %139 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %140 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %139, i32 0, i32 0
  %141 = call %struct.TYPE_7__* @LIST_FIRST(i32* %140)
  %142 = call i32 @g_io_request(%struct.bio* %138, %struct.TYPE_7__* %141)
  br label %143

143:                                              ; preds = %132, %127, %23
  ret void
}

declare dso_local i32 @TRC_BIO_EVENT(i32, %struct.bio*) #1

declare dso_local i32 @G_SCHED_LOGREQ(%struct.bio*, i8*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local %struct.TYPE_7__* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_dispatch(%struct.g_geom*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
