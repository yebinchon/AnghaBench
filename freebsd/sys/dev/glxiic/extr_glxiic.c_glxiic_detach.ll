; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32*, i32, i32*, i32*, i32, i32*, i32, i32, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @glxiic_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.glxiic_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.glxiic_softc* @device_get_softc(i32 %5)
  store %struct.glxiic_softc* %6, %struct.glxiic_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @bus_generic_detach(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %14 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %13, i32 0, i32 9
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %20 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @device_delete_child(i32 %18, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %12
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %26 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %25, i32 0, i32 8
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %29 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %34 = call i32 @glxiic_smb_disable(%struct.glxiic_softc* %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @SYS_RES_IOPORT, align 4
  %37 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %38 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %41 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %35, i32 %36, i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %32, %24
  %45 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %46 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %51 = call i32 @glxiic_gpio_disable(%struct.glxiic_softc* %50)
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SYS_RES_IOPORT, align 4
  %54 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %55 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %58 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %63 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %2, align 4
  %68 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %69 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %72 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_teardown_intr(i32 %67, i32* %70, i32* %73)
  br label %75

75:                                               ; preds = %66, %61
  %76 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %77 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %84 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %87 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 %85, i32* %88)
  br label %90

90:                                               ; preds = %80, %75
  %91 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %92 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @glxiic_smb_map_interrupt(i32 %93)
  %95 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %96 = call i32 @GLXIIC_LOCK_DESTROY(%struct.glxiic_softc* %95)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.glxiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @glxiic_smb_disable(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @glxiic_gpio_disable(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @glxiic_smb_map_interrupt(i32) #1

declare dso_local i32 @GLXIIC_LOCK_DESTROY(%struct.glxiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
