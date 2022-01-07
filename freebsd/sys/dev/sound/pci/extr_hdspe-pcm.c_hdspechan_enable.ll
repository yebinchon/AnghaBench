; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i32, i32, %struct.sc_pcminfo* }
%struct.sc_pcminfo = type { %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@HDSPE_OUT_ENABLE_BASE = common dso_local global i32 0, align 4
@HDSPE_IN_ENABLE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*, i32)* @hdspechan_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspechan_enable(%struct.sc_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %9 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %8, i32 0, i32 4
  %10 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %9, align 8
  store %struct.sc_pcminfo* %10, %struct.sc_pcminfo** %5, align 8
  %11 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %12 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %11, i32 0, i32 0
  %13 = load %struct.sc_info*, %struct.sc_info** %12, align 8
  store %struct.sc_info* %13, %struct.sc_info** %6, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCMDIR_PLAY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HDSPE_OUT_ENABLE_BASE, align 4
  store i32 %20, i32* %7, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @HDSPE_IN_ENABLE_BASE, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %30 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 4, %31
  %33 = add nsw i32 %28, %32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @hdspe_write_1(%struct.sc_info* %27, i32 %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %39 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 4, %40
  %42 = add nsw i32 %37, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @hdspe_write_1(%struct.sc_info* %36, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @hdspe_write_1(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
