; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sbc_softc = type { i32*, i32*, i32*, %struct.resource**, %struct.resource**, %struct.resource** }

@IO_MAX = common dso_local global i32 0, align 4
@DRQ_MAX = common dso_local global i32 0, align 4
@IRQ_MAX = common dso_local global i32 0, align 4
@INTR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @sbc_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @sbc_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sbc_softc*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.resource**, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.sbc_softc* @device_get_softc(i32 %23)
  store %struct.sbc_softc* %24, %struct.sbc_softc** %18, align 8
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %54 [
    i32 129, label %26
    i32 130, label %35
    i32 128, label %44
  ]

26:                                               ; preds = %8
  %27 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %28 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %19, align 8
  %30 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %31 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %30, i32 0, i32 5
  %32 = load %struct.resource**, %struct.resource*** %31, align 8
  store %struct.resource** %32, %struct.resource*** %22, align 8
  %33 = load i32, i32* @IO_MAX, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %55

35:                                               ; preds = %8
  %36 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %37 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %19, align 8
  %39 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %40 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %39, i32 0, i32 4
  %41 = load %struct.resource**, %struct.resource*** %40, align 8
  store %struct.resource** %41, %struct.resource*** %22, align 8
  %42 = load i32, i32* @DRQ_MAX, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %55

44:                                               ; preds = %8
  %45 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %46 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %19, align 8
  %48 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %49 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %48, i32 0, i32 3
  %50 = load %struct.resource**, %struct.resource*** %49, align 8
  store %struct.resource** %50, %struct.resource*** %22, align 8
  %51 = load i32, i32* @IRQ_MAX, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* @INTR_MAX, align 4
  store i32 %53, i32* %21, align 4
  br label %55

54:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %84

55:                                               ; preds = %44, %35, %26
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %19, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60, %55
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %84

70:                                               ; preds = %60
  %71 = load i32*, i32** %19, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.resource**, %struct.resource*** %22, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.resource*, %struct.resource** %78, i64 %81
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  store %struct.resource* %83, %struct.resource** %9, align 8
  br label %84

84:                                               ; preds = %70, %69, %54
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %85
}

declare dso_local %struct.sbc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
