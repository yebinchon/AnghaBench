; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_enter_MCE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_enter_MCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32 }

@BD_F_MCE_BIT = common dso_local global i32 0, align 4
@MSS_INDEX = common dso_local global i32 0, align 4
@MSS_TRD = common dso_local global i32 0, align 4
@MSS_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*)* @ad_enter_MCE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_enter_MCE(%struct.mss_info* %0) #0 {
  %2 = alloca %struct.mss_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %2, align 8
  %4 = load i32, i32* @BD_F_MCE_BIT, align 4
  %5 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %6 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %10 = call i32 @ad_wait_init(%struct.mss_info* %9, i32 203000)
  %11 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %12 = load i32, i32* @MSS_INDEX, align 4
  %13 = call i32 @io_rd(%struct.mss_info* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MSS_TRD, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %19 = load i32, i32* @MSS_INDEX, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MSS_MCE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @io_wr(%struct.mss_info* %18, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @ad_wait_init(%struct.mss_info*, i32) #1

declare dso_local i32 @io_rd(%struct.mss_info*, i32) #1

declare dso_local i32 @io_wr(%struct.mss_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
