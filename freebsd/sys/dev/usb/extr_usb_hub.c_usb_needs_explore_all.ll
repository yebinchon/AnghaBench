; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_needs_explore_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_needs_explore_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@usb_devclass_ptr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"no devclass\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_needs_explore_all() #0 {
  %1 = alloca %struct.usb_bus*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** @usb_devclass_ptr, align 8
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @devclass_get_maxunit(i32* %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @devclass_get_device(i32* %18, i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = call %struct.usb_bus* @device_get_softc(i64 %24)
  store %struct.usb_bus* %25, %struct.usb_bus** %1, align 8
  %26 = load %struct.usb_bus*, %struct.usb_bus** %1, align 8
  %27 = icmp ne %struct.usb_bus* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.usb_bus*, %struct.usb_bus** %1, align 8
  %30 = call i32 @usb_needs_explore(%struct.usb_bus* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %9, %14
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local i64 @devclass_get_device(i32*, i32) #1

declare dso_local %struct.usb_bus* @device_get_softc(i64) #1

declare dso_local i32 @usb_needs_explore(%struct.usb_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
