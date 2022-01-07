; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_detach_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_detach_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf10bmac_detach_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf10bmac_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.nf10bmac_softc* @device_get_softc(i32 %4)
  store %struct.nf10bmac_softc* %5, %struct.nf10bmac_softc** %3, align 8
  %6 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %7 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %6, i32 0, i32 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_IRQ, align 4
  %13 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %14 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %17 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bus_release_resource(i32 %11, i32 %12, i32 %15, i32* %18)
  %20 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %20, i32 0, i32 8
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %24 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %31 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 %32, i32* %35)
  %37 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %27, %22
  %40 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %41 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %51 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %49, i32* %52)
  %54 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %55 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %44, %39
  %57 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %58 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %65 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %68 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %66, i32* %69)
  %71 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %72 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %61, %56
  %74 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %75 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @SYS_RES_MEMORY, align 4
  %81 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %82 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %85 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_release_resource(i32 %79, i32 %80, i32 %83, i32* %86)
  %88 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %3, align 8
  %89 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %78, %73
  ret void
}

declare dso_local %struct.nf10bmac_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
