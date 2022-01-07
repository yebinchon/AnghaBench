; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_queue_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_queue_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_gate_softc* }
%struct.g_gate_softc = type { i32, i64, i64, i32, i32, i64 }

@G_GATE_FLAG_DESTROY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Queue full, request canceled.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_gate_queue_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gate_queue_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_gate_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.g_gate_softc*, %struct.g_gate_softc** %9, align 8
  store %struct.g_gate_softc* %10, %struct.g_gate_softc** %3, align 8
  %11 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %12 = icmp eq %struct.g_gate_softc* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %1
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = load i32, i32* @ENXIO, align 4
  %23 = call i32 @g_io_deliver(%struct.bio* %21, i32 %22)
  br label %73

24:                                               ; preds = %13
  %25 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %25, i32 0, i32 3
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %34 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %37 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %42 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %41, i32 0, i32 3
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = call i32 @G_GATE_LOGREQ(i32 1, %struct.bio* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @g_io_deliver(%struct.bio* %46, i32 %47)
  br label %73

49:                                               ; preds = %32, %24
  %50 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %51 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %57 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %61 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %65 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %64, i32 0, i32 4
  %66 = load %struct.bio*, %struct.bio** %2, align 8
  %67 = call i32 @bioq_insert_tail(i32* %65, %struct.bio* %66)
  %68 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %69 = call i32 @wakeup(%struct.g_gate_softc* %68)
  %70 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %71 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %70, i32 0, i32 3
  %72 = call i32 @mtx_unlock(i32* %71)
  br label %73

73:                                               ; preds = %49, %40, %20
  ret void
}

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @G_GATE_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(%struct.g_gate_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
