; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pccard_softc* }
%struct.pccard_softc = type { i64, i32*, i32 }
%struct.thread = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@pccard_build_cis = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @pccard_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pccard_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.pccard_softc*, %struct.pccard_softc** %17, align 8
  store %struct.pccard_softc* %18, %struct.pccard_softc** %15, align 8
  %19 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %20 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %5, align 4
  br label %85

25:                                               ; preds = %4
  %26 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %27 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @device_get_children(i32 %29, i32** %12, i32* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %85

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @M_TEMP, align 4
  %41 = call i32 @free(i32* %39, i32 %40)
  %42 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %43 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %47 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  store i32 0, i32* %5, align 4
  br label %85

48:                                               ; preds = %35
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  %55 = load i32, i32* @M_TEMP, align 4
  %56 = load i32, i32* @M_ZERO, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = or i32 %56, %57
  %59 = call i32* @malloc(i32 4, i32 %55, i32 %58)
  %60 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %61 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @pccard_build_cis, align 4
  %65 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %66 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @pccard_scan_cis(i32 %62, i32 %63, i32 %64, i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %48
  %72 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %73 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = call i32 @free(i32* %74, i32 %75)
  %77 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %78 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %85

80:                                               ; preds = %48
  %81 = load %struct.pccard_softc*, %struct.pccard_softc** %15, align 8
  %82 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %71, %38, %33, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @pccard_scan_cis(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
