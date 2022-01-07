; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i32, %struct.sc_pcminfo* }
%struct.sc_pcminfo = type { %struct.sc_info* }
%struct.sc_info = type { i32*, i32* }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@HDSPE_CHANBUF_SAMPLES = common dso_local global i32 0, align 4
@HDSPE_CHANBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_chinfo*)* @clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %6 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %7 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %6, i32 0, i32 3
  %8 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  store %struct.sc_pcminfo* %8, %struct.sc_pcminfo** %3, align 8
  %9 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %10 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %9, i32 0, i32 0
  %11 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  store %struct.sc_info* %11, %struct.sc_info** %4, align 8
  %12 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCMDIR_PLAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %27 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %28 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* @HDSPE_CHANBUF_SIZE, align 4
  %34 = call i32 @bzero(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* @HDSPE_CHANBUF_SIZE, align 4
  %44 = call i32 @bzero(i32* %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
