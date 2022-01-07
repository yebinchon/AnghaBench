; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.powermac_nvram_softc* }
%struct.powermac_nvram_softc = type { i32, i64 }
%struct.uio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @powermac_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermac_nvram_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.powermac_nvram_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %12, align 8
  store %struct.powermac_nvram_softc* %13, %struct.powermac_nvram_softc** %10, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %56, %3
  %15 = load %struct.uio*, %struct.uio** %5, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %10, align 8
  %21 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub i64 8, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.uio*, %struct.uio** %5, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @MIN(i64 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %10, align 8
  %35 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %10, align 8
  %38 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.uio*, %struct.uio** %5, align 8
  %45 = call i32 @uiomove(i8* %42, i32 %43, %struct.uio* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %57

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %10, align 8
  %52 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %56

55:                                               ; preds = %19
  br label %57

56:                                               ; preds = %49
  br label %14

57:                                               ; preds = %55, %48, %14
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
