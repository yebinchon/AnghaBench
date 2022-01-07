; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan1370_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan1370_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i64, %struct.TYPE_2__, %struct.es_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.es_info = type { i32 }

@ES_DAC1 = common dso_local global i64 0, align 8
@CTRL_WTSRSEL = common dso_local global i32 0, align 4
@CTRL_SH_WTSRSEL = common dso_local global i32 0, align 4
@CTRL_PCLKDIV = common dso_local global i32 0, align 4
@CTRL_SH_PCLKDIV = common dso_local global i32 0, align 4
@ES1370_REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @eschan1370_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eschan1370_setspeed(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.es_chinfo*, align 8
  %9 = alloca %struct.es_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.es_chinfo*
  store %struct.es_chinfo* %11, %struct.es_chinfo** %8, align 8
  %12 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %12, i32 0, i32 2
  %14 = load %struct.es_info*, %struct.es_info** %13, align 8
  store %struct.es_info* %14, %struct.es_info** %9, align 8
  %15 = load %struct.es_info*, %struct.es_info** %9, align 8
  %16 = call i32 @ES_LOCK(%struct.es_info* %15)
  %17 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %18 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %22 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.es_info*, %struct.es_info** %9, align 8
  %28 = call i32 @ES_UNLOCK(%struct.es_info* %27)
  %29 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %30 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  br label %134

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %36 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %42 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %48 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %54 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %59 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ES_DAC1, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %57
  %64 = load i32, i32* @CTRL_WTSRSEL, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.es_info*, %struct.es_info** %9, align 8
  %67 = getelementptr inbounds %struct.es_info, %struct.es_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %70, 8268
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  store i64 5512, i64* %7, align 8
  %73 = load i32, i32* @CTRL_SH_WTSRSEL, align 4
  %74 = shl i32 0, %73
  %75 = load %struct.es_info*, %struct.es_info** %9, align 8
  %76 = getelementptr inbounds %struct.es_info, %struct.es_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %108

79:                                               ; preds = %63
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %80, 16537
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  store i64 11025, i64* %7, align 8
  %83 = load i32, i32* @CTRL_SH_WTSRSEL, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.es_info*, %struct.es_info** %9, align 8
  %86 = getelementptr inbounds %struct.es_info, %struct.es_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %107

89:                                               ; preds = %79
  %90 = load i64, i64* %7, align 8
  %91 = icmp slt i64 %90, 33075
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  store i64 22050, i64* %7, align 8
  %93 = load i32, i32* @CTRL_SH_WTSRSEL, align 4
  %94 = shl i32 2, %93
  %95 = load %struct.es_info*, %struct.es_info** %9, align 8
  %96 = getelementptr inbounds %struct.es_info, %struct.es_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %106

99:                                               ; preds = %89
  store i64 44100, i64* %7, align 8
  %100 = load i32, i32* @CTRL_SH_WTSRSEL, align 4
  %101 = shl i32 3, %100
  %102 = load %struct.es_info*, %struct.es_info** %9, align 8
  %103 = getelementptr inbounds %struct.es_info, %struct.es_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107, %72
  br label %124

109:                                              ; preds = %57
  %110 = load i32, i32* @CTRL_PCLKDIV, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.es_info*, %struct.es_info** %9, align 8
  %113 = getelementptr inbounds %struct.es_info, %struct.es_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @DAC2_SRTODIV(i64 %116)
  %118 = load i32, i32* @CTRL_SH_PCLKDIV, align 4
  %119 = shl i32 %117, %118
  %120 = load %struct.es_info*, %struct.es_info** %9, align 8
  %121 = getelementptr inbounds %struct.es_info, %struct.es_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %109, %108
  %125 = load %struct.es_info*, %struct.es_info** %9, align 8
  %126 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %127 = load %struct.es_info*, %struct.es_info** %9, align 8
  %128 = getelementptr inbounds %struct.es_info, %struct.es_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @es_wr(%struct.es_info* %125, i32 %126, i32 %129, i32 4)
  %131 = load %struct.es_info*, %struct.es_info** %9, align 8
  %132 = call i32 @ES_UNLOCK(%struct.es_info* %131)
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %124, %26
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

declare dso_local i32 @DAC2_SRTODIV(i64) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
