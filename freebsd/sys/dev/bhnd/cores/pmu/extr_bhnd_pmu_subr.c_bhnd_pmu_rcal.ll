; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_rcal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_rcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bhnd_pmu_softc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BHND_PMU_CHIP_CONTROL_ADDR = common dso_local global i32 0, align 4
@BHND_PMU_CHIP_CONTROL_DATA = common dso_local global i32 0, align 4
@CHIPC_CST4325_RCAL_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rcal completion timeout\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"RCal completed, status 0x%x, code 0x%x\0A\00", align 1
@cc = common dso_local global %struct.TYPE_4__* null, align 8
@BHND_PMU_REG_CONTROL_ADDR = common dso_local global i32 0, align 4
@BHND_PMU_REG_CONTROL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_pmu_rcal(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %155 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %14 = load i32, i32* @BHND_PMU_CHIP_CONTROL_ADDR, align 4
  %15 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %13, i32 %14, i32 1)
  %16 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %17 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %18 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %16, i32 %17, i32 -5)
  %19 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %35

24:                                               ; preds = %12
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CHIPC_CST4325_RCAL_VALID, align 4
  %31 = call i32 @BHND_PMU_GET_BITS(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %37 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %38 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %36, i32 %37, i32 4)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %53, %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 10000000
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %56

51:                                               ; preds = %42
  %52 = call i32 @DELAY(i32 10)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %39

56:                                               ; preds = %50, %39
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 6, i32* %5, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = ashr i32 %66, 5
  %68 = and i32 %67, 15
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cc, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @R_REG(i32* %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @PMU_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %76 = load i32, i32* @BHND_PMU_REG_CONTROL_ADDR, align 4
  %77 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %75, i32 %76, i32 0)
  %78 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %79 = load i32, i32* @BHND_PMU_REG_CONTROL_DATA, align 4
  %80 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, 536870911
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 7
  %85 = shl i32 %84, 29
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %89 = load i32, i32* @BHND_PMU_REG_CONTROL_DATA, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %93 = load i32, i32* @BHND_PMU_REG_CONTROL_ADDR, align 4
  %94 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %92, i32 %93, i32 1)
  %95 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %96 = load i32, i32* @BHND_PMU_REG_CONTROL_DATA, align 4
  %97 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, -2
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = ashr i32 %100, 3
  %102 = and i32 %101, 1
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %106 = load i32, i32* @BHND_PMU_REG_CONTROL_DATA, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %110 = load i32, i32* @BHND_PMU_CHIP_CONTROL_ADDR, align 4
  %111 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %109, i32 %110, i32 0)
  %112 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %113 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %114 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, 1073741823
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 3
  %119 = shl i32 %118, 30
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %123 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %127 = load i32, i32* @BHND_PMU_CHIP_CONTROL_ADDR, align 4
  %128 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %126, i32 %127, i32 1)
  %129 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %130 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %131 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, -4
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  %135 = ashr i32 %134, 2
  %136 = and i32 %135, 3
  %137 = load i32, i32* %4, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %4, align 4
  %139 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %140 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %139, i32 %140, i32 %141)
  %143 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %144 = load i32, i32* @BHND_PMU_CHIP_CONTROL_ADDR, align 4
  %145 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %143, i32 %144, i32 0)
  %146 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %147 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %148 = call i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc* %146, i32 %147, i32 536870912)
  %149 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %150 = load i32, i32* @BHND_PMU_CHIP_CONTROL_ADDR, align 4
  %151 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %149, i32 %150, i32 1)
  %152 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %153 = load i32, i32* @BHND_PMU_CHIP_CONTROL_DATA, align 4
  %154 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %152, i32 %153, i32 -5)
  br label %156

155:                                              ; preds = %1
  br label %156

156:                                              ; preds = %155, %69
  ret void
}

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_CHIPC_READ_CHIPST(i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMU_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @R_REG(i32*) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
