; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { %struct.TYPE_3__, i32, i32*, i32* }
%struct.TYPE_3__ = type { %struct.ipmi_softc*, i32 }

@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@ipmi_startup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't establish configuration hook\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ipmi_attached = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ipmi_softc* @device_get_softc(i32 %6)
  store %struct.ipmi_softc* %7, %struct.ipmi_softc** %4, align 8
  %8 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @INTR_TYPE_MISC, align 4
  %23 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %27 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %27, i32 0, i32 1
  %29 = call i32 @bus_setup_intr(i32 %18, i32* %21, i32 %22, i32* null, i32* %25, %struct.ipmi_softc* %26, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %12, %1
  %38 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %38, i32 0, i32 0
  %40 = call i32 @bzero(%struct.TYPE_3__* %39, i32 4)
  %41 = load i32, i32* @ipmi_startup, align 4
  %42 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %46 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.ipmi_softc* %45, %struct.ipmi_softc** %48, align 8
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %49, i32 0, i32 0
  %51 = call i64 @config_intrhook_establish(%struct.TYPE_3__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %37
  store i32 1, i32* @ipmi_attached, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %53, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.ipmi_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
