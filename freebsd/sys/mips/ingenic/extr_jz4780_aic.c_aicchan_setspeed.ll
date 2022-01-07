; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic_rate = type { i32 }
%struct.sc_pcminfo = type { %struct.aic_softc* }
%struct.aic_softc = type { %struct.aic_rate* }
%struct.sc_chinfo = type { %struct.sc_pcminfo* }

@rate_map = common dso_local global %struct.aic_rate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aicchan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aicchan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pcminfo*, align 8
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.aic_rate*, align 8
  %10 = alloca %struct.aic_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %14, %struct.sc_chinfo** %8, align 8
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 0
  %17 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %16, align 8
  store %struct.sc_pcminfo* %17, %struct.sc_pcminfo** %7, align 8
  %18 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %18, i32 0, i32 0
  %20 = load %struct.aic_softc*, %struct.aic_softc** %19, align 8
  store %struct.aic_softc* %20, %struct.aic_softc** %10, align 8
  store %struct.aic_rate* null, %struct.aic_rate** %9, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %44, %3
  %22 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %22, i64 %24
  %26 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %30, i64 %32
  %34 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %39, i64 %41
  store %struct.aic_rate* %42, %struct.aic_rate** %9, align 8
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.aic_rate*, %struct.aic_rate** %9, align 8
  %49 = icmp eq %struct.aic_rate* %48, null
  br i1 %49, label %50, label %101

50:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %97, %50
  %52 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %52, i64 %54
  %56 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %51
  %60 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %60, i64 %62
  store %struct.aic_rate* %63, %struct.aic_rate** %9, align 8
  %64 = load %struct.aic_rate*, %struct.aic_rate** %9, align 8
  %65 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %67, i64 %70
  %72 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %59
  %76 = load %struct.aic_rate*, %struct.aic_rate** @rate_map, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %76, i64 %79
  %81 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.aic_rate*, %struct.aic_rate** %9, align 8
  %84 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = ashr i32 %86, 1
  br label %89

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %75
  %90 = phi i32 [ %87, %75 ], [ 0, %88 ]
  %91 = add nsw i32 %66, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %100

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %51

100:                                              ; preds = %95, %51
  br label %101

101:                                              ; preds = %100, %47
  %102 = load %struct.aic_rate*, %struct.aic_rate** %9, align 8
  %103 = load %struct.aic_softc*, %struct.aic_softc** %10, align 8
  %104 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %103, i32 0, i32 0
  store %struct.aic_rate* %102, %struct.aic_rate** %104, align 8
  %105 = load %struct.aic_rate*, %struct.aic_rate** %9, align 8
  %106 = getelementptr inbounds %struct.aic_rate, %struct.aic_rate* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
