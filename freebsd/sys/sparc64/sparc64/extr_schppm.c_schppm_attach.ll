; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_schppm.c_schppm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_schppm.c_schppm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schppm_softc = type { i32 }

@schppm_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"running at \00", align 1
@SCHPPM_ESTAR = common dso_local global i32 0, align 4
@SCHPPM_ESTAR_CTRL = common dso_local global i32 0, align 4
@SCHPPM_ESTAR_CTRL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1/32\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @schppm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schppm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.schppm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.schppm_softc* @device_get_softc(i32 %5)
  store %struct.schppm_softc* %6, %struct.schppm_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @schppm_res_spec, align 4
  %9 = load %struct.schppm_softc*, %struct.schppm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.schppm_softc, %struct.schppm_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @bus_alloc_resources(i32 %7, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @schppm_res_spec, align 4
  %19 = load %struct.schppm_softc*, %struct.schppm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.schppm_softc, %struct.schppm_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_release_resources(i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.schppm_softc*, %struct.schppm_softc** %4, align 8
  %31 = load i32, i32* @SCHPPM_ESTAR, align 4
  %32 = load i32, i32* @SCHPPM_ESTAR_CTRL, align 4
  %33 = call i32 @SCHPPM_READ(%struct.schppm_softc* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @SCHPPM_ESTAR_CTRL_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %38
    i32 128, label %40
  ]

36:                                               ; preds = %27
  %37 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %44

38:                                               ; preds = %27
  %39 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %44

40:                                               ; preds = %27
  %41 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %44

42:                                               ; preds = %27
  %43 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40, %38, %36
  %45 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %24
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.schppm_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @SCHPPM_READ(%struct.schppm_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
