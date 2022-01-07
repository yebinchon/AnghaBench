; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16chan_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16chan_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.sb_chinfo = type { i64, %struct.sb_info* }
%struct.sb_info = type { i64, i64 }

@sb16x_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sb16_caps8 = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@sb16_caps16 = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @sb16chan_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @sb16chan_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pcmchan_caps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sb_chinfo*, align 8
  %7 = alloca %struct.sb_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sb_chinfo*
  store %struct.sb_chinfo* %9, %struct.sb_chinfo** %6, align 8
  %10 = load %struct.sb_chinfo*, %struct.sb_chinfo** %6, align 8
  %11 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %10, i32 0, i32 1
  %12 = load %struct.sb_info*, %struct.sb_info** %11, align 8
  store %struct.sb_info* %12, %struct.sb_info** %7, align 8
  %13 = load %struct.sb_info*, %struct.sb_info** %7, align 8
  %14 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.sb_info*, %struct.sb_info** %7, align 8
  %19 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sb_chinfo*, %struct.sb_chinfo** %6, align 8
  %22 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %2
  store %struct.pcmchan_caps* @sb16x_caps, %struct.pcmchan_caps** %3, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.sb_info*, %struct.sb_info** %7, align 8
  %28 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, %struct.pcmchan_caps* @sb16_caps8, %struct.pcmchan_caps* @sb16_caps16
  store %struct.pcmchan_caps* %32, %struct.pcmchan_caps** %3, align 8
  br label %33

33:                                               ; preds = %26, %25
  %34 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %3, align 8
  ret %struct.pcmchan_caps* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
