; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_channel_id_to_papd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_channel_id_to_papd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @channel_id_to_papd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_id_to_papd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @is_valid_channel(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 255, i32* %2, align 4
  br label %30

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 1, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 14
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 36, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %30

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 100, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 140
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 2, i32* %2, align 4
  br label %30

29:                                               ; preds = %25, %22
  store i32 3, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %21, %14, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @is_valid_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
