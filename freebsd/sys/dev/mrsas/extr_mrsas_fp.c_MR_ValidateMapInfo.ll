; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_ValidateMapInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_ValidateMapInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"map size %x not matching ld count\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"span map= %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"pDrvRaidMap->totalSize=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MR_ValidateMapInfo(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %9 = icmp ne %struct.mrsas_softc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %103

11:                                               ; preds = %1
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %13 = call i64 @MR_PopulateDrvRaidMap(%struct.mrsas_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %103

16:                                               ; preds = %11
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 7
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %4, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %5, align 8
  %29 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %29, i32 0, i32 7
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 6
  %43 = ptrtoint i32* %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %16
  store i32 8, i32* %6, align 4
  br label %64

49:                                               ; preds = %16
  %50 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 4, i32* %6, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = add i64 0, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %80 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 1, i32* %2, align 4
  br label %103

87:                                               ; preds = %64
  %88 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mr_update_span_set(%struct.TYPE_5__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mrsas_update_load_balance_params(%struct.mrsas_softc* %97, %struct.TYPE_5__* %98, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %96, %70, %15, %10
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @MR_PopulateDrvRaidMap(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mr_update_span_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mrsas_update_load_balance_params(%struct.mrsas_softc*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
