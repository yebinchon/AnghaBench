; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_mii_attach_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_mii_attach_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.miiproxy_softc = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"mii_attach_proxy: not attaching, no mdio device hint for %s\0A\00", align 1
@miiproxy_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't attach miiproxy\0A\00", align 1
@miiproxy_rendezvous_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"can't attach proxy\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"attached to target %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mii_attach_proxy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.miiproxy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @device_get_name(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @device_get_unit(i32* %10)
  %12 = call i64 @resource_string_value(i32 %9, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64, i64* @bootverbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @device_get_nameunit(i32* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %14
  store i32* null, i32** %2, align 8
  br label %58

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @miiproxy_driver, i32 0, i32 0), align 4
  %25 = call i32* @device_add_child(i32* %23, i32 %24, i32 -1)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @bus_generic_attach(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @device_printf(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %58

33:                                               ; preds = %22
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.miiproxy_softc* @device_get_softc(i32* %34)
  store %struct.miiproxy_softc* %35, %struct.miiproxy_softc** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %4, align 8
  %38 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %4, align 8
  %41 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @miiproxy_rendezvous_callback, align 4
  %45 = call i64 @rendezvous_register_proxy(i32* %42, i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 (i32*, i8*, ...) @device_printf(i32* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %58

50:                                               ; preds = %33
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %4, align 8
  %53 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i8* @device_get_nameunit(i32* %54)
  %56 = call i32 (i32*, i8*, ...) @device_printf(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %2, align 8
  br label %58

58:                                               ; preds = %50, %47, %30, %21
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32* @device_add_child(i32*, i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local %struct.miiproxy_softc* @device_get_softc(i32*) #1

declare dso_local i64 @rendezvous_register_proxy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
