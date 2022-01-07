; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_grackle_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_grackle_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grackle_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @grackle_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grackle_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.grackle_softc*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.grackle_softc* @device_get_softc(i32 %17)
  store %struct.grackle_softc* %18, %struct.grackle_softc** %15, align 8
  %19 = load %struct.grackle_softc*, %struct.grackle_softc** %15, align 8
  %20 = getelementptr inbounds %struct.grackle_softc, %struct.grackle_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %16, align 8
  %26 = load %struct.grackle_softc*, %struct.grackle_softc** %15, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @grackle_enable_config(%struct.grackle_softc* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %7
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %53 [
    i32 1, label %35
    i32 2, label %41
    i32 4, label %47
  ]

35:                                               ; preds = %33
  %36 = load i64, i64* %16, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @out8rb(i64 %36, i32 %37)
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @in8rb(i64 %39)
  br label %53

41:                                               ; preds = %33
  %42 = load i64, i64* %16, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @out16rb(i64 %42, i32 %43)
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @in16rb(i64 %45)
  br label %53

47:                                               ; preds = %33
  %48 = load i64, i64* %16, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @out32rb(i64 %48, i32 %49)
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @in32rb(i64 %51)
  br label %53

53:                                               ; preds = %33, %47, %41, %35
  br label %54

54:                                               ; preds = %53, %7
  %55 = load %struct.grackle_softc*, %struct.grackle_softc** %15, align 8
  %56 = call i32 @grackle_disable_config(%struct.grackle_softc* %55)
  ret void
}

declare dso_local %struct.grackle_softc* @device_get_softc(i32) #1

declare dso_local i64 @grackle_enable_config(%struct.grackle_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @out8rb(i64, i32) #1

declare dso_local i32 @in8rb(i64) #1

declare dso_local i32 @out16rb(i64, i32) #1

declare dso_local i32 @in16rb(i64) #1

declare dso_local i32 @out32rb(i64, i32) #1

declare dso_local i32 @in32rb(i64) #1

declare dso_local i32 @grackle_disable_config(%struct.grackle_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
