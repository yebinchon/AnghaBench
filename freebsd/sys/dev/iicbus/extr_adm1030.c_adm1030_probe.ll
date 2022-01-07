; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adm1030.c_adm1030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1030_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adm1030\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"platform-getTemp\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"G4 MDD Fan driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adm1030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1030_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adm1030_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @ofw_bus_get_name(i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @ofw_bus_get_compat(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @OF_getprop(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 4)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.adm1030_softc* @device_get_softc(i32 %36)
  store %struct.adm1030_softc* %37, %struct.adm1030_softc** %6, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.adm1030_softc*, %struct.adm1030_softc** %6, align 8
  %40 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @iicbus_get_addr(i32 %41)
  %43 = load %struct.adm1030_softc*, %struct.adm1030_softc** %6, align 8
  %44 = getelementptr inbounds %struct.adm1030_softc, %struct.adm1030_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_set_desc(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %33, %27, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local %struct.adm1030_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
