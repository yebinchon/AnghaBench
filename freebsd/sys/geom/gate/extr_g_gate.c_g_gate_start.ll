; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_gate_softc* }
%struct.g_gate_softc = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@G_GATE_FLAG_DESTROY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@g_gate_done = common dso_local global i32 0, align 4
@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Ignoring request.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_gate_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gate_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_gate_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.g_gate_softc*, %struct.g_gate_softc** %10, align 8
  store %struct.g_gate_softc* %11, %struct.g_gate_softc** %3, align 8
  %12 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %13 = icmp eq %struct.g_gate_softc* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @G_GATE_FLAG_DESTROY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %1
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = load i32, i32* @ENXIO, align 4
  %24 = call i32 @g_io_deliver(%struct.bio* %22, i32 %23)
  br label %93

25:                                               ; preds = %14
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = call i32 @G_GATE_LOGREQ(i32 2, %struct.bio* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %84 [
    i32 129, label %31
    i32 132, label %71
    i32 128, label %71
    i32 131, label %71
    i32 130, label %83
  ]

31:                                               ; preds = %25
  %32 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %33 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = call %struct.bio* @g_clone_bio(%struct.bio* %37)
  store %struct.bio* %38, %struct.bio** %4, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = icmp eq %struct.bio* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @g_io_deliver(%struct.bio* %42, i32 %43)
  br label %93

45:                                               ; preds = %36
  %46 = load i32, i32* @g_gate_done, align 4
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %53 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %59 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %67 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 @g_io_request(%struct.bio* %65, %struct.TYPE_6__* %68)
  br label %93

70:                                               ; preds = %31
  br label %90

71:                                               ; preds = %25, %25, %25
  %72 = load %struct.g_gate_softc*, %struct.g_gate_softc** %3, align 8
  %73 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @G_GATE_FLAG_READONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.bio*, %struct.bio** %2, align 8
  %80 = load i32, i32* @EPERM, align 4
  %81 = call i32 @g_io_deliver(%struct.bio* %79, i32 %80)
  br label %93

82:                                               ; preds = %71
  br label %90

83:                                               ; preds = %25
  br label %84

84:                                               ; preds = %25, %83
  %85 = load %struct.bio*, %struct.bio** %2, align 8
  %86 = call i32 @G_GATE_LOGREQ(i32 2, %struct.bio* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.bio*, %struct.bio** %2, align 8
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = call i32 @g_io_deliver(%struct.bio* %87, i32 %88)
  br label %93

90:                                               ; preds = %82, %70
  %91 = load %struct.bio*, %struct.bio** %2, align 8
  %92 = call i32 @g_gate_queue_io(%struct.bio* %91)
  br label %93

93:                                               ; preds = %90, %84, %78, %45, %41, %21
  ret void
}

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @G_GATE_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.TYPE_6__*) #1

declare dso_local i32 @g_gate_queue_io(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
