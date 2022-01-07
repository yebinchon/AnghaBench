; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmbus.c_pwmbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmbus.c_pwmbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwmbus_softc = type { i64, i32* }
%struct.pwmbus_ivars = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"No channels on parent %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pwmc\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to add pwmc child device for channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pwmbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwmbus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pwmbus_softc*, align 8
  %5 = alloca %struct.pwmbus_ivars*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.pwmbus_softc* @device_get_softc(i32* %9)
  store %struct.pwmbus_softc* %10, %struct.pwmbus_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @device_get_parent(i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %18 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %17, i32 0, i32 0
  %19 = call i64 @PWMBUS_CHANNEL_COUNT(i32* %16, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %23 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21, %1
  %27 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @device_get_nameunit(i32* %30)
  %32 = call i32 @device_printf(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %38 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.pwmbus_softc*, %struct.pwmbus_softc** %4, align 8
  %43 = getelementptr inbounds %struct.pwmbus_softc, %struct.pwmbus_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* @pwmbus_add_child(i32* %44, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %45, i32** %6, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @device_printf(i32* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %57

51:                                               ; preds = %41
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.pwmbus_ivars* @device_get_ivars(i32* %52)
  store %struct.pwmbus_ivars* %53, %struct.pwmbus_ivars** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.pwmbus_ivars*, %struct.pwmbus_ivars** %5, align 8
  %56 = getelementptr inbounds %struct.pwmbus_ivars, %struct.pwmbus_ivars* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %35

60:                                               ; preds = %35
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @bus_enumerate_hinted_children(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @bus_generic_probe(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @bus_generic_attach(i32* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %26
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pwmbus_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i64 @PWMBUS_CHANNEL_COUNT(i32*, i64*) #1

declare dso_local i32 @device_printf(i32*, i8*, i64) #1

declare dso_local i64 @device_get_nameunit(i32*) #1

declare dso_local i32* @pwmbus_add_child(i32*, i32, i8*, i32) #1

declare dso_local %struct.pwmbus_ivars* @device_get_ivars(i32*) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32*) #1

declare dso_local i32 @bus_generic_probe(i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
