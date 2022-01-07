; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_set_recsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_set_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_info*, i32)* @mss_set_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_set_recsrc(%struct.mss_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %11 [
    i32 131, label %7
    i32 129, label %7
    i32 133, label %8
    i32 130, label %8
    i32 132, label %9
    i32 128, label %10
  ]

7:                                                ; preds = %2, %2
  store i32 0, i32* %5, align 4
  br label %12

8:                                                ; preds = %2, %2
  store i32 64, i32* %5, align 4
  br label %12

9:                                                ; preds = %2
  store i32 192, i32* %5, align 4
  br label %12

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  store i32 128, i32* %4, align 4
  store i32 128, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %9, %8, %7
  %13 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %14 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %15 = call i32 @ad_read(%struct.mss_info* %14, i32 0)
  %16 = and i32 %15, 63
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ad_write(%struct.mss_info* %13, i32 0, i32 %18)
  %20 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %21 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %22 = call i32 @ad_read(%struct.mss_info* %21, i32 1)
  %23 = and i32 %22, 63
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ad_write(%struct.mss_info* %20, i32 1, i32 %25)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
