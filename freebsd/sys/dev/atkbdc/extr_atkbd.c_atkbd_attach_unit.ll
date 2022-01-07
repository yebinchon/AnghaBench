; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_attach_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_attach_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 (i32, i32*, i32)*, i32 (i32, %struct.TYPE_12__**, i32*, i32)*, i32 (%struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_14__ = type { i32 }

@ATKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@shutdown_final = common dso_local global i32 0, align 4
@atkbd_shutdown_final = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atkbd_attach_unit(i32 %0, %struct.TYPE_12__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @ATKBD_DRIVER_NAME, align 4
  %16 = call %struct.TYPE_13__* @kbd_get_switch(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = call i32 @device_get_unit(i32 %25)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %33(i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %90

42:                                               ; preds = %21
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32 (i32, %struct.TYPE_12__**, i32*, i32)*, i32 (i32, %struct.TYPE_12__**, i32*, i32)** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 %45(i32 %46, %struct.TYPE_12__** %47, i32* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %90

55:                                               ; preds = %42
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = call i32 %58(%struct.TYPE_12__* %60)
  %62 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %11, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 @callout_init(i32* %68, i32 0)
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = call i32 @atkbd_timeout(%struct.TYPE_12__* %71)
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %55
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32 (%struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_12__*, i64)** %77, align 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i64, i64* @bootverbose, align 8
  %82 = call i32 %78(%struct.TYPE_12__* %80, i64 %81)
  br label %83

83:                                               ; preds = %75, %55
  %84 = load i32, i32* @shutdown_final, align 4
  %85 = load i32, i32* @atkbd_shutdown_final, align 4
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %89 = call i32 @EVENTHANDLER_REGISTER(i32 %84, i32 %85, %struct.TYPE_12__* %87, i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %83, %53, %40, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_13__* @kbd_get_switch(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @atkbd_timeout(%struct.TYPE_12__*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
