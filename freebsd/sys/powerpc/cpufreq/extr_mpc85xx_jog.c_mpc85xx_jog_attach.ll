; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i64 }
%struct.mpc85xx_jog_softc = type { i32, i32, i32, i32, i32 }
%struct.mpc85xx_constraints = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"No CPU device tree node!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@GUTS_PORPLLSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_jog_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_jog_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_compat_data*, align 8
  %5 = alloca %struct.mpc85xx_jog_softc*, align 8
  %6 = alloca %struct.mpc85xx_constraints*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mpc85xx_jog_softc* @device_get_softc(i32 %9)
  store %struct.mpc85xx_jog_softc* %10, %struct.mpc85xx_jog_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = call %struct.ofw_compat_data* (...) @mpc85xx_jog_devcompat()
  store %struct.ofw_compat_data* %14, %struct.ofw_compat_data** %4, align 8
  %15 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %4, align 8
  %16 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mpc85xx_constraints*
  store %struct.mpc85xx_constraints* %18, %struct.mpc85xx_constraints** %6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = call i64 @ofw_bus_get_node(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %31 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %30, i32 0, i32 2
  %32 = call i32 @OF_getencprop(i64 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %31, i32 4)
  %33 = load i32, i32* @GUTS_PORPLLSR, align 4
  %34 = call i32 @ccsr_read4(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %37 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PMJCR_GET_CORE_MULT(i32 %35, i32 %38)
  %40 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %41 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mpc85xx_constraints*, %struct.mpc85xx_constraints** %6, align 8
  %43 = getelementptr inbounds %struct.mpc85xx_constraints, %struct.mpc85xx_constraints* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %46 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mpc85xx_constraints*, %struct.mpc85xx_constraints** %6, align 8
  %48 = getelementptr inbounds %struct.mpc85xx_constraints, %struct.mpc85xx_constraints* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %5, align 8
  %51 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @cpufreq_register(i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %28, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.mpc85xx_jog_softc* @device_get_softc(i32) #1

declare dso_local %struct.ofw_compat_data* @mpc85xx_jog_devcompat(...) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @ccsr_read4(i32) #1

declare dso_local i32 @PMJCR_GET_CORE_MULT(i32, i32) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
