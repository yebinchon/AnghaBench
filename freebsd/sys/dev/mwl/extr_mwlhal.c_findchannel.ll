; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_findchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_findchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_channel = type { i32 }
%struct.mwl_hal_priv = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.mwl_hal_channel* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@MWL_FREQ_BAND_2DOT4GHZ = common dso_local global i64 0, align 8
@MWL_CH_40_MHz_WIDTH = common dso_local global i64 0, align 8
@MWL_EXT_CH_BELOW_CTRL_CH = common dso_local global i64 0, align 8
@MWL_FREQ_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwl_hal_channel* (%struct.mwl_hal_priv*, %struct.TYPE_7__*)* @findchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwl_hal_channel* @findchannel(%struct.mwl_hal_priv* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.mwl_hal_priv*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mwl_hal_channel*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MWL_FREQ_BAND_2DOT4GHZ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MWL_CH_40_MHz_WIDTH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %28, i32 0, i32 3
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MWL_EXT_CH_BELOW_CTRL_CH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %27
  br label %43

40:                                               ; preds = %18
  %41 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %41, i32 0, i32 2
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %6, align 8
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %52, i64 %54
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi %struct.mwl_hal_channel* [ %55, %49 ], [ null, %56 ]
  store %struct.mwl_hal_channel* %58, %struct.mwl_hal_channel** %5, align 8
  br label %130

59:                                               ; preds = %2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MWL_FREQ_BAND_5GHZ, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %128

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MWL_CH_40_MHz_WIDTH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %74, i32 0, i32 1
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %6, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MWL_EXT_CH_BELOW_CTRL_CH, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %73
  br label %89

86:                                               ; preds = %66
  %87 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %88 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %87, i32 0, i32 0
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %6, align 8
  br label %89

89:                                               ; preds = %86, %85
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %99, i64 %101
  %103 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %112

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %90

112:                                              ; preds = %107, %90
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %121, i64 %123
  br label %126

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi %struct.mwl_hal_channel* [ %124, %118 ], [ null, %125 ]
  store %struct.mwl_hal_channel* %127, %struct.mwl_hal_channel** %5, align 8
  br label %129

128:                                              ; preds = %59
  store %struct.mwl_hal_channel* null, %struct.mwl_hal_channel** %5, align 8
  br label %129

129:                                              ; preds = %128, %126
  br label %130

130:                                              ; preds = %129, %57
  %131 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %5, align 8
  ret %struct.mwl_hal_channel* %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
