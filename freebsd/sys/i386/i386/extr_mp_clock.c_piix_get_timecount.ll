; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_clock.c_piix_get_timecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_clock.c_piix_get_timecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32 }

@piix_timecounter_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timecounter*)* @piix_get_timecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix_get_timecount(%struct.timecounter* %0) #0 {
  %2 = alloca %struct.timecounter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %2, align 8
  %6 = load i32, i32* @piix_timecounter_address, align 4
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @piix_timecounter_address, align 4
  %9 = call i32 @inl(i32 %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @piix_timecounter_address, align 4
  %14 = call i32 @inl(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ugt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br i1 %24, label %10, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
