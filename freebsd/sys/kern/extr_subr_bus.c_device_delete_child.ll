; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_delete_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_delete_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s from %s\00", align 1
@link = common dso_local global i32 0, align 4
@bus_data_devices = common dso_local global i32 0, align 4
@devlink = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_delete_child(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = call i32 @DEVICENAME(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = call i32 @DEVICENAME(%struct.TYPE_11__* %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @PDEBUG(i8* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call i32 @device_detach(%struct.TYPE_11__* %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %34, %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call %struct.TYPE_11__* @TAILQ_FIRST(i32* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = call i32 @device_delete_child(%struct.TYPE_11__* %27, %struct.TYPE_11__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %26
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call i32 @devclass_delete_device(i64 %43, %struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = call i32 @BUS_CHILD_DELETED(%struct.TYPE_11__* %52, %struct.TYPE_11__* %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = load i32, i32* @link, align 4
  %60 = call i32 @TAILQ_REMOVE(i32* %57, %struct.TYPE_11__* %58, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = load i32, i32* @devlink, align 4
  %63 = call i32 @TAILQ_REMOVE(i32* @bus_data_devices, %struct.TYPE_11__* %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = ptrtoint %struct.TYPE_11__* %64 to i32
  %66 = load i32, i32* @M_BUS, align 4
  %67 = call i32 @kobj_delete(i32 %65, i32 %66)
  %68 = call i32 (...) @bus_data_generation_update()
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %32, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DEVICENAME(%struct.TYPE_11__*) #1

declare dso_local i32 @device_detach(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @devclass_delete_device(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @BUS_CHILD_DELETED(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @kobj_delete(i32, i32) #1

declare dso_local i32 @bus_data_generation_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
