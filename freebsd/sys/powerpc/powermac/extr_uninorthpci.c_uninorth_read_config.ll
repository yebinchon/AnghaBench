; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uninorth_softc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @uninorth_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_read_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uninorth_softc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.uninorth_softc* @device_get_softc(i32 %16)
  store %struct.uninorth_softc* %17, %struct.uninorth_softc** %13, align 8
  %18 = load %struct.uninorth_softc*, %struct.uninorth_softc** %13, align 8
  %19 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %25 = load %struct.uninorth_softc*, %struct.uninorth_softc** %13, align 8
  %26 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock_spin(i32* %26)
  %28 = load %struct.uninorth_softc*, %struct.uninorth_softc** %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @uninorth_enable_config(%struct.uninorth_softc* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %6
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %46 [
    i32 1, label %37
    i32 2, label %40
    i32 4, label %43
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @in8rb(i64 %38)
  store i32 %39, i32* %15, align 4
  br label %46

40:                                               ; preds = %35
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @in16rb(i64 %41)
  store i32 %42, i32* %15, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @in32rb(i64 %44)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %35, %43, %40, %37
  br label %47

47:                                               ; preds = %46, %6
  %48 = load %struct.uninorth_softc*, %struct.uninorth_softc** %13, align 8
  %49 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock_spin(i32* %49)
  %51 = load i32, i32* %15, align 4
  ret i32 %51
}

declare dso_local %struct.uninorth_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @uninorth_enable_config(%struct.uninorth_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @in8rb(i64) #1

declare dso_local i32 @in16rb(i64) #1

declare dso_local i32 @in32rb(i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
