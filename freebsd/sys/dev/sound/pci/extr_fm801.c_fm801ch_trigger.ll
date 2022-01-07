; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_chinfo = type { i64, i32, %struct.fm801_info* }
%struct.fm801_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"fm801ch_trigger go %d , \00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMTRIG_START = common dso_local global i32 0, align 4
@FM_PLAY_DMALEN = common dso_local global i32 0, align 4
@FM_PLAY_DMABUF1 = common dso_local global i32 0, align 4
@FM_PLAY_DMABUF2 = common dso_local global i32 0, align 4
@FM_PLAY_CTL = common dso_local global i32 0, align 4
@FM_PLAY_START = common dso_local global i32 0, align 4
@FM_PLAY_STOPNOW = common dso_local global i32 0, align 4
@FM_PLAY_BUF1_LAST = common dso_local global i32 0, align 4
@FM_PLAY_BUF2_LAST = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@FM_REC_DMALEN = common dso_local global i32 0, align 4
@FM_REC_DMABUF1 = common dso_local global i32 0, align 4
@FM_REC_DMABUF2 = common dso_local global i32 0, align 4
@FM_REC_CTL = common dso_local global i32 0, align 4
@FM_REC_START = common dso_local global i32 0, align 4
@FM_REC_STOPNOW = common dso_local global i32 0, align 4
@FM_REC_BUF1_LAST = common dso_local global i32 0, align 4
@FM_REC_BUF2_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @fm801ch_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801ch_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm801_chinfo*, align 8
  %9 = alloca %struct.fm801_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.fm801_chinfo*
  store %struct.fm801_chinfo* %13, %struct.fm801_chinfo** %8, align 8
  %14 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %15 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %14, i32 0, i32 2
  %16 = load %struct.fm801_info*, %struct.fm801_info** %15, align 8
  store %struct.fm801_info* %16, %struct.fm801_info** %9, align 8
  %17 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %18 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sndbuf_getbufaddr(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @PCMTRIG_COMMON(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %185

27:                                               ; preds = %3
  %28 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCMDIR_PLAY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %105

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCMTRIG_START, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %40 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %42 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %45 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %49 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %51 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %50, i32 0, i32 11
  store i64 0, i64* %51, align 8
  %52 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %53 = load i32, i32* @FM_PLAY_DMALEN, align 4
  %54 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %55 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @fm801_wr(%struct.fm801_info* %52, i32 %53, i32 %57, i32 2)
  %59 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %60 = load i32, i32* @FM_PLAY_DMABUF1, align 4
  %61 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %62 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fm801_wr(%struct.fm801_info* %59, i32 %60, i32 %63, i32 4)
  %65 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %66 = load i32, i32* @FM_PLAY_DMABUF2, align 4
  %67 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %68 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fm801_wr(%struct.fm801_info* %65, i32 %66, i32 %69, i32 4)
  %71 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %72 = load i32, i32* @FM_PLAY_CTL, align 4
  %73 = load i32, i32* @FM_PLAY_START, align 4
  %74 = load i32, i32* @FM_PLAY_STOPNOW, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %77 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %81 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %79, %82
  %84 = call i32 @fm801_wr(%struct.fm801_info* %71, i32 %72, i32 %83, i32 2)
  br label %104

85:                                               ; preds = %33
  %86 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %87 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %86, i32 0, i32 11
  store i64 0, i64* %87, align 8
  %88 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %89 = load i32, i32* @FM_PLAY_CTL, align 4
  %90 = call i32 @fm801_rd(%struct.fm801_info* %88, i32 %89, i32 2)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %92 = load i32, i32* @FM_PLAY_CTL, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @FM_PLAY_STOPNOW, align 4
  %95 = load i32, i32* @FM_PLAY_START, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = load i32, i32* @FM_PLAY_BUF1_LAST, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FM_PLAY_BUF2_LAST, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @fm801_wr(%struct.fm801_info* %91, i32 %92, i32 %102, i32 2)
  br label %104

104:                                              ; preds = %85, %37
  br label %184

105:                                              ; preds = %27
  %106 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %107 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCMDIR_REC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %183

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @PCMTRIG_START, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %163

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %118 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %120 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %123 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %127 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %129 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %128, i32 0, i32 10
  store i64 0, i64* %129, align 8
  %130 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %131 = load i32, i32* @FM_REC_DMALEN, align 4
  %132 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %133 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @fm801_wr(%struct.fm801_info* %130, i32 %131, i32 %135, i32 2)
  %137 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %138 = load i32, i32* @FM_REC_DMABUF1, align 4
  %139 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %140 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @fm801_wr(%struct.fm801_info* %137, i32 %138, i32 %141, i32 4)
  %143 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %144 = load i32, i32* @FM_REC_DMABUF2, align 4
  %145 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %146 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @fm801_wr(%struct.fm801_info* %143, i32 %144, i32 %147, i32 4)
  %149 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %150 = load i32, i32* @FM_REC_CTL, align 4
  %151 = load i32, i32* @FM_REC_START, align 4
  %152 = load i32, i32* @FM_REC_STOPNOW, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %155 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %153, %156
  %158 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %159 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %157, %160
  %162 = call i32 @fm801_wr(%struct.fm801_info* %149, i32 %150, i32 %161, i32 2)
  br label %182

163:                                              ; preds = %111
  %164 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %165 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %164, i32 0, i32 10
  store i64 0, i64* %165, align 8
  %166 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %167 = load i32, i32* @FM_REC_CTL, align 4
  %168 = call i32 @fm801_rd(%struct.fm801_info* %166, i32 %167, i32 2)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %170 = load i32, i32* @FM_REC_CTL, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @FM_REC_STOPNOW, align 4
  %173 = load i32, i32* @FM_REC_START, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = and i32 %171, %175
  %177 = load i32, i32* @FM_REC_BUF1_LAST, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @FM_REC_BUF2_LAST, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @fm801_wr(%struct.fm801_info* %169, i32 %170, i32 %180, i32 2)
  br label %182

182:                                              ; preds = %163, %115
  br label %183

183:                                              ; preds = %182, %105
  br label %184

184:                                              ; preds = %183, %104
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %26
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @fm801_wr(%struct.fm801_info*, i32, i32, i32) #1

declare dso_local i32 @fm801_rd(%struct.fm801_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
