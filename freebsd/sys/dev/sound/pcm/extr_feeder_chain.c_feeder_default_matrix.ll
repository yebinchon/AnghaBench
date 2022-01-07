; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_chain.c_feeder_default_matrix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_chain.c_feeder_default_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i32, i32*, i32, i32 }

@SND_CHN_T_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmchan_matrix*, i32, i32)* @feeder_default_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feeder_default_matrix(%struct.pcmchan_matrix* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcmchan_matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmchan_matrix* %0, %struct.pcmchan_matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %9 = call i32 @memset(%struct.pcmchan_matrix* %8, i32 0, i32 24)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %12 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AFMT_CHANNEL(i32 %13)
  %15 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %16 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @AFMT_EXTCHANNEL(i32 %17)
  %19 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %20 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %32, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SND_CHN_T_MAX, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %27 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %21

35:                                               ; preds = %21
  ret void
}

declare dso_local i32 @memset(%struct.pcmchan_matrix*, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @AFMT_EXTCHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
