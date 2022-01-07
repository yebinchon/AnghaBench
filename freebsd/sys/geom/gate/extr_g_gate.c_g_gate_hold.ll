; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@g_gate_units_lock = common dso_local global i32 0, align 4
@g_gate_maxunits = common dso_local global i32 0, align 4
@g_gate_units = common dso_local global %struct.g_gate_softc** null, align 8
@G_GATE_NAME_GIVEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"name is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_gate_softc* (i32, i8*)* @g_gate_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_gate_softc* @g_gate_hold(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_gate_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.g_gate_softc* null, %struct.g_gate_softc** %5, align 8
  %6 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @g_gate_maxunits, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %14, i64 %16
  %18 = load %struct.g_gate_softc*, %struct.g_gate_softc** %17, align 8
  store %struct.g_gate_softc* %18, %struct.g_gate_softc** %5, align 8
  br label %65

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @G_GATE_NAME_GIVEN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %60, %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @g_gate_maxunits, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %33, i64 %35
  %37 = load %struct.g_gate_softc*, %struct.g_gate_softc** %36, align 8
  %38 = icmp eq %struct.g_gate_softc* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %60

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %42, i64 %44
  %46 = load %struct.g_gate_softc*, %struct.g_gate_softc** %45, align 8
  %47 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i8* %41, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %60

54:                                               ; preds = %40
  %55 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %55, i64 %57
  %59 = load %struct.g_gate_softc*, %struct.g_gate_softc** %58, align 8
  store %struct.g_gate_softc* %59, %struct.g_gate_softc** %5, align 8
  br label %63

60:                                               ; preds = %53, %39
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %28

63:                                               ; preds = %54, %28
  br label %64

64:                                               ; preds = %63, %19
  br label %65

65:                                               ; preds = %64, %13
  %66 = load %struct.g_gate_softc*, %struct.g_gate_softc** %5, align 8
  %67 = icmp ne %struct.g_gate_softc* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.g_gate_softc*, %struct.g_gate_softc** %5, align 8
  %70 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %68, %65
  %74 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %75 = load %struct.g_gate_softc*, %struct.g_gate_softc** %5, align 8
  ret %struct.g_gate_softc* %75
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
