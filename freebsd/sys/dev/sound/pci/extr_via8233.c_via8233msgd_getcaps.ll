; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.via_chinfo = type { %struct.via_info* }
%struct.via_info = type { i32 }

@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@via_vracaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@via_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @via8233msgd_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @via8233msgd_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pcmchan_caps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.via_chinfo*, align 8
  %7 = alloca %struct.via_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.via_chinfo*
  store %struct.via_chinfo* %9, %struct.via_chinfo** %6, align 8
  %10 = load %struct.via_chinfo*, %struct.via_chinfo** %6, align 8
  %11 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %10, i32 0, i32 0
  %12 = load %struct.via_info*, %struct.via_info** %11, align 8
  store %struct.via_info* %12, %struct.via_info** %7, align 8
  %13 = load %struct.via_info*, %struct.via_info** %7, align 8
  %14 = getelementptr inbounds %struct.via_info, %struct.via_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.pcmchan_caps* @via_vracaps, %struct.pcmchan_caps** %3, align 8
  br label %21

20:                                               ; preds = %2
  store %struct.pcmchan_caps* @via_caps, %struct.pcmchan_caps** %3, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %3, align 8
  ret %struct.pcmchan_caps* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
