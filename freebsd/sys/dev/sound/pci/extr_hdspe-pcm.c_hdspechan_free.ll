; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32 }
%struct.sc_chinfo = type { i32*, %struct.sc_pcminfo* }

@M_HDSPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdspechan_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspechan_free(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.sc_chinfo*, align 8
  %7 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %9, %struct.sc_chinfo** %6, align 8
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i32 0, i32 1
  %12 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %11, align 8
  store %struct.sc_pcminfo* %12, %struct.sc_pcminfo** %5, align 8
  %13 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %14 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %13, i32 0, i32 1
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %7, align 8
  %16 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_mtxlock(i32 %18)
  %20 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %21 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @M_HDSPE, align 4
  %29 = call i32 @free(i32* %27, i32 %28)
  %30 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %31 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_mtxunlock(i32 %35)
  ret i32 0
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
