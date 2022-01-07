; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_probe_and_attach_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_probe_and_attach_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_function = type { i32*, i32, i32, i32, i32 }
%struct.pccard_softc = type { i64, i32 }

@.str = private unnamed_addr constant [82 x i8] c"function %d CCR at %d offset %#x mask %#x: %#x %#x %#x %#x, %#x %#x %#x %#x, %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.pccard_function*)* @pccard_probe_and_attach_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_probe_and_attach_child(i32 %0, i32 %1, %struct.pccard_function* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pccard_function*, align 8
  %8 = alloca %struct.pccard_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.pccard_function* %2, %struct.pccard_function** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %10)
  store %struct.pccard_softc* %11, %struct.pccard_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @device_probe(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %19 = call i32 @pccard_function_init(%struct.pccard_function* %18, i32 -1)
  %20 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %21 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @POWER_ENABLE_SOCKET(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %31 = call i64 @pccard_function_enable(%struct.pccard_function* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @pccard_set_default_descr(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @device_attach(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %43 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %46 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %49 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %52 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %55 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %58 = call i32 @pccard_ccr_read(%struct.pccard_function* %57, i32 0)
  %59 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %60 = call i32 @pccard_ccr_read(%struct.pccard_function* %59, i32 2)
  %61 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %62 = call i32 @pccard_ccr_read(%struct.pccard_function* %61, i32 4)
  %63 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %64 = call i32 @pccard_ccr_read(%struct.pccard_function* %63, i32 6)
  %65 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %66 = call i32 @pccard_ccr_read(%struct.pccard_function* %65, i32 10)
  %67 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %68 = call i32 @pccard_ccr_read(%struct.pccard_function* %67, i32 12)
  %69 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %70 = call i32 @pccard_ccr_read(%struct.pccard_function* %69, i32 14)
  %71 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %72 = call i32 @pccard_ccr_read(%struct.pccard_function* %71, i32 16)
  %73 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %74 = call i32 @pccard_ccr_read(%struct.pccard_function* %73, i32 18)
  %75 = call i32 @DEVPRINTF(i32 %74)
  store i32 0, i32* %4, align 4
  br label %92

76:                                               ; preds = %37, %33, %29
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %16
  %79 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %80 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %85 = call i32 @pccard_function_disable(%struct.pccard_function* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %88 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.pccard_function*, %struct.pccard_function** %7, align 8
  %90 = call i32 @pccard_function_free(%struct.pccard_function* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %41
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local i32 @device_probe(i32) #1

declare dso_local i32 @pccard_function_init(%struct.pccard_function*, i32) #1

declare dso_local i32 @POWER_ENABLE_SOCKET(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @pccard_function_enable(%struct.pccard_function*) #1

declare dso_local i64 @pccard_set_default_descr(i32) #1

declare dso_local i64 @device_attach(i32) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @pccard_ccr_read(%struct.pccard_function*, i32) #1

declare dso_local i32 @pccard_function_disable(%struct.pccard_function*) #1

declare dso_local i32 @pccard_function_free(%struct.pccard_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
