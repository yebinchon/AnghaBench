; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_oss_get_channel_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_oss_get_channel_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SND_CHN_OSS_VALIDMASK = common dso_local global i32 0, align 4
@SND_CHN_OSS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_T_MAX = common dso_local global i32 0, align 4
@snd_chn_to_oss = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feeder_matrix_oss_get_channel_order(%struct.pcmchan_matrix* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmchan_matrix*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pcmchan_matrix* %0, %struct.pcmchan_matrix** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %9 = icmp eq %struct.pcmchan_matrix* %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %15 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SND_CHN_OSS_VALIDMASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %23 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SND_CHN_OSS_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %13, %10, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %78, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @SND_CHN_OSS_MAX, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %36 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SND_CHN_T_MAX, align 4
  %43 = icmp ne i32 %41, %42
  br label %44

44:                                               ; preds = %34, %30
  %45 = phi i1 [ false, %30 ], [ %43, %34 ]
  br i1 %45, label %46, label %81

46:                                               ; preds = %44
  %47 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %48 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @SND_CHN_OSS_VALIDMASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %84

61:                                               ; preds = %46
  %62 = load i64*, i64** @snd_chn_to_oss, align 8
  %63 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %64 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %62, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = mul nsw i64 %73, 4
  %75 = shl i64 %72, %74
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %61
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %30

81:                                               ; preds = %44
  %82 = load i64, i64* %6, align 8
  %83 = load i64*, i64** %5, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %59, %27
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
