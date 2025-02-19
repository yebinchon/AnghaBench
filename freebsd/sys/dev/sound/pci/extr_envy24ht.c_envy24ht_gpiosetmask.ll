; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_gpiosetmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_gpiosetmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENVY24HT_CCS_GPIO_LMASK = common dso_local global i32 0, align 4
@ENVY24HT_CCS_GPIO_HMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @envy24ht_gpiosetmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_gpiosetmask(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = load i32, i32* @ENVY24HT_CCS_GPIO_LMASK, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @envy24ht_wrcs(%struct.sc_info* %5, i32 %6, i32 %7, i32 2)
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 4432
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = load i32, i32* @ENVY24HT_CCS_GPIO_HMASK, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 16
  %20 = call i32 @envy24ht_wrcs(%struct.sc_info* %16, i32 %17, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @envy24ht_wrcs(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
