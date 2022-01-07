; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_blank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator_vt.c_creatorfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.creatorfb_softc* }
%struct.creatorfb_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i64)* @creatorfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creatorfb_blank(%struct.vt_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.creatorfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %9 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %8, i32 0, i32 0
  %10 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %9, align 8
  store %struct.creatorfb_softc* %10, %struct.creatorfb_softc** %5, align 8
  %11 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %12 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %44, %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %21 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %27 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %30 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %34 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.creatorfb_softc*, %struct.creatorfb_softc** %5, align 8
  %40 = getelementptr inbounds %struct.creatorfb_softc, %struct.creatorfb_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_space_set_region_4(i32 %28, i32 %31, i32 %37, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %18

47:                                               ; preds = %18
  ret void
}

declare dso_local i32 @bus_space_set_region_4(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
