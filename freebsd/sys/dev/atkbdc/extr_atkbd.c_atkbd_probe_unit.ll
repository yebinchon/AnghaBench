; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_probe_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_probe_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32*, i32)* }

@ATKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atkbd_probe_unit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ATKBD_DRIVER_NAME, align 4
  %12 = call %struct.TYPE_3__* @kbd_get_switch(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = call i32 @device_get_unit(i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 %26(i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %34, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_3__* @kbd_get_switch(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
