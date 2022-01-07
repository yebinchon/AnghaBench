; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uninorth_softc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @uninorth_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninorth_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uninorth_softc*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.uninorth_softc* @device_get_softc(i32 %17)
  store %struct.uninorth_softc* %18, %struct.uninorth_softc** %15, align 8
  %19 = load %struct.uninorth_softc*, %struct.uninorth_softc** %15, align 8
  %20 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, 7
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %16, align 8
  %26 = load %struct.uninorth_softc*, %struct.uninorth_softc** %15, align 8
  %27 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock_spin(i32* %27)
  %29 = load %struct.uninorth_softc*, %struct.uninorth_softc** %15, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @uninorth_enable_config(%struct.uninorth_softc* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %7
  %37 = load i32, i32* %14, align 4
  switch i32 %37, label %50 [
    i32 1, label %38
    i32 2, label %42
    i32 4, label %46
  ]

38:                                               ; preds = %36
  %39 = load i64, i64* %16, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @out8rb(i64 %39, i32 %40)
  br label %50

42:                                               ; preds = %36
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @out16rb(i64 %43, i32 %44)
  br label %50

46:                                               ; preds = %36
  %47 = load i64, i64* %16, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @out32rb(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %36, %46, %42, %38
  br label %51

51:                                               ; preds = %50, %7
  %52 = load %struct.uninorth_softc*, %struct.uninorth_softc** %15, align 8
  %53 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock_spin(i32* %53)
  ret void
}

declare dso_local %struct.uninorth_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @uninorth_enable_config(%struct.uninorth_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @out8rb(i64, i32) #1

declare dso_local i32 @out16rb(i64, i32) #1

declare dso_local i32 @out32rb(i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
