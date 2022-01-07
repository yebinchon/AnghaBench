; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_mem_alloc_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_mem_alloc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32, i64, i32*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_bus.0 = type opaque

@.str = private unnamed_addr constant [12 x i8] c"usb_def_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"usb_spin_mtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@USB_MAX_DEVICES = common dso_local global i64 0, align 8
@USB_MIN_DEVICES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Devices field has not been initialised properly\0A\00", align 1
@USB_BUS_DMA_TAG_MAX = common dso_local global i32 0, align 4
@usb_bus_mem_alloc_all_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_bus_mem_alloc_all(%struct.usb_bus* %0, i32 %1, i32 (%struct.usb_bus.0*, i32*)** %2) #0 {
  %4 = alloca %struct.usb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.usb_bus.0*, i32*)**, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.usb_bus.0*, i32*)** %2, i32 (%struct.usb_bus.0*, i32*)*** %6, align 8
  %7 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %8 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %10 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %9, i32 0, i32 4
  %11 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = load i32, i32* @MTX_RECURSE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mtx_init(i32* %10, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %20 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %19, i32 0, i32 10
  %21 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %22 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_SPIN, align 4
  %26 = load i32, i32* @MTX_RECURSE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @mtx_init(i32* %20, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %30 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %29, i32 0, i32 8
  %31 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %32 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %31, i32 0, i32 4
  %33 = call i32 @usb_callout_init_mtx(i32* %30, i32* %32, i32 0)
  %34 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %35 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @TAILQ_INIT(i32* %36)
  %38 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %39 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_MAX_DEVICES, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %3
  %44 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %45 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_MIN_DEVICES, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %51 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %43, %3
  %55 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %57 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %60 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %65 = load i32 (%struct.usb_bus.0*, i32*)**, i32 (%struct.usb_bus.0*, i32*)*** %6, align 8
  %66 = bitcast i32 (%struct.usb_bus.0*, i32*)** %65 to i32 (%struct.usb_bus*, i32*)*
  %67 = call i32 @usb_bus_mem_free_all(%struct.usb_bus* %64, i32 (%struct.usb_bus*, i32*)* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %70 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  ret i32 %71
}

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usb_bus_mem_free_all(%struct.usb_bus*, i32 (%struct.usb_bus*, i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
