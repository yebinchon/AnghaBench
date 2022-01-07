; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i64, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMTRIG_START = common dso_local global i32 0, align 4
@NM_PBUFFER_START = common dso_local global i32 0, align 4
@NM_PBUFFER_END = common dso_local global i32 0, align 4
@NM_BUFFSIZE = common dso_local global i32 0, align 4
@NM_PBUFFER_CURRP = common dso_local global i32 0, align 4
@NM_PBUFFER_WMARK = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_REG = common dso_local global i32 0, align 4
@NM_PLAYBACK_FREERUN = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_FLAG = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_REG = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_BOTH = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_REG = common dso_local global i32 0, align 4
@NM_RECORD_FREERUN = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_FLAG = common dso_local global i32 0, align 4
@NM_RBUFFER_START = common dso_local global i32 0, align 4
@NM_RBUFFER_END = common dso_local global i32 0, align 4
@NM_RBUFFER_CURRP = common dso_local global i32 0, align 4
@NM_RBUFFER_WMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @nmchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %12, %struct.sc_chinfo** %8, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 5
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCMTRIG_COMMON(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %163

20:                                               ; preds = %3
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AFMT_16BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %30 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AFMT_CHANNEL(i32 %31)
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %39 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCMDIR_PLAY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PCMTRIG_START, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %51 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %54 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %56 = load i32, i32* @NM_PBUFFER_START, align 4
  %57 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nm_wr(%struct.sc_info* %55, i32 %56, i32 %59, i32 4)
  %61 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %62 = load i32, i32* @NM_PBUFFER_END, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NM_BUFFSIZE, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @nm_wr(%struct.sc_info* %61, i32 %62, i32 %69, i32 4)
  %71 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %72 = load i32, i32* @NM_PBUFFER_CURRP, align 4
  %73 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %74 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nm_wr(%struct.sc_info* %71, i32 %72, i32 %75, i32 4)
  %77 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %78 = load i32, i32* @NM_PBUFFER_WMARK, align 4
  %79 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %80 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %83 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = call i32 @nm_wr(%struct.sc_info* %77, i32 %78, i32 %85, i32 4)
  %87 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %88 = load i32, i32* @NM_PLAYBACK_ENABLE_REG, align 4
  %89 = load i32, i32* @NM_PLAYBACK_FREERUN, align 4
  %90 = load i32, i32* @NM_PLAYBACK_ENABLE_FLAG, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @nm_wr(%struct.sc_info* %87, i32 %88, i32 %91, i32 1)
  %93 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %94 = load i32, i32* @NM_AUDIO_MUTE_REG, align 4
  %95 = call i32 @nm_wr(%struct.sc_info* %93, i32 %94, i32 0, i32 2)
  br label %106

96:                                               ; preds = %43
  %97 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %98 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %100 = load i32, i32* @NM_PLAYBACK_ENABLE_REG, align 4
  %101 = call i32 @nm_wr(%struct.sc_info* %99, i32 %100, i32 0, i32 1)
  %102 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %103 = load i32, i32* @NM_AUDIO_MUTE_REG, align 4
  %104 = load i32, i32* @NM_AUDIO_MUTE_BOTH, align 4
  %105 = call i32 @nm_wr(%struct.sc_info* %102, i32 %103, i32 %104, i32 2)
  br label %106

106:                                              ; preds = %96, %47
  br label %162

107:                                              ; preds = %37
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @PCMTRIG_START, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %107
  %112 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %113 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %115 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %118 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %120 = load i32, i32* @NM_RECORD_ENABLE_REG, align 4
  %121 = load i32, i32* @NM_RECORD_FREERUN, align 4
  %122 = load i32, i32* @NM_RECORD_ENABLE_FLAG, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @nm_wr(%struct.sc_info* %119, i32 %120, i32 %123, i32 1)
  %125 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %126 = load i32, i32* @NM_RBUFFER_START, align 4
  %127 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %128 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nm_wr(%struct.sc_info* %125, i32 %126, i32 %129, i32 4)
  %131 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %132 = load i32, i32* @NM_RBUFFER_END, align 4
  %133 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NM_BUFFSIZE, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @nm_wr(%struct.sc_info* %131, i32 %132, i32 %137, i32 4)
  %139 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %140 = load i32, i32* @NM_RBUFFER_CURRP, align 4
  %141 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %142 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @nm_wr(%struct.sc_info* %139, i32 %140, i32 %143, i32 4)
  %145 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %146 = load i32, i32* @NM_RBUFFER_WMARK, align 4
  %147 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %148 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %151 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = call i32 @nm_wr(%struct.sc_info* %145, i32 %146, i32 %153, i32 4)
  br label %161

155:                                              ; preds = %107
  %156 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %157 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %156, i32 0, i32 2
  store i32 0, i32* %157, align 8
  %158 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %159 = load i32, i32* @NM_RECORD_ENABLE_REG, align 4
  %160 = call i32 @nm_wr(%struct.sc_info* %158, i32 %159, i32 0, i32 1)
  br label %161

161:                                              ; preds = %155, %111
  br label %162

162:                                              ; preds = %161, %106
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %19
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
