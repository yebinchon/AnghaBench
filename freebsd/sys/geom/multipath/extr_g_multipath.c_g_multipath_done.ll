; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.g_consumer* }
%struct.g_consumer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i32 }

@ENXIO = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@gmtbq_mtx = common dso_local global i32 0, align 4
@gmtbq = common dso_local global i32 0, align 4
@g_multipath_kt_state = common dso_local global i32 0, align 4
@MP_LOST = common dso_local global i32 0, align 4
@g_mpd = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MP_POSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_multipath_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_multipath_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i64*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ENXIO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %1
  %18 = call i32 @mtx_lock(i32* @gmtbq_mtx)
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = call i32 @bioq_insert_tail(i32* @gmtbq, %struct.bio* %19)
  %21 = call i32 @mtx_unlock(i32* @gmtbq_mtx)
  %22 = call i32 @wakeup(i32* @g_multipath_kt_state)
  br label %74

23:                                               ; preds = %11
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = load %struct.g_consumer*, %struct.g_consumer** %25, align 8
  store %struct.g_consumer* %26, %struct.g_consumer** %4, align 8
  %27 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %28 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %30, align 8
  store %struct.g_multipath_softc* %31, %struct.g_multipath_softc** %3, align 8
  %32 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %33 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i64*
  store i64* %34, i64** %5, align 8
  %35 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %36 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %23
  %45 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %46 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MP_LOST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load i32, i32* @g_mpd, align 4
  %53 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = call i64 @g_post_event(i32 %52, %struct.g_consumer* %53, i32 %54, i32* null)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @MP_POSTED, align 4
  %59 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %60 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %65 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock(i32* %65)
  br label %71

67:                                               ; preds = %44, %23
  %68 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = call i32 @g_std_done(%struct.bio* %72)
  br label %74

74:                                               ; preds = %71, %17
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i64 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
