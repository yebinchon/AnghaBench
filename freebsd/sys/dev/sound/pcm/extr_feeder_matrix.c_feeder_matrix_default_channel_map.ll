; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_default_channel_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_default_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i64 }

@feeder_matrix_maps = common dso_local global %struct.pcmchan_matrix* null, align 8
@SND_CHN_MATRIX_BEGIN = common dso_local global i64 0, align 8
@SND_CHN_MATRIX_END = common dso_local global i64 0, align 8
@feeder_matrix_default_ids = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i64 %0) #0 {
  %2 = alloca %struct.pcmchan_matrix*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %6 = load i64, i64* @SND_CHN_MATRIX_BEGIN, align 8
  %7 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %5, i64 %6
  %8 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %4, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %14 = load i64, i64* @SND_CHN_MATRIX_END, align 8
  %15 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %13, i64 %14
  %16 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %1
  store %struct.pcmchan_matrix* null, %struct.pcmchan_matrix** %2, align 8
  br label %27

20:                                               ; preds = %11
  %21 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %22 = load i64*, i64** @feeder_matrix_default_ids, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %21, i64 %25
  store %struct.pcmchan_matrix* %26, %struct.pcmchan_matrix** %2, align 8
  br label %27

27:                                               ; preds = %20, %19
  %28 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %2, align 8
  ret %struct.pcmchan_matrix* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
