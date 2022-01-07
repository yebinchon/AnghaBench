; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_check_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_check_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfi_softc*, i32, i32)* @cfi_check_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_check_erase(%struct.cfi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cfi_softc* %0, %struct.cfi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %40, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @cfi_read(%struct.cfi_softc* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  switch i64 %23, label %39 [
    i64 1, label %24
    i64 2, label %29
    i64 4, label %34
  ]

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %50

28:                                               ; preds = %24
  br label %40

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 65535
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %50

33:                                               ; preds = %29
  br label %40

34:                                               ; preds = %15
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %50

38:                                               ; preds = %34
  br label %40

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39, %38, %33, %28
  %41 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %37, %32, %27
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @cfi_read(%struct.cfi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
