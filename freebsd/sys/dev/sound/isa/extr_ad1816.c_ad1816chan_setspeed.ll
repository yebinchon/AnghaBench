; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_chinfo = type { i64, %struct.ad1816_info* }
%struct.ad1816_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ad1816chan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816chan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad1816_chinfo*, align 8
  %8 = alloca %struct.ad1816_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ad1816_chinfo*
  store %struct.ad1816_chinfo* %10, %struct.ad1816_chinfo** %7, align 8
  %11 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %11, i32 0, i32 1
  %13 = load %struct.ad1816_info*, %struct.ad1816_info** %12, align 8
  store %struct.ad1816_info* %13, %struct.ad1816_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @RANGE(i32 %14, i32 4000, i32 55200)
  %16 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %17 = call i32 @ad1816_lock(%struct.ad1816_info* %16)
  %18 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %19 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %7, align 8
  %20 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCMDIR_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 3
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ad1816_write(%struct.ad1816_info* %18, i32 %25, i32 %26)
  %28 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %29 = call i32 @ad1816_unlock(%struct.ad1816_info* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local i32 @ad1816_write(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
