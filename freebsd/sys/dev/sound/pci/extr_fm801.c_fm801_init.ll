; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_info = type opaque

@FM_CODEC_CTL = common dso_local global i32 0, align 4
@FM_PCM_VOLUME = common dso_local global i32 0, align 4
@FM_FM_VOLUME = common dso_local global i32 0, align 4
@FM_I2S_VOLUME = common dso_local global i32 0, align 4
@FM_RECORD_SOURCE = common dso_local global i32 0, align 4
@FM_INTMASK = common dso_local global i32 0, align 4
@FM_INTMASK_PLAY = common dso_local global i32 0, align 4
@FM_INTMASK_REC = common dso_local global i32 0, align 4
@FM_INTMASK_MPU = common dso_local global i32 0, align 4
@FM_INTMASK_VOL = common dso_local global i32 0, align 4
@FM_INTSTATUS = common dso_local global i32 0, align 4
@FM_INTSTATUS_PLAY = common dso_local global i32 0, align 4
@FM_INTSTATUS_REC = common dso_local global i32 0, align 4
@FM_INTSTATUS_MPU = common dso_local global i32 0, align 4
@FM_INTSTATUS_VOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"FM801 init Ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801_info*)* @fm801_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_init(%struct.fm801_info* %0) #0 {
  %2 = alloca %struct.fm801_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fm801_info* %0, %struct.fm801_info** %2, align 8
  %4 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %5 = bitcast %struct.fm801_info* %4 to i8*
  %6 = load i32, i32* @FM_CODEC_CTL, align 4
  %7 = call i32 @fm801_wr(i8* %5, i32 %6, i32 32, i32 2)
  %8 = call i32 @DELAY(i32 100000)
  %9 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %10 = bitcast %struct.fm801_info* %9 to i8*
  %11 = load i32, i32* @FM_CODEC_CTL, align 4
  %12 = call i32 @fm801_wr(i8* %10, i32 %11, i32 0, i32 2)
  %13 = call i32 @DELAY(i32 100000)
  %14 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %15 = bitcast %struct.fm801_info* %14 to i8*
  %16 = load i32, i32* @FM_PCM_VOLUME, align 4
  %17 = call i32 @fm801_wr(i8* %15, i32 %16, i32 2056, i32 2)
  %18 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %19 = bitcast %struct.fm801_info* %18 to i8*
  %20 = load i32, i32* @FM_FM_VOLUME, align 4
  %21 = call i32 @fm801_wr(i8* %19, i32 %20, i32 2056, i32 2)
  %22 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %23 = bitcast %struct.fm801_info* %22 to i8*
  %24 = load i32, i32* @FM_I2S_VOLUME, align 4
  %25 = call i32 @fm801_wr(i8* %23, i32 %24, i32 2056, i32 2)
  %26 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %27 = bitcast %struct.fm801_info* %26 to i8*
  %28 = call i32 @fm801_wr(i8* %27, i32 64, i32 4223, i32 2)
  %29 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %30 = bitcast %struct.fm801_info* %29 to i8*
  %31 = load i32, i32* @FM_RECORD_SOURCE, align 4
  %32 = call i32 @fm801_wr(i8* %30, i32 %31, i32 0, i32 2)
  %33 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %34 = bitcast %struct.fm801_info* %33 to i8*
  %35 = load i32, i32* @FM_INTMASK, align 4
  %36 = call i32 @fm801_rd(i8* %34, i32 %35, i32 2)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %38 = bitcast %struct.fm801_info* %37 to i8*
  %39 = load i32, i32* @FM_INTMASK, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @FM_INTMASK_PLAY, align 4
  %42 = load i32, i32* @FM_INTMASK_REC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FM_INTMASK_MPU, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %40, %46
  %48 = load i32, i32* @FM_INTMASK_VOL, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @fm801_wr(i8* %38, i32 %39, i32 %49, i32 2)
  %51 = load %struct.fm801_info*, %struct.fm801_info** %2, align 8
  %52 = bitcast %struct.fm801_info* %51 to i8*
  %53 = load i32, i32* @FM_INTSTATUS, align 4
  %54 = load i32, i32* @FM_INTSTATUS_PLAY, align 4
  %55 = load i32, i32* @FM_INTSTATUS_REC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FM_INTSTATUS_MPU, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FM_INTSTATUS_VOL, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @fm801_wr(i8* %52, i32 %53, i32 %60, i32 2)
  %62 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fm801_wr(i8*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @fm801_rd(i8*, i32, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
