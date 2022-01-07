; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd_atkbdc.c_atkbdresume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd_atkbdc.c_atkbdresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ATKBD_DRIVER_NAME = common dso_local global i32 0, align 4
@KB_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atkbdresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdresume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_9__* @device_get_softc(i32 %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @ATKBD_DRIVER_NAME, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_get_unit(i32 %9)
  %11 = call i32 @kbd_find_keyboard(i32 %8, i32 %10)
  %12 = call %struct.TYPE_8__* @kbd_get_keyboard(i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load i32, i32* @KB_INITIALIZED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = call i32 @device_get_unit(i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_start(i32 %28)
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @device_get_unit(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @device_get_flags(i32 %35)
  %37 = call i32 @kbdd_init(%struct.TYPE_8__* %31, i32 %33, %struct.TYPE_8__** %4, i32* %34, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = call i32 @kbdd_clear_state(%struct.TYPE_8__* %38)
  br label %40

40:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_8__* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbd_find_keyboard(i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @kbdd_init(%struct.TYPE_8__*, i32, %struct.TYPE_8__**, i32*, i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @kbdd_clear_state(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
