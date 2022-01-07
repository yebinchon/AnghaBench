; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { %struct.via_info* }
%struct.via_info = type { i32, i32 }

@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@AC97_REGEXT_FDACRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via8233msgd_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233msgd_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.via_chinfo*, align 8
  %9 = alloca %struct.via_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.via_chinfo*
  store %struct.via_chinfo* %11, %struct.via_chinfo** %8, align 8
  %12 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %12, i32 0, i32 0
  %14 = load %struct.via_info*, %struct.via_info** %13, align 8
  store %struct.via_info* %14, %struct.via_info** %9, align 8
  %15 = load %struct.via_info*, %struct.via_info** %9, align 8
  %16 = getelementptr inbounds %struct.via_info, %struct.via_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.via_info*, %struct.via_info** %9, align 8
  %23 = getelementptr inbounds %struct.via_info, %struct.via_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AC97_REGEXT_FDACRATE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ac97_setrate(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %3
  store i32 48000, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ac97_setrate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
