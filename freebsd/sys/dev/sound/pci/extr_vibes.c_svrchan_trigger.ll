; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svrchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svrchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@SV_REG_FORMAT = common dso_local global i32 0, align 4
@SV_AFMT_DMAC_MSK = common dso_local global i32 0, align 4
@SV_DMA_MODE_AUTO = common dso_local global i32 0, align 4
@SV_DMA_MODE_RD = common dso_local global i32 0, align 4
@SV_INTR_PER_BUFFER = common dso_local global i32 0, align 4
@SV_REG_DMAC_COUNT_HI = common dso_local global i32 0, align 4
@SV_REG_DMAC_COUNT_LO = common dso_local global i32 0, align 4
@SV_REG_ENABLE = common dso_local global i32 0, align 4
@SV_RECORD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @svrchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svrchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %13, %struct.sc_chinfo** %7, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 4
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %99 [
    i32 129, label %18
    i32 128, label %86
    i32 130, label %86
  ]

18:                                               ; preds = %3
  %19 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %20 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %21 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sv_set_recspeed(%struct.sc_info* %19, i32 %22)
  %24 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %25 = load i32, i32* @SV_REG_FORMAT, align 4
  %26 = call i32 @sv_indirect_get(%struct.sc_info* %24, i32 %25)
  %27 = load i32, i32* @SV_AFMT_DMAC_MSK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %31 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SV_AFMT_DMAC(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %37 = load i32, i32* @SV_REG_FORMAT, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @sv_indirect_set(%struct.sc_info* %36, i32 %37, i32 %38)
  %40 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %41 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sndbuf_getsize(i32 %42)
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %9, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %52 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sndbuf_getbufaddr(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @SV_DMA_MODE_AUTO, align 4
  %58 = load i32, i32* @SV_DMA_MODE_RD, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @sv_dma_set_config(i32 %47, i32 %50, i32 %54, i32 %56, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SV_INTR_PER_BUFFER, align 4
  %63 = sdiv i32 %61, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %66 = load i32, i32* @SV_REG_DMAC_COUNT_HI, align 4
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 8
  %69 = call i32 @sv_indirect_set(%struct.sc_info* %65, i32 %66, i32 %68)
  %70 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %71 = load i32, i32* @SV_REG_DMAC_COUNT_LO, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @sv_indirect_set(%struct.sc_info* %70, i32 %71, i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %76 = load i32, i32* @SV_REG_ENABLE, align 4
  %77 = call i32 @sv_indirect_get(%struct.sc_info* %75, i32 %76)
  %78 = load i32, i32* @SV_RECORD_ENABLE, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %81 = load i32, i32* @SV_REG_ENABLE, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @sv_indirect_set(%struct.sc_info* %80, i32 %81, i32 %82)
  %84 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %85 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %99

86:                                               ; preds = %3, %3
  %87 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %88 = load i32, i32* @SV_REG_ENABLE, align 4
  %89 = call i32 @sv_indirect_get(%struct.sc_info* %87, i32 %88)
  %90 = load i32, i32* @SV_RECORD_ENABLE, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %94 = load i32, i32* @SV_REG_ENABLE, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @sv_indirect_set(%struct.sc_info* %93, i32 %94, i32 %95)
  %97 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %98 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %3, %86, %18
  ret i32 0
}

declare dso_local i32 @sv_set_recspeed(%struct.sc_info*, i32) #1

declare dso_local i32 @sv_indirect_get(%struct.sc_info*, i32) #1

declare dso_local i32 @SV_AFMT_DMAC(i32) #1

declare dso_local i32 @sv_indirect_set(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sv_dma_set_config(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
