; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_receive_raw_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_receive_raw_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_softc = type { i32, i32**, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ADB_COMMAND_TALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adb_receive_raw_packet(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.adb_softc*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.adb_softc* @device_get_softc(i32 %13)
  store %struct.adb_softc* %14, %struct.adb_softc** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 15
  %22 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 %23, 3
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %28 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @memcpy(i32* %33, i32* %34, i32 2)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %40 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %26, %19, %5
  %47 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %48 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %54 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 8
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 8, %59 ], [ %61, %60 ]
  %64 = call i32 @memcpy(i32* %55, i32* %56, i32 %63)
  %65 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %66 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @atomic_store_rel_int(i32* %66, i32 %68)
  %70 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %71 = call i32 @wakeup(%struct.adb_softc* %70)
  br label %72

72:                                               ; preds = %62, %46
  %73 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %74 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %72
  %82 = load %struct.adb_softc*, %struct.adb_softc** %11, align 8
  %83 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 15
  %92 = ashr i32 %91, 2
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 3
  %95 = load i32, i32* %9, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @ADB_RECEIVE_PACKET(i32* %88, i32 %89, i32 %92, i32 %94, i32 %95, i32* %96)
  br label %98

98:                                               ; preds = %81, %72
  ret i32 0
}

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.adb_softc*) #1

declare dso_local i32 @ADB_RECEIVE_PACKET(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
