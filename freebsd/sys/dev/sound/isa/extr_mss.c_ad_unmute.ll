; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_unmute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32 }

@I6_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*)* @ad_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_unmute(%struct.mss_info* %0) #0 {
  %2 = alloca %struct.mss_info*, align 8
  store %struct.mss_info* %0, %struct.mss_info** %2, align 8
  %3 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %4 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %5 = call i32 @ad_read(%struct.mss_info* %4, i32 6)
  %6 = load i32, i32* @I6_MUTE, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = call i32 @ad_write(%struct.mss_info* %3, i32 6, i32 %8)
  %10 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %11 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %12 = call i32 @ad_read(%struct.mss_info* %11, i32 7)
  %13 = load i32, i32* @I6_MUTE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @ad_write(%struct.mss_info* %10, i32 7, i32 %15)
  ret void
}

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
