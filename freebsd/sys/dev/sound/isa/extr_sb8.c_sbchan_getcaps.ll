; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbchan_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbchan_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.sb_chinfo = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@sb200_playcaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sb200_reccaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sb201_playcaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sb201_reccaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sbpro_playcaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sbpro_reccaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @sbchan_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @sbchan_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pcmchan_caps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sb_chinfo*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sb_chinfo*
  store %struct.sb_chinfo* %9, %struct.sb_chinfo** %6, align 8
  %10 = load %struct.sb_chinfo*, %struct.sb_chinfo** %6, align 8
  %11 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCMDIR_PLAY, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sb_chinfo*, %struct.sb_chinfo** %6, align 8
  %18 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 512
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, %struct.pcmchan_caps* @sb200_playcaps, %struct.pcmchan_caps* @sb200_reccaps
  store %struct.pcmchan_caps* %27, %struct.pcmchan_caps** %3, align 8
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.sb_chinfo*, %struct.sb_chinfo** %6, align 8
  %30 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 768
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, %struct.pcmchan_caps* @sb201_playcaps, %struct.pcmchan_caps* @sb201_reccaps
  store %struct.pcmchan_caps* %39, %struct.pcmchan_caps** %3, align 8
  br label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, %struct.pcmchan_caps* @sbpro_playcaps, %struct.pcmchan_caps* @sbpro_reccaps
  store %struct.pcmchan_caps* %44, %struct.pcmchan_caps** %3, align 8
  br label %45

45:                                               ; preds = %40, %35, %23
  %46 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %3, align 8
  ret %struct.pcmchan_caps* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
