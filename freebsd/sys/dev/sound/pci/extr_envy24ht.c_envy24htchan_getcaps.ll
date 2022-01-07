; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24htchan_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24htchan_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_caps = type { i32 }
%struct.sc_chinfo = type { i64, %struct.sc_info* }
%struct.sc_info = type { i64*, i32, %struct.pcmchan_caps*, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@envy24ht_playcaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@envy24ht_reccaps = common dso_local global %struct.pcmchan_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcmchan_caps* (i32, i8*)* @envy24htchan_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcmchan_caps* @envy24htchan_getcaps(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca %struct.pcmchan_caps*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %9, %struct.sc_chinfo** %5, align 8
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i32 0, i32 1
  %12 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  store %struct.sc_info* %12, %struct.sc_info** %6, align 8
  %13 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @snd_mtxlock(i32 %15)
  %17 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %18 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCMDIR_PLAY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store %struct.pcmchan_caps* @envy24ht_playcaps, %struct.pcmchan_caps** %7, align 8
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 2
  %33 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %32, align 8
  %34 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %33, i64 0
  store %struct.pcmchan_caps* %34, %struct.pcmchan_caps** %7, align 8
  br label %35

35:                                               ; preds = %30, %29
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.pcmchan_caps* @envy24ht_reccaps, %struct.pcmchan_caps** %7, align 8
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 2
  %47 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %46, align 8
  %48 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %47, i64 1
  store %struct.pcmchan_caps* %48, %struct.pcmchan_caps** %7, align 8
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_mtxunlock(i32 %53)
  %55 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %7, align 8
  ret %struct.pcmchan_caps* %55
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
