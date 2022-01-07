; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_id_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_id_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i32 }

@SND_CHN_MATRIX_BEGIN = common dso_local global i32 0, align 4
@SND_CHN_MATRIX_END = common dso_local global i32 0, align 4
@feeder_matrix_maps = common dso_local global %struct.pcmchan_matrix* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmchan_matrix* @feeder_matrix_id_map(i32 %0) #0 {
  %2 = alloca %struct.pcmchan_matrix*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SND_CHN_MATRIX_BEGIN, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SND_CHN_MATRIX_END, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.pcmchan_matrix* null, %struct.pcmchan_matrix** %2, align 8
  br label %17

12:                                               ; preds = %7
  %13 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %13, i64 %15
  store %struct.pcmchan_matrix* %16, %struct.pcmchan_matrix** %2, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %2, align 8
  ret %struct.pcmchan_matrix* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
