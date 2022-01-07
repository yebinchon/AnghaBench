; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmx_softc = type { i32*, i32, i32*, i32, i32*, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmx_release_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmx_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cmx_softc* @device_get_softc(i32 %4)
  store %struct.cmx_softc* %5, %struct.cmx_softc** %3, align 8
  %6 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %6, i32 0, i32 5
  %8 = call i32 @mtx_destroy(i32* %7)
  %9 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %20 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bus_deactivate_resource(i32 %14, i32 %15, i32 %18, i32* %21)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @SYS_RES_IOPORT, align 4
  %25 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %29 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 %27, i32* %30)
  %32 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.cmx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_deactivate_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
