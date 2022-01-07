; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_chinfo = type { i64, %struct.sb_info* }
%struct.sb_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@BD_F_HISPEED = common dso_local global i32 0, align 4
@DSP_CMD_SPKOFF = common dso_local global i32 0, align 4
@BD_F_DMARUN = common dso_local global i32 0, align 4
@DSP_CMD_DMAEXIT_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_chinfo*)* @sb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_stop(%struct.sb_chinfo* %0) #0 {
  %2 = alloca %struct.sb_chinfo*, align 8
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sb_chinfo* %0, %struct.sb_chinfo** %2, align 8
  %5 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %5, i32 0, i32 1
  %7 = load %struct.sb_info*, %struct.sb_info** %6, align 8
  store %struct.sb_info* %7, %struct.sb_info** %3, align 8
  %8 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCMDIR_PLAY, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %16 = call i32 @sb_lock(%struct.sb_info* %15)
  %17 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BD_F_HISPEED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %25 = call i32 @sb_reset_dsp(%struct.sb_info* %24)
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %28 = call i32 @sb_reset_dsp(%struct.sb_info* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %34 = load i32, i32* @DSP_CMD_SPKOFF, align 4
  %35 = call i32 @sb_cmd(%struct.sb_info* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %38 = call i32 @sb_unlock(%struct.sb_info* %37)
  %39 = load i32, i32* @BD_F_DMARUN, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  ret i32 0
}

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i32 @sb_reset_dsp(%struct.sb_info*) #1

declare dso_local i32 @sb_cmd(%struct.sb_info*, i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
