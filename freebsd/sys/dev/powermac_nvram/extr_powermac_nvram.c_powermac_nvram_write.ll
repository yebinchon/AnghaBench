; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.powermac_nvram_softc* }
%struct.powermac_nvram_softc = type { i32, i64 }
%struct.uio = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @powermac_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermac_nvram_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.powermac_nvram_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %13, align 8
  store %struct.powermac_nvram_softc* %14, %struct.powermac_nvram_softc** %11, align 8
  %15 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %11, align 8
  %16 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %65, %22
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %11, align 8
  %30 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 8, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %28
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @MIN(i64 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %11, align 8
  %44 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %11, align 8
  %47 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.uio*, %struct.uio** %6, align 8
  %54 = call i32 @uiomove(i8* %51, i32 %52, %struct.uio* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %66

58:                                               ; preds = %37
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.powermac_nvram_softc*, %struct.powermac_nvram_softc** %11, align 8
  %61 = getelementptr inbounds %struct.powermac_nvram_softc, %struct.powermac_nvram_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %65

64:                                               ; preds = %28
  br label %66

65:                                               ; preds = %58
  br label %23

66:                                               ; preds = %64, %57, %23
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
