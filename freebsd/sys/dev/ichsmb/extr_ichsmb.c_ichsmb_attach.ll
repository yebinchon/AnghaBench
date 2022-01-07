; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichsmb/extr_ichsmb.c_ichsmb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichsmb/extr_ichsmb.c_ichsmb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ichsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@DRIVER_SMBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no \22%s\22 child found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ICH_HST_STA = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ichsmb_device_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"can't setup irq\0A\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ichsmb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_4__* @device_get_softc(i32 %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %9, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DRIVER_SMBUS, align 4
  %16 = call i32* @device_add_child(i32 %14, i32 %15, i32 -1)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DRIVER_SMBUS, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %5, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ICH_HST_STA, align 4
  %30 = call i32 @bus_write_1(i32 %28, i32 %29, i32 255)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ichsmb_device_intr, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @bus_setup_intr(i32 %31, i32 %34, i32 %37, i32* null, i32 %38, %struct.TYPE_4__* %39, i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %53

48:                                               ; preds = %25
  %49 = load i64, i64* @bus_generic_attach, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @config_intrhook_oneshot(i32 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %58

53:                                               ; preds = %45, %20
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mtx_destroy(i32* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
