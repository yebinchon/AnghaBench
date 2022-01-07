; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svpchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svpchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@SV_REG_PCM_SAMPLING_HI = common dso_local global i32 0, align 4
@SV_REG_PCM_SAMPLING_LO = common dso_local global i32 0, align 4
@SV_REG_FORMAT = common dso_local global i32 0, align 4
@SV_AFMT_DMAA_MSK = common dso_local global i32 0, align 4
@SV_DMA_MODE_AUTO = common dso_local global i32 0, align 4
@SV_DMA_MODE_WR = common dso_local global i32 0, align 4
@SV_INTR_PER_BUFFER = common dso_local global i32 0, align 4
@SV_REG_DMAA_COUNT_HI = common dso_local global i32 0, align 4
@SV_REG_DMAA_COUNT_LO = common dso_local global i32 0, align 4
@SV_REG_ENABLE = common dso_local global i32 0, align 4
@SV_PLAY_ENABLE = common dso_local global i32 0, align 4
@SV_PLAYBACK_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @svpchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svpchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %14, %struct.sc_chinfo** %7, align 8
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 4
  %17 = load %struct.sc_info*, %struct.sc_info** %16, align 8
  store %struct.sc_info* %17, %struct.sc_info** %8, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %117 [
    i32 129, label %19
    i32 128, label %104
    i32 130, label %104
  ]

19:                                               ; preds = %3
  %20 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %21 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 65536
  %24 = sdiv i32 %23, 48000
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 65535, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %30 = load i32, i32* @SV_REG_PCM_SAMPLING_HI, align 4
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @sv_indirect_set(%struct.sc_info* %29, i32 %30, i32 %32)
  %34 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %35 = load i32, i32* @SV_REG_PCM_SAMPLING_LO, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @sv_indirect_set(%struct.sc_info* %34, i32 %35, i32 %37)
  %39 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %40 = load i32, i32* @SV_REG_FORMAT, align 4
  %41 = call i32 @sv_indirect_get(%struct.sc_info* %39, i32 %40)
  %42 = load i32, i32* @SV_AFMT_DMAA_MSK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %46 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SV_AFMT_DMAA(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %52 = load i32, i32* @SV_REG_FORMAT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @sv_indirect_set(%struct.sc_info* %51, i32 %52, i32 %53)
  %55 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %56 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sndbuf_getsize(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %66 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sndbuf_getbufaddr(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @SV_DMA_MODE_AUTO, align 4
  %72 = load i32, i32* @SV_DMA_MODE_WR, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @sv_dma_set_config(i32 %61, i32 %64, i32 %68, i32 %70, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SV_INTR_PER_BUFFER, align 4
  %77 = sdiv i32 %75, %76
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %80 = load i32, i32* @SV_REG_DMAA_COUNT_HI, align 4
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @sv_indirect_set(%struct.sc_info* %79, i32 %80, i32 %82)
  %84 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %85 = load i32, i32* @SV_REG_DMAA_COUNT_LO, align 4
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = call i32 @sv_indirect_set(%struct.sc_info* %84, i32 %85, i32 %87)
  %89 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %90 = load i32, i32* @SV_REG_ENABLE, align 4
  %91 = call i32 @sv_indirect_get(%struct.sc_info* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @SV_PLAY_ENABLE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SV_PLAYBACK_PAUSE, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  store i32 %97, i32* %10, align 4
  %98 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %99 = load i32, i32* @SV_REG_ENABLE, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @sv_indirect_set(%struct.sc_info* %98, i32 %99, i32 %100)
  %102 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %103 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  br label %117

104:                                              ; preds = %3, %3
  %105 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %106 = load i32, i32* @SV_REG_ENABLE, align 4
  %107 = call i32 @sv_indirect_get(%struct.sc_info* %105, i32 %106)
  %108 = load i32, i32* @SV_PLAY_ENABLE, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %10, align 4
  %111 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %112 = load i32, i32* @SV_REG_ENABLE, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @sv_indirect_set(%struct.sc_info* %111, i32 %112, i32 %113)
  %115 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %116 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %3, %104, %28
  ret i32 0
}

declare dso_local i32 @sv_indirect_set(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @sv_indirect_get(%struct.sc_info*, i32) #1

declare dso_local i32 @SV_AFMT_DMAA(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sv_dma_set_config(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
