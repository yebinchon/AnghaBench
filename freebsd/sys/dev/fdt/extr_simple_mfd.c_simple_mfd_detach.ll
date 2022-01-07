; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_mfd_softc = type { i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@M_SYSCON = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simple_mfd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_mfd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.simple_mfd_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.simple_mfd_softc* @device_get_softc(i32 %4)
  store %struct.simple_mfd_softc* %5, %struct.simple_mfd_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @ofw_bus_is_compatible(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @syscon_unregister(i32* %17)
  %19 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @M_SYSCON, align 4
  %23 = call i32 @free(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %9
  %25 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %26 = call i32 @SYSCON_LOCK_DESTROY(%struct.simple_mfd_softc* %25)
  %27 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 0, i32* %36)
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local %struct.simple_mfd_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @syscon_unregister(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @SYSCON_LOCK_DESTROY(%struct.simple_mfd_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
