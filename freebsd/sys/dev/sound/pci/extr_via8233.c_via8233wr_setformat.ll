; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233wr_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233wr_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { %struct.via_info* }
%struct.via_info = type { i32 }

@WR_FORMAT_STOP_INDEX = common dso_local global i32 0, align 4
@WR_FORMAT_STEREO = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@WR_FORMAT_16BIT = common dso_local global i32 0, align 4
@VIA_WR0_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via8233wr_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233wr_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.via_chinfo*, align 8
  %8 = alloca %struct.via_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.via_chinfo*
  store %struct.via_chinfo* %11, %struct.via_chinfo** %7, align 8
  %12 = load %struct.via_chinfo*, %struct.via_chinfo** %7, align 8
  %13 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %12, i32 0, i32 0
  %14 = load %struct.via_info*, %struct.via_info** %13, align 8
  store %struct.via_info* %14, %struct.via_info** %8, align 8
  %15 = load i32, i32* @WR_FORMAT_STOP_INDEX, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @AFMT_CHANNEL(i32 %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @WR_FORMAT_STEREO, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AFMT_S16_LE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @WR_FORMAT_16BIT, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.via_info*, %struct.via_info** %8, align 8
  %34 = getelementptr inbounds %struct.via_info, %struct.via_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_mtxlock(i32 %35)
  %37 = load %struct.via_info*, %struct.via_info** %8, align 8
  %38 = load i32, i32* @VIA_WR0_FORMAT, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @via_wr(%struct.via_info* %37, i32 %38, i32 %39, i32 4)
  %41 = load %struct.via_info*, %struct.via_info** %8, align 8
  %42 = getelementptr inbounds %struct.via_info, %struct.via_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_mtxunlock(i32 %43)
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
