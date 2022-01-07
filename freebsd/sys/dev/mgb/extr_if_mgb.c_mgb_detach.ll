; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32*, i32, i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mgb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mgb_softc* @iflib_get_softc(i32 %5)
  store %struct.mgb_softc* %6, %struct.mgb_softc** %3, align 8
  %7 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %8 = call i32 @mgb_hw_teardown(%struct.mgb_softc* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %10, i32 0, i32 4
  %12 = call i32 @iflib_irq_free(i32 %9, i32* %11)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %14, i32 0, i32 3
  %16 = call i32 @iflib_irq_free(i32 %13, i32* %15)
  %17 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @device_delete_child(i32 %24, i32* %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @rman_get_rid(i32* %41)
  %43 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_release_resource(i32 %37, i32 %38, i32 %42, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %29
  %48 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %51 = call i32 @mgb_release_regs(%struct.mgb_softc* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @mgb_hw_teardown(%struct.mgb_softc*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @mgb_release_regs(%struct.mgb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
