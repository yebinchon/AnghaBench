; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@mvs_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_setup_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_setup_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_controller*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mvs_controller* @device_get_softc(i32 %5)
  store %struct.mvs_controller* %6, %struct.mvs_controller** %4, align 8
  %7 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %8 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IRQ, align 4
  %12 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %13 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* @RF_SHAREABLE, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i64* %14, i32 %17)
  %19 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %20 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  %22 = icmp ne i32* %18, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %30 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %34 = load i32, i32* @mvs_intr, align 4
  %35 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %36 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %37 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i64 @bus_setup_intr(i32 %28, i32* %32, i32 %33, i32* null, i32 %34, %struct.mvs_controller* %35, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %47 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %51 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_release_resource(i32 %44, i32 %45, i64 %49, i32* %53)
  %55 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %56 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %41, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mvs_controller*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
