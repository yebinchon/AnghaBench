; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pcmchan_matrix = type { i32 }

@FEEDER_MATRIX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feeder_matrix_setup(%struct.pcm_feeder* %0, %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_feeder*, align 8
  %6 = alloca %struct.pcmchan_matrix*, align 8
  %7 = alloca %struct.pcmchan_matrix*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %5, align 8
  store %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix** %6, align 8
  store %struct.pcmchan_matrix* %2, %struct.pcmchan_matrix** %7, align 8
  %8 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %9 = icmp eq %struct.pcm_feeder* %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %12 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %17 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FEEDER_MATRIX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %15, %10, %3
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %32 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %6, align 8
  %35 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %7, align 8
  %36 = call i32 @feed_matrix_setup(i32* %33, %struct.pcmchan_matrix* %34, %struct.pcmchan_matrix* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @feed_matrix_setup(i32*, %struct.pcmchan_matrix*, %struct.pcmchan_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
