; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdmatest_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.xdmatest_softc*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"xdmatest\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't allocate test memory.\0A\00", align 1
@xdmatest_delayed_attach = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"config_intrhook_establish failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xdmatest_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdmatest_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdmatest_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.xdmatest_softc* @device_get_softc(i32 %6)
  store %struct.xdmatest_softc* %7, %struct.xdmatest_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %10 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %12 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %18 = call i32 @xdmatest_alloc_test_memory(%struct.xdmatest_softc* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %23 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load i32, i32* @xdmatest_delayed_attach, align 4
  %28 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %29 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %32 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %33 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.xdmatest_softc* %31, %struct.xdmatest_softc** %34, align 8
  %35 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %4, align 8
  %36 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %35, i32 0, i32 0
  %37 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %26
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.xdmatest_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xdmatest_alloc_test_memory(%struct.xdmatest_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
