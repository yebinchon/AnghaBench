; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspe_rate = type { i32, i64 }
%struct.sc_pcminfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32, i64, i32 }
%struct.sc_chinfo = type { %struct.sc_pcminfo* }

@rate_map = common dso_local global %struct.hdspe_rate* null, align 8
@HDSPE_FREQ_AIO = common dso_local global i64 0, align 8
@HDSPE_FREQ_MASK = common dso_local global i64 0, align 8
@HDSPE_CONTROL_REG = common dso_local global i32 0, align 4
@HDSPE_FREQ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @hdspechan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspechan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pcminfo*, align 8
  %8 = alloca %struct.hdspe_rate*, align 8
  %9 = alloca %struct.sc_chinfo*, align 8
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %15, %struct.sc_chinfo** %9, align 8
  %16 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %17 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %16, i32 0, i32 0
  %18 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %17, align 8
  store %struct.sc_pcminfo* %18, %struct.sc_pcminfo** %7, align 8
  %19 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %20 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %19, i32 0, i32 1
  %21 = load %struct.sc_info*, %struct.sc_info** %20, align 8
  store %struct.sc_info* %21, %struct.sc_info** %10, align 8
  store %struct.hdspe_rate* null, %struct.hdspe_rate** %8, align 8
  %22 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %23 = call i32 @hdspe_running(%struct.sc_info* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %163

26:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %28, i64 %30
  %32 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %36, i64 %38
  %40 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %45, i64 %47
  store %struct.hdspe_rate* %48, %struct.hdspe_rate** %8, align 8
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %55 = icmp eq %struct.hdspe_rate* %54, null
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %103, %56
  %58 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %58, i64 %60
  %62 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %57
  %66 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %66, i64 %68
  store %struct.hdspe_rate* %69, %struct.hdspe_rate** %8, align 8
  %70 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %71 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %73, i64 %76
  %78 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %65
  %82 = load %struct.hdspe_rate*, %struct.hdspe_rate** @rate_map, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %82, i64 %85
  %87 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %90 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  %93 = ashr i32 %92, 1
  br label %95

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94, %81
  %96 = phi i32 [ %93, %81 ], [ 0, %94 ]
  %97 = add nsw i32 %72, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %106

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %57

106:                                              ; preds = %101, %57
  br label %107

107:                                              ; preds = %106, %53
  %108 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %113 [
    i32 128, label %111
    i32 129, label %111
  ]

111:                                              ; preds = %107, %107
  %112 = load i64, i64* @HDSPE_FREQ_AIO, align 8
  store i64 %112, i64* %11, align 8
  br label %114

113:                                              ; preds = %107
  br label %163

114:                                              ; preds = %111
  %115 = load i64, i64* @HDSPE_FREQ_MASK, align 8
  %116 = xor i64 %115, -1
  %117 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %118 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = and i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %122 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %129 = load i32, i32* @HDSPE_CONTROL_REG, align 4
  %130 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @hdspe_write_4(%struct.sc_info* %128, i32 %129, i64 %132)
  %134 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %135 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp sgt i32 %137, 96000
  br i1 %138, label %139, label %142

139:                                              ; preds = %114
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %140, 4
  store i32 %141, i32* %6, align 4
  br label %149

142:                                              ; preds = %114
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 48000
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = sdiv i32 %146, 2
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %139
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %11, align 8
  %153 = sdiv i64 %152, %151
  store i64 %153, i64* %11, align 8
  %154 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %155 = load i32, i32* @HDSPE_FREQ_REG, align 4
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @hdspe_write_4(%struct.sc_info* %154, i32 %155, i64 %156)
  %158 = load %struct.hdspe_rate*, %struct.hdspe_rate** %8, align 8
  %159 = getelementptr inbounds %struct.hdspe_rate, %struct.hdspe_rate* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %149, %113, %25
  %164 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  ret i32 %166
}

declare dso_local i32 @hdspe_running(%struct.sc_info*) #1

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
