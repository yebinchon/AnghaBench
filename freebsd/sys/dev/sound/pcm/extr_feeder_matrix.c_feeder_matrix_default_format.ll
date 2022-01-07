; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_default_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_default_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.pcmchan_matrix = type { i64 }

@SND_CHN_MATRIX_BEGIN = common dso_local global i64 0, align 8
@SND_CHN_MATRIX_END = common dso_local global i64 0, align 8
@feeder_matrix_maps = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @feeder_matrix_default_format(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pcmchan_matrix*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @AFMT_CHANNEL(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @AFMT_EXTCHANNEL(i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load i64, i64* @SND_CHN_MATRIX_BEGIN, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %42, %14
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SND_CHN_MATRIX_END, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feeder_matrix_maps, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feeder_matrix_maps, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @SND_FORMAT(i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %2, align 8
  br label %59

41:                                               ; preds = %28, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %16

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i64 %47)
  store %struct.pcmchan_matrix* %48, %struct.pcmchan_matrix** %4, align 8
  %49 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %50 = icmp eq %struct.pcmchan_matrix* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %59

52:                                               ; preds = %46
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %56 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @SND_FORMAT(i64 %53, i64 %54, i64 %57)
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %52, %51, %36
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i64 @AFMT_CHANNEL(i64) #1

declare dso_local i64 @AFMT_EXTCHANNEL(i64) #1

declare dso_local i64 @SND_FORMAT(i64, i64, i64) #1

declare dso_local %struct.pcmchan_matrix* @feeder_matrix_default_channel_map(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
