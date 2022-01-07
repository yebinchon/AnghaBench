; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_quiesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DS_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DS_ATTACHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_quiesce(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = call i32 @DEVICENAME(%struct.TYPE_5__* %4)
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @PDEBUG(i8* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DS_BUSY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DS_ATTACHED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 @DEVICE_QUIESCE(%struct.TYPE_5__* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DEVICENAME(%struct.TYPE_5__*) #1

declare dso_local i32 @DEVICE_QUIESCE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
