; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcht_softc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @cpcht_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcht_read_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpcht_softc*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.cpcht_softc* @device_get_softc(i32 %16)
  store %struct.cpcht_softc* %17, %struct.cpcht_softc** %14, align 8
  %18 = load %struct.cpcht_softc*, %struct.cpcht_softc** %14, align 8
  %19 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 31
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 7
  %26 = or i32 %23, %25
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %20, %30
  store i64 %31, i64* %15, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %6
  %35 = load %struct.cpcht_softc*, %struct.cpcht_softc** %14, align 8
  %36 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %34
  store i32 -1, i32* %7, align 4
  br label %68

46:                                               ; preds = %42, %6
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = add i64 16777216, %52
  %54 = load i64, i64* %15, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %15, align 8
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %13, align 4
  switch i32 %57, label %67 [
    i32 1, label %58
    i32 2, label %61
    i32 4, label %64
  ]

58:                                               ; preds = %56
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @in8rb(i64 %59)
  store i32 %60, i32* %7, align 4
  br label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @in16rb(i64 %62)
  store i32 %63, i32* %7, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @in32rb(i64 %65)
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %56
  store i32 -1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64, %61, %58, %45
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @in8rb(i64) #1

declare dso_local i32 @in16rb(i64) #1

declare dso_local i32 @in32rb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
