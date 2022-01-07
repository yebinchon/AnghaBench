; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_longrun_power_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_longrun.c_tmx86_longrun_power_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crusoe_performance_longrun = common dso_local global i64 0, align 8
@crusoe_economy_longrun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tmx86_longrun_power_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmx86_longrun_power_profile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @power_profile_get_state()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 128
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 129
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %27

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %18 [
    i32 128, label %14
    i32 129, label %16
  ]

14:                                               ; preds = %12
  %15 = load i64, i64* @crusoe_performance_longrun, align 8
  store i64 %15, i64* %4, align 8
  br label %20

16:                                               ; preds = %12
  %17 = load i64, i64* @crusoe_economy_longrun, align 8
  store i64 %17, i64* %4, align 8
  br label %20

18:                                               ; preds = %12
  %19 = call i64 (...) @tmx86_get_longrun_mode()
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = call i64 (...) @tmx86_get_longrun_mode()
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @tmx86_set_longrun_mode(i64 %25)
  br label %27

27:                                               ; preds = %11, %24, %20
  ret void
}

declare dso_local i32 @power_profile_get_state(...) #1

declare dso_local i64 @tmx86_get_longrun_mode(...) #1

declare dso_local i32 @tmx86_set_longrun_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
