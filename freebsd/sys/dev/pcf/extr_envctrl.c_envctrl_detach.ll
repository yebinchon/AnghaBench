; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_envctrl.c_envctrl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_envctrl.c_envctrl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i64, i64, i32, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @envctrl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pcf_softc* @DEVTOSOFTC(i32 %6)
  store %struct.pcf_softc* %7, %struct.pcf_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %16 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_delete_child(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %13
  %23 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %24 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_teardown_intr(i32 %28, i64 %31, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %42 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %27, %22
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %49 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %52 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i64 %53)
  %55 = load %struct.pcf_softc*, %struct.pcf_softc** %4, align 8
  %56 = getelementptr inbounds %struct.pcf_softc, %struct.pcf_softc* %55, i32 0, i32 2
  %57 = call i32 @mtx_destroy(i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %20, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.pcf_softc* @DEVTOSOFTC(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
