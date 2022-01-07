; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_smp_rendezvous_cpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_smp_rendezvous_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_rendezvous_cpus(i32 %0, void (i8*)* %1, void (i8*)* %2, void (i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca void (i8*)*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store void (i8*)* %1, void (i8*)** %7, align 8
  store void (i8*)* %2, void (i8*)** %8, align 8
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = call i32 (...) @spinlock_enter()
  %12 = load void (i8*)*, void (i8*)** %7, align 8
  %13 = icmp ne void (i8*)* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load void (i8*)*, void (i8*)** %7, align 8
  %16 = load i8*, i8** %10, align 8
  call void %15(i8* %16)
  br label %17

17:                                               ; preds = %14, %5
  %18 = load void (i8*)*, void (i8*)** %8, align 8
  %19 = icmp ne void (i8*)* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load void (i8*)*, void (i8*)** %8, align 8
  %22 = load i8*, i8** %10, align 8
  call void %21(i8* %22)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load void (i8*)*, void (i8*)** %9, align 8
  %25 = icmp ne void (i8*)* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load void (i8*)*, void (i8*)** %9, align 8
  %28 = load i8*, i8** %10, align 8
  call void %27(i8* %28)
  br label %29

29:                                               ; preds = %26, %23
  %30 = call i32 (...) @spinlock_exit()
  ret void
}

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
