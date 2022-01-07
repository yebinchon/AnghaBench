; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_msschan_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_msschan_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.mss_chinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@opti931_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@guspnp_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@mss_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @msschan_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @msschan_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pcmchan_caps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mss_chinfo*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mss_chinfo*
  store %struct.mss_chinfo* %8, %struct.mss_chinfo** %6, align 8
  %9 = load %struct.mss_chinfo*, %struct.mss_chinfo** %6, align 8
  %10 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %15
  ]

14:                                               ; preds = %2
  store %struct.pcmchan_caps* @opti931_caps, %struct.pcmchan_caps** %3, align 8
  br label %17

15:                                               ; preds = %2, %2
  store %struct.pcmchan_caps* @guspnp_caps, %struct.pcmchan_caps** %3, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.pcmchan_caps* @mss_caps, %struct.pcmchan_caps** %3, align 8
  br label %17

17:                                               ; preds = %16, %15, %14
  %18 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %3, align 8
  ret %struct.pcmchan_caps* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
