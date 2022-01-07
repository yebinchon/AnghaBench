; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.via_chinfo = type { %struct.via_info* }
%struct.via_info = type { i32 }

@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@via_vracaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@via_caps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @viachan_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @viachan_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.via_chinfo*, align 8
  %6 = alloca %struct.via_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.via_chinfo*
  store %struct.via_chinfo* %8, %struct.via_chinfo** %5, align 8
  %9 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %10 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %9, i32 0, i32 0
  %11 = load %struct.via_info*, %struct.via_info** %10, align 8
  store %struct.via_info* %11, %struct.via_info** %6, align 8
  %12 = load %struct.via_info*, %struct.via_info** %6, align 8
  %13 = getelementptr inbounds %struct.via_info, %struct.via_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, %struct.pcmchan_caps* @via_vracaps, %struct.pcmchan_caps* @via_caps
  ret %struct.pcmchan_caps* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
