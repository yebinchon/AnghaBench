; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_softc = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid width requested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @vmd_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_read_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmd_softc*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 20
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 %18, 15
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %11, align 4
  %22 = shl i32 %21, 12
  %23 = add nsw i32 %20, %22
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.vmd_softc* @device_get_softc(i32 %26)
  store %struct.vmd_softc* %27, %struct.vmd_softc** %14, align 8
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %56 [
    i32 4, label %29
    i32 2, label %38
    i32 1, label %47
  ]

29:                                               ; preds = %6
  %30 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %31 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %34 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @bus_space_read_4(i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %58

38:                                               ; preds = %6
  %39 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %40 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %43 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @bus_space_read_2(i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %58

47:                                               ; preds = %6
  %48 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %49 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vmd_softc*, %struct.vmd_softc** %14, align 8
  %52 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @bus_space_read_1(i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %58

56:                                               ; preds = %6
  %57 = call i32 @KASSERT(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %47, %38, %29
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
