; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_opal_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_opal_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_i2c_softc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ibm,opal-id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opal_i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_i2c_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.opal_i2c_softc* @device_get_softc(i32 %6)
  store %struct.opal_i2c_softc* %7, %struct.opal_i2c_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %4, align 8
  %10 = getelementptr inbounds %struct.opal_i2c_softc, %struct.opal_i2c_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  %13 = call i32 @OF_getproplen(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ofw_bus_get_node(i32 %19)
  %21 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %4, align 8
  %22 = getelementptr inbounds %struct.opal_i2c_softc, %struct.opal_i2c_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @device_add_child(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %27 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %4, align 8
  %28 = getelementptr inbounds %struct.opal_i2c_softc, %struct.opal_i2c_softc* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = icmp eq i32* %26, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %18
  %35 = load %struct.opal_i2c_softc*, %struct.opal_i2c_softc** %4, align 8
  %36 = call i32 @I2C_LOCK_INIT(%struct.opal_i2c_softc* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @bus_generic_attach(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %30, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.opal_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @I2C_LOCK_INIT(%struct.opal_i2c_softc*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
