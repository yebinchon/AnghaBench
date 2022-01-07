; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_format_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_format_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i64, i64 }

@SND_CHN_MATRIX_BEGIN = common dso_local global i64 0, align 8
@SND_CHN_MATRIX_END = common dso_local global i64 0, align 8
@feeder_matrix_maps = common dso_local global %struct.pcmchan_matrix* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmchan_matrix* @feeder_matrix_format_map(i64 %0) #0 {
  %2 = alloca %struct.pcmchan_matrix*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @AFMT_CHANNEL(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @AFMT_EXTCHANNEL(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @SND_CHN_MATRIX_BEGIN, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %37, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @SND_CHN_MATRIX_END, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %17, i64 %18
  %20 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %25, i64 %26
  %28 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** @feeder_matrix_maps, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %33, i64 %34
  store %struct.pcmchan_matrix* %35, %struct.pcmchan_matrix** %2, align 8
  br label %41

36:                                               ; preds = %24, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %12

40:                                               ; preds = %12
  store %struct.pcmchan_matrix* null, %struct.pcmchan_matrix** %2, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %2, align 8
  ret %struct.pcmchan_matrix* %42
}

declare dso_local i64 @AFMT_CHANNEL(i64) #1

declare dso_local i64 @AFMT_EXTCHANNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
