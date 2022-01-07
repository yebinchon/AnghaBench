; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i64, %struct.via_info* }
%struct.via_info = type { i32, i32 }

@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@AC97_REGEXT_FDACRATE = common dso_local global i32 0, align 4
@AC97_REGEXT_LADCRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @viachan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viachan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.via_chinfo*, align 8
  %9 = alloca %struct.via_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.via_chinfo*
  store %struct.via_chinfo* %12, %struct.via_chinfo** %8, align 8
  %13 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %14 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %13, i32 0, i32 1
  %15 = load %struct.via_info*, %struct.via_info** %14, align 8
  store %struct.via_info* %15, %struct.via_info** %9, align 8
  %16 = load %struct.via_info*, %struct.via_info** %9, align 8
  %17 = getelementptr inbounds %struct.via_info, %struct.via_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %24 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCMDIR_PLAY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @AC97_REGEXT_FDACRATE, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @AC97_REGEXT_LADCRATE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %10, align 4
  %34 = load %struct.via_info*, %struct.via_info** %9, align 8
  %35 = getelementptr inbounds %struct.via_info, %struct.via_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ac97_setrate(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 48000, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ac97_setrate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
