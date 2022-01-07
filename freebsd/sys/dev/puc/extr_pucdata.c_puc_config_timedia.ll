; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_timedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_timedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32* }
%struct.puc_softc = type { i64, i32 }

@puc_config_timedia.dual = internal constant [30 x i32] [i32 2, i32 16438, i32 16439, i32 16440, i32 16504, i32 16505, i32 16517, i32 16520, i32 16521, i32 20535, i32 20600, i32 20601, i32 20613, i32 24697, i32 28793, i32 32889, i32 33079, i32 33080, i32 33335, i32 33336, i32 36985, i32 37175, i32 37176, i32 37431, i32 37432, i32 41081, i32 45177, i32 49273, i32 53369, i32 0], align 16
@puc_config_timedia.quad = internal constant [23 x i32] [i32 16469, i32 16470, i32 16533, i32 16534, i32 20566, i32 33110, i32 33111, i32 33366, i32 33367, i32 36950, i32 37206, i32 37207, i32 37208, i32 37209, i32 37462, i32 37463, i32 41046, i32 41303, i32 41304, i32 41305, i32 45142, i32 45399, i32 0], align 16
@puc_config_timedia.octa = internal constant [13 x i32] [i32 16485, i32 16486, i32 20581, i32 20582, i32 33126, i32 36966, i32 37222, i32 37223, i32 37224, i32 41062, i32 41319, i32 41320, i32 0], align 16
@puc_config_timedia.subdevs = internal constant [4 x %struct.anon] [%struct.anon { i32 2, i32* getelementptr inbounds ([30 x i32], [30 x i32]* @puc_config_timedia.dual, i32 0, i32 0) }, %struct.anon { i32 4, i32* getelementptr inbounds ([23 x i32], [23 x i32]* @puc_config_timedia.quad, i32 0, i32 0) }, %struct.anon { i32 8, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @puc_config_timedia.octa, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@puc_config_timedia.desc = internal global [64 x i8] zeroinitializer, align 16
@DEFAULT_RCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timedia technology %d Port Serial\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PUC_TYPE_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_timedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_timedia(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %121 [
    i32 133, label %14
    i32 132, label %27
    i32 131, label %34
    i32 130, label %91
    i32 129, label %103
    i32 128, label %118
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @DEFAULT_RCLK, align 4
  %19 = mul nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @DEFAULT_RCLK, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  store i32 0, i32* %5, align 4
  br label %124

27:                                               ; preds = %4
  %28 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %29 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @puc_config_timedia.desc, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i64*, i64** %9, align 8
  store i64 ptrtoint ([64 x i8]* @puc_config_timedia.desc to i64), i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %124

34:                                               ; preds = %4
  %35 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %36 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_get_subdevice(i32 %37)
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %86, %34
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @puc_config_timedia.subdevs, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @puc_config_timedia.subdevs, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %47
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @puc_config_timedia.subdevs, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %59, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @puc_config_timedia.subdevs, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 16
  %76 = sext i32 %75 to i64
  %77 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %78 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %80 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %5, align 4
  br label %124

83:                                               ; preds = %58
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %39

89:                                               ; preds = %39
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %5, align 4
  br label %124

91:                                               ; preds = %4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 3
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i1 [ true, %91 ], [ %96, %94 ]
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 8, i32 0
  %101 = sext i32 %100 to i64
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  store i32 0, i32* %5, align 4
  br label %124

103:                                              ; preds = %4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 3
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 2
  br label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = ashr i32 %110, 1
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32 [ %108, %106 ], [ %111, %109 ]
  %114 = mul nsw i32 %113, 4
  %115 = add nsw i32 16, %114
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  store i32 0, i32* %5, align 4
  br label %124

118:                                              ; preds = %4
  %119 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  store i32 0, i32* %5, align 4
  br label %124

121:                                              ; preds = %4
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %118, %112, %97, %89, %70, %27, %26
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
