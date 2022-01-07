; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_chinfo = type { i64, i32, %struct.atiixp_info* }
%struct.atiixp_info = type { i32 }

@PCMDIR_REC = common dso_local global i64 0, align 8
@ATI_REG_CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_INTERLEAVE_IN = common dso_local global i32 0, align 4
@AFMT_32BIT = common dso_local global i32 0, align 4
@ATI_REG_OUT_DMA_SLOT = common dso_local global i32 0, align 4
@ATI_REG_OUT_DMA_SLOT_MASK = common dso_local global i32 0, align 4
@ATI_REG_OUT_DMA_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_CMD_INTERLEAVE_OUT = common dso_local global i32 0, align 4
@ATI_REG_6CH_REORDER = common dso_local global i32 0, align 4
@ATI_REG_6CH_REORDER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @atiixp_chan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_chan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atiixp_chinfo*, align 8
  %8 = alloca %struct.atiixp_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.atiixp_chinfo*
  store %struct.atiixp_chinfo* %11, %struct.atiixp_chinfo** %7, align 8
  %12 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %7, align 8
  %13 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %12, i32 0, i32 2
  %14 = load %struct.atiixp_info*, %struct.atiixp_info** %13, align 8
  store %struct.atiixp_info* %14, %struct.atiixp_info** %8, align 8
  %15 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %16 = call i32 @atiixp_lock(%struct.atiixp_info* %15)
  %17 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %7, align 8
  %18 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCMDIR_REC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %24 = load i32, i32* @ATI_REG_CMD, align 4
  %25 = call i32 @atiixp_rd(%struct.atiixp_info* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_IN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AFMT_32BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_IN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %22
  %39 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %40 = load i32, i32* @ATI_REG_CMD, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @atiixp_wr(%struct.atiixp_info* %39, i32 %40, i32 %41)
  br label %95

43:                                               ; preds = %3
  %44 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %45 = load i32, i32* @ATI_REG_OUT_DMA_SLOT, align 4
  %46 = call i32 @atiixp_rd(%struct.atiixp_info* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @ATI_REG_OUT_DMA_SLOT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = call i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32 3)
  %52 = call i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32 4)
  %53 = or i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @ATI_REG_OUT_DMA_THRESHOLD_SHIFT, align 4
  %57 = shl i32 4, %56
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %61 = load i32, i32* @ATI_REG_OUT_DMA_SLOT, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @atiixp_wr(%struct.atiixp_info* %60, i32 %61, i32 %62)
  %64 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %65 = load i32, i32* @ATI_REG_CMD, align 4
  %66 = call i32 @atiixp_rd(%struct.atiixp_info* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_OUT, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @AFMT_32BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %43
  %76 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_OUT, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %43
  %80 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %81 = load i32, i32* @ATI_REG_CMD, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @atiixp_wr(%struct.atiixp_info* %80, i32 %81, i32 %82)
  %84 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %85 = load i32, i32* @ATI_REG_6CH_REORDER, align 4
  %86 = call i32 @atiixp_rd(%struct.atiixp_info* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @ATI_REG_6CH_REORDER_EN, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %92 = load i32, i32* @ATI_REG_6CH_REORDER, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @atiixp_wr(%struct.atiixp_info* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %79, %38
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %7, align 8
  %98 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %100 = call i32 @atiixp_unlock(%struct.atiixp_info* %99)
  ret i32 0
}

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
