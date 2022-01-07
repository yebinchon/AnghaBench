; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_calc_vn_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_calc_vn_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.cmng_init_input = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VN_0 = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MIN_BW_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MIN_BW_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_HIDE = common dso_local global i32 0, align 4
@DEF_MIN_RATE = common dso_local global i32 0, align 4
@CMNG_FLAGS_PER_PORT_FAIRNESS_VN = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Fairness disabled (ETS)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Fariness disabled (all MIN values are zeroes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.cmng_init_input*)* @bxe_calc_vn_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_calc_vn_min(%struct.bxe_softc* %0, %struct.cmng_init_input* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.cmng_init_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.cmng_init_input* %1, %struct.cmng_init_input** %4, align 8
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* @VN_0, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = call i32 @SC_MAX_VN_NUM(%struct.bxe_softc* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FUNC_MF_CFG_MIN_BW_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @FUNC_MF_CFG_MIN_BW_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = mul nsw i32 %29, 100
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FUNC_MF_CFG_FUNC_HIDE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %43

36:                                               ; preds = %15
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @DEF_MIN_RATE, align 4
  store i32 %40, i32* %6, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %39
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %46 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = call i64 @BXE_IS_ETS_ENABLED(%struct.bxe_softc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %62 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %67 = load i32, i32* @DBG_LOAD, align 4
  %68 = call i32 @BLOGD(%struct.bxe_softc* %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %91

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %76 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = load i32, i32* @DBG_LOAD, align 4
  %82 = call i32 @BLOGD(%struct.bxe_softc* %80, i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %90

83:                                               ; preds = %69
  %84 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %85 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %86 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %72
  br label %91

91:                                               ; preds = %90, %58
  ret void
}

declare dso_local i32 @SC_MAX_VN_NUM(%struct.bxe_softc*) #1

declare dso_local i64 @BXE_IS_ETS_ENABLED(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
