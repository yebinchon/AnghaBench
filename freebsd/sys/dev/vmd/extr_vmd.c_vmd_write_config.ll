; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_softc = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to specific width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @vmd_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vmd_softc*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %17, 20
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %19, 15
  %21 = add nsw i32 %18, %20
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 12
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.vmd_softc* @device_get_softc(i32 %27)
  store %struct.vmd_softc* %28, %struct.vmd_softc** %15, align 8
  %29 = load i32, i32* %14, align 4
  switch i32 %29, label %57 [
    i32 4, label %30
    i32 2, label %39
    i32 1, label %48
  ]

30:                                               ; preds = %7
  %31 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %32 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %35 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  call void @bus_space_write_4(i32 %33, i32 %36, i32 %37, i32 %38)
  br label %59

39:                                               ; preds = %7
  %40 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %41 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %44 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  call void @bus_space_write_2(i32 %42, i32 %45, i32 %46, i32 %47)
  br label %59

48:                                               ; preds = %7
  %49 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %50 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vmd_softc*, %struct.vmd_softc** %15, align 8
  %53 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %13, align 4
  call void @bus_space_write_1(i32 %51, i32 %54, i32 %55, i32 %56)
  br label %59

57:                                               ; preds = %7
  %58 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %30, %39, %48, %57
  ret void
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local void @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local void @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local void @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
