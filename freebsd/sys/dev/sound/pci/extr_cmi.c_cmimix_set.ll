; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmimix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64 }
%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32 }

@cmt = common dso_local global %struct.TYPE_2__* null, align 8
@CMPCI_NON_SB16_CONTROL = common dso_local global i64 0, align 8
@CMPCI_REG_AUX_MIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Mixer stereo write dev %d reg 0x%02x value 0x%02x:0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Mixer mono write dev %d reg 0x%02x value 0x%02x:0x%02x\0A\00", align 1
@CMPCI_SB16_MIXER_OUTMIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @cmimix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmimix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %16 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %15)
  store %struct.sc_info* %16, %struct.sc_info** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CMPCI_NON_SB16_CONTROL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %4
  %34 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %35 = load i32, i32* @CMPCI_REG_AUX_MIC, align 4
  %36 = call i32 @cmi_rd(%struct.sc_info* %34, i32 %35, i32 1)
  %37 = and i32 %36, 240
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %13, align 4
  %40 = mul i32 %38, %39
  %41 = udiv i32 %40, 100
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 1
  %44 = load i32, i32* %12, align 4
  %45 = xor i32 %44, -1
  %46 = lshr i32 %45, 3
  %47 = or i32 %43, %46
  %48 = and i32 %47, 15
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %52 = load i32, i32* @CMPCI_REG_AUX_MIC, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @cmi_wr(%struct.sc_info* %51, i32 %52, i32 %53, i32 1)
  store i32 0, i32* %5, align 4
  br label %177

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %56, %57
  %59 = udiv i32 %58, 100
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 8, %65
  %67 = shl i32 %59, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %55
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul i32 %76, %77
  %79 = udiv i32 %78, 100
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 8, %85
  %87 = shl i32 %79, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @MIXER_GAIN_REG_RTOL(i64 %94)
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @cmimix_wr(%struct.sc_info* %88, i32 %95, i32 %96)
  %98 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @cmimix_wr(%struct.sc_info* %98, i32 %105, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @MIXER_GAIN_REG_RTOL(i64 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %115, i32 %116, i32 %117)
  %119 = call i32 @DEBMIX(i32 %118)
  br label %144

120:                                              ; preds = %55
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @cmimix_wr(%struct.sc_info* %122, i32 %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %139, i32 %140, i32 %141)
  %143 = call i32 @DEBMIX(i32 %142)
  br label %144

144:                                              ; preds = %120, %75
  %145 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %146 = load i32, i32* @CMPCI_SB16_MIXER_OUTMIX, align 4
  %147 = call i32 @cmimix_rd(%struct.sc_info* %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %155 = load i32, i32* %7, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %172

163:                                              ; preds = %150, %144
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmt, align 8
  %165 = load i32, i32* %7, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %163, %153
  %173 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %174 = load i32, i32* @CMPCI_SB16_MIXER_OUTMIX, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @cmimix_wr(%struct.sc_info* %173, i32 %174, i32 %175)
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %172, %33
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @cmi_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cmi_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @cmimix_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @MIXER_GAIN_REG_RTOL(i64) #1

declare dso_local i32 @DEBMIX(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cmimix_rd(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
