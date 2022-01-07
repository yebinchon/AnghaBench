; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_ring_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_ring_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.dwmmc_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"nsegs %d seg0len %lu\0A\00", align 1
@DES0_OWN = common dso_local global i32 0, align 4
@DES0_DIC = common dso_local global i32 0, align 4
@DES0_CH = common dso_local global i32 0, align 4
@DES0_FS = common dso_local global i32 0, align 4
@DES0_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @dwmmc_ring_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmmc_ring_setup(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwmmc_softc*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %112

14:                                               ; preds = %4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.dwmmc_softc*
  store %struct.dwmmc_softc* %16, %struct.dwmmc_softc** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %109, %14
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %23
  %28 = load i32, i32* @DES0_OWN, align 4
  %29 = load i32, i32* @DES0_DIC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DES0_CH, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %34 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %47 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %45, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %60 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %27
  %69 = load i32, i32* @DES0_FS, align 4
  %70 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %71 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %69
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %68, %27
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %79
  %85 = load i32, i32* @DES0_DIC, align 4
  %86 = load i32, i32* @DES0_CH, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %90 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %88
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @DES0_LD, align 4
  %99 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %9, align 8
  %100 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %98
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %84, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %23

112:                                              ; preds = %13, %23
  ret void
}

declare dso_local i32 @dprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
