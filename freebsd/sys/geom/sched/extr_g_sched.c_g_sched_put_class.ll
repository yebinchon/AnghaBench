; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_put_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_put_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i8*)* }
%struct.g_sched_class = type { i64, i64 }

@ticks = common dso_local global i64 0, align 8
@me = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@hz = common dso_local global i32 0, align 4
@gsc_clist = common dso_local global i32 0, align 4
@M_GEOM_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_sched_put_class(%struct.g_geom* %0, i8* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_sched_class*, align 8
  %6 = alloca %struct.g_sched_softc*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.g_sched_class* @g_sched_priv2class(i8* %7)
  store %struct.g_sched_class* %8, %struct.g_sched_class** %5, align 8
  %9 = load i64, i64* @ticks, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @me, i32 0, i32 0), align 4
  %11 = load i32, i32* @hz, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = load %struct.g_sched_class*, %struct.g_sched_class** %5, align 8
  %16 = getelementptr inbounds %struct.g_sched_class, %struct.g_sched_class* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.g_sched_class*, %struct.g_sched_class** %5, align 8
  %18 = getelementptr inbounds %struct.g_sched_class, %struct.g_sched_class* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %25 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %24, i32 0, i32 0
  %26 = load %struct.g_sched_softc*, %struct.g_sched_softc** %25, align 8
  store %struct.g_sched_softc* %26, %struct.g_sched_softc** %6, align 8
  %27 = load %struct.g_sched_softc*, %struct.g_sched_softc** %6, align 8
  %28 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (i32, i8*)*, i32 (i32, i8*)** %30, align 8
  %32 = load %struct.g_sched_softc*, %struct.g_sched_softc** %6, align 8
  %33 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 %31(i32 %34, i8* %35)
  %37 = load %struct.g_sched_class*, %struct.g_sched_class** %5, align 8
  %38 = load i32, i32* @gsc_clist, align 4
  %39 = call i32 @LIST_REMOVE(%struct.g_sched_class* %37, i32 %38)
  %40 = load %struct.g_sched_class*, %struct.g_sched_class** %5, align 8
  %41 = load i32, i32* @M_GEOM_SCHED, align 4
  %42 = call i32 @free(%struct.g_sched_class* %40, i32 %41)
  br label %43

43:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.g_sched_class* @g_sched_priv2class(i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_sched_class*, i32) #1

declare dso_local i32 @free(%struct.g_sched_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
