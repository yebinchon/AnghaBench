; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_sbus.c_hme_sbus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_sbus.c_hme_sbus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_sbus_softc = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.hme_softc }
%struct.hme_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hme_sbus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_sbus_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hme_sbus_softc*, align 8
  %4 = alloca %struct.hme_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.hme_sbus_softc* @device_get_softc(i32 %5)
  store %struct.hme_sbus_softc* %6, %struct.hme_sbus_softc** %3, align 8
  %7 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %8 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %7, i32 0, i32 7
  store %struct.hme_softc* %8, %struct.hme_softc** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_teardown_intr(i32 %9, i32* %12, i32 %15)
  %17 = load %struct.hme_softc*, %struct.hme_softc** %4, align 8
  %18 = call i32 @hme_detach(%struct.hme_softc* %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @rman_get_rid(i32* %23)
  %25 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_release_resource(i32 %19, i32 %20, i32 %24, i32* %27)
  %29 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %37 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @rman_get_rid(i32* %38)
  %40 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %41 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %33, %1
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %48 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @rman_get_rid(i32* %49)
  %51 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %50, i32* %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @SYS_RES_MEMORY, align 4
  %57 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %58 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @rman_get_rid(i32* %59)
  %61 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %62 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_release_resource(i32 %55, i32 %56, i32 %60, i32* %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @SYS_RES_MEMORY, align 4
  %67 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @rman_get_rid(i32* %69)
  %71 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %72 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %65, i32 %66, i32 %70, i32* %73)
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %78 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @rman_get_rid(i32* %79)
  %81 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %3, align 8
  %82 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 %80, i32* %83)
  %85 = load %struct.hme_softc*, %struct.hme_softc** %4, align 8
  %86 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %85, i32 0, i32 0
  %87 = call i32 @mtx_destroy(i32* %86)
  ret i32 0
}

declare dso_local %struct.hme_sbus_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @hme_detach(%struct.hme_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
