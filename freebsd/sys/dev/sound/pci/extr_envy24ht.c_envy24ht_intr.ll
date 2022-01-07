; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32*, i32*, i32, i32, %struct.sc_chinfo*, i32 }
%struct.sc_chinfo = type { i32, i32, i64 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24HT_MT_PCNT = common dso_local global i32 0, align 4
@ENVY24HT_CHAN_PLAY_DAC1 = common dso_local global i32 0, align 4
@ENVY24HT_CHAN_PLAY_SPDIF = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@ENVY24HT_MT_RCNT = common dso_local global i32 0, align 4
@ENVY24HT_CHAN_REC_ADC1 = common dso_local global i32 0, align 4
@ENVY24HT_CHAN_REC_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @envy24ht_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_chinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.sc_info*
  store %struct.sc_info* %10, %struct.sc_info** %3, align 8
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_mtxlock(i32 %13)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @PCMDIR_PLAY, align 4
  %17 = call i64 @envy24ht_checkintr(%struct.sc_info* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %1
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load i32, i32* @ENVY24HT_MT_PCNT, align 4
  %27 = call i32 @envy24ht_rdmt(%struct.sc_info* %25, i32 %26, i32 2)
  %28 = sub nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %30, %35
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %41, %46
  %48 = load i32, i32* %6, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @ENVY24HT_CHAN_PLAY_DAC1, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %86, %19
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ENVY24HT_CHAN_PLAY_SPDIF, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 5
  %58 = load %struct.sc_chinfo*, %struct.sc_chinfo** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %58, i64 %60
  store %struct.sc_chinfo* %61, %struct.sc_chinfo** %4, align 8
  %62 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %63 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %55
  %67 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %68 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %74 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snd_mtxunlock(i32 %75)
  %77 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %78 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @chn_intr(i32 %79)
  %81 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_mtxlock(i32 %83)
  br label %85

85:                                               ; preds = %72, %66, %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %96 = load i32, i32* @PCMDIR_PLAY, align 4
  %97 = call i32 @envy24ht_updintr(%struct.sc_info* %95, i32 %96)
  br label %98

98:                                               ; preds = %89, %1
  %99 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %100 = load i32, i32* @PCMDIR_REC, align 4
  %101 = call i64 @envy24ht_checkintr(%struct.sc_info* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %182

103:                                              ; preds = %98
  %104 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 4
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %110 = load i32, i32* @ENVY24HT_MT_RCNT, align 4
  %111 = call i32 @envy24ht_rdmt(%struct.sc_info* %109, i32 %110, i32 2)
  %112 = sub nsw i32 %108, %111
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %116 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = srem i32 %114, %119
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %125, %130
  %132 = load i32, i32* %6, align 4
  %133 = srem i32 %131, %132
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @ENVY24HT_CHAN_REC_ADC1, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %170, %103
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @ENVY24HT_CHAN_REC_SPDIF, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %173

139:                                              ; preds = %135
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 5
  %142 = load %struct.sc_chinfo*, %struct.sc_chinfo** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %142, i64 %144
  store %struct.sc_chinfo* %145, %struct.sc_chinfo** %4, align 8
  %146 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %147 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %139
  %151 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %152 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %158 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @snd_mtxunlock(i32 %159)
  %161 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %162 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @chn_intr(i32 %163)
  %165 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @snd_mtxlock(i32 %167)
  br label %169

169:                                              ; preds = %156, %150, %139
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %135

173:                                              ; preds = %135
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %176 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %174, i32* %178, align 4
  %179 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %180 = load i32, i32* @PCMDIR_REC, align 4
  %181 = call i32 @envy24ht_updintr(%struct.sc_info* %179, i32 %180)
  br label %182

182:                                              ; preds = %173, %98
  %183 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %184 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @snd_mtxunlock(i32 %185)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @envy24ht_checkintr(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24ht_rdmt(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @envy24ht_updintr(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
