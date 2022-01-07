; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24HT_MT_PCTL_PSTART = common dso_local global i32 0, align 4
@ENVY24HT_MT_PCTL_RSTART = common dso_local global i32 0, align 4
@ENVY24HT_MT_PCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @envy24ht_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_stop(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PCMDIR_PLAY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENVY24HT_MT_PCTL_PSTART, align 4
  %12 = xor i32 %11, -1
  store i32 %12, i32* %6, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENVY24HT_MT_PCTL_RSTART, align 4
  %15 = xor i32 %14, -1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = load i32, i32* @ENVY24HT_MT_PCTL, align 4
  %19 = call i32 @envy24ht_rdmt(%struct.sc_info* %17, i32 %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = load i32, i32* @ENVY24HT_MT_PCTL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @envy24ht_wrmt(%struct.sc_info* %20, i32 %21, i32 %24, i32 1)
  ret void
}

declare dso_local i32 @envy24ht_rdmt(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @envy24ht_wrmt(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
