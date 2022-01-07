; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_pcm_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@EMU_IPR_INTERVALTIMER = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@EMU_IPR_ADCBUFFULL = common dso_local global i32 0, align 4
@EMU_IPR_ADCBUFHALFFULL = common dso_local global i32 0, align 4
@EMU_IPR_EFXBUFFULL = common dso_local global i32 0, align 4
@EMU_IPR_EFXBUFHALFFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @emu_pcm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pcm_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_pcm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.emu_pcm_info*
  store %struct.emu_pcm_info* %9, %struct.emu_pcm_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %11 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snd_mtxlock(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %2
  %19 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %79, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_CHANNELS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %28 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %26
  %37 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %38 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %48 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_mtxunlock(i32 %49)
  %51 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %52 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @chn_intr(i64 %58)
  %60 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %61 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @snd_mtxlock(i32 %62)
  br label %77

64:                                               ; preds = %36
  %65 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %66 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %69 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @emu_timer_enable(i32 %67, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %64, %46
  br label %78

78:                                               ; preds = %77, %26
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %22

82:                                               ; preds = %22
  %83 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %84 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %90 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %96 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @snd_mtxunlock(i32 %97)
  %99 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %100 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @chn_intr(i64 %102)
  %104 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %105 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snd_mtxlock(i32 %106)
  br label %108

108:                                              ; preds = %94, %88, %82
  br label %109

109:                                              ; preds = %108, %2
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @EMU_IPR_ADCBUFFULL, align 4
  %112 = load i32, i32* @EMU_IPR_ADCBUFHALFFULL, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %109
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @EMU_IPR_ADCBUFFULL, align 4
  %119 = load i32, i32* @EMU_IPR_ADCBUFHALFFULL, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %125 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %116
  %130 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %131 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @snd_mtxunlock(i32 %132)
  %134 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %135 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @chn_intr(i64 %137)
  %139 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %140 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @snd_mtxlock(i32 %141)
  br label %143

143:                                              ; preds = %129, %116
  br label %144

144:                                              ; preds = %143, %109
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @EMU_IPR_EFXBUFFULL, align 4
  %147 = load i32, i32* @EMU_IPR_EFXBUFHALFFULL, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %144
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @EMU_IPR_EFXBUFFULL, align 4
  %154 = load i32, i32* @EMU_IPR_EFXBUFHALFFULL, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %160 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %151
  %165 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %166 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @snd_mtxunlock(i32 %167)
  %169 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %170 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @chn_intr(i64 %172)
  %174 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %175 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @snd_mtxlock(i32 %176)
  br label %178

178:                                              ; preds = %164, %151
  br label %179

179:                                              ; preds = %178, %144
  %180 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %181 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @snd_mtxunlock(i32 %182)
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i64) #1

declare dso_local i32 @emu_timer_enable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
