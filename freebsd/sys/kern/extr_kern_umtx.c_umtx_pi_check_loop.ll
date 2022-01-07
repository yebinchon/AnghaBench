; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_check_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_check_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_pi = type { i32 }

@umtx_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umtx_pi*)* @umtx_pi_check_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_pi_check_loop(%struct.umtx_pi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umtx_pi*, align 8
  %4 = alloca %struct.umtx_pi*, align 8
  store %struct.umtx_pi* %0, %struct.umtx_pi** %3, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @umtx_lock, i32 %5)
  %7 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %8 = icmp eq %struct.umtx_pi* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  store %struct.umtx_pi* %11, %struct.umtx_pi** %4, align 8
  br label %12

12:                                               ; preds = %35, %10
  %13 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %14 = call %struct.umtx_pi* @umtx_pi_next(%struct.umtx_pi* %13)
  store %struct.umtx_pi* %14, %struct.umtx_pi** %3, align 8
  %15 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %16 = icmp eq %struct.umtx_pi* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %20 = call %struct.umtx_pi* @umtx_pi_next(%struct.umtx_pi* %19)
  store %struct.umtx_pi* %20, %struct.umtx_pi** %4, align 8
  %21 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %22 = icmp eq %struct.umtx_pi* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %26 = call %struct.umtx_pi* @umtx_pi_next(%struct.umtx_pi* %25)
  store %struct.umtx_pi* %26, %struct.umtx_pi** %4, align 8
  %27 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %28 = icmp eq %struct.umtx_pi* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %36

30:                                               ; preds = %24
  %31 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %32 = load %struct.umtx_pi*, %struct.umtx_pi** %4, align 8
  %33 = icmp eq %struct.umtx_pi* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %37

35:                                               ; preds = %30
  br label %12

36:                                               ; preds = %29, %23, %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.umtx_pi* @umtx_pi_next(%struct.umtx_pi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
