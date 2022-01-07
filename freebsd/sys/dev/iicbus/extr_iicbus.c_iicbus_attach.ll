; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbus.c_iicbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbus.c_iicbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@IIC_FASTEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iicbus_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.iicbus_softc* @IICBUS_SOFTC(i32 %5)
  store %struct.iicbus_softc* %6, %struct.iicbus_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %9 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %11 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %10, i32 0, i32 1
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @iicbus_init_frequency(i32 %14, i32 0)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IIC_FASTEST, align 4
  %18 = call i32 @iicbus_reset(i32 %16, i32 %17, i32 0, i32* null)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @device_get_name(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  %23 = call i64 @resource_int_value(i32 %20, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %28 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.iicbus_softc*, %struct.iicbus_softc** %3, align 8
  %31 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @bus_generic_probe(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @bus_enumerate_hinted_children(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @bus_generic_attach(i32 %37)
  ret i32 0
}

declare dso_local %struct.iicbus_softc* @IICBUS_SOFTC(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @iicbus_init_frequency(i32, i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
