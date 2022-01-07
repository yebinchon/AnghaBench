; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_get_probe_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_get_probe_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_PROBE_ROOT = common dso_local global i32 0, align 4
@BHND_PROBE_ORDER_FIRST = common dso_local global i32 0, align 4
@BHND_PROBE_BUS = common dso_local global i32 0, align 4
@BHND_PROBE_ORDER_EARLY = common dso_local global i32 0, align 4
@BHND_PROBE_ORDER_LATE = common dso_local global i32 0, align 4
@BHND_PROBE_ORDER_LAST = common dso_local global i32 0, align 4
@BHND_PROBE_CPU = common dso_local global i32 0, align 4
@BHND_PROBE_RESOURCE = common dso_local global i32 0, align 4
@BHND_PROBE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_get_probe_order(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bhnd_get_class(i32 %6)
  switch i32 %7, label %47 [
    i32 148, label %8
    i32 147, label %12
    i32 134, label %12
    i32 131, label %16
    i32 132, label %20
    i32 146, label %24
    i32 133, label %28
    i32 140, label %28
    i32 139, label %32
    i32 136, label %36
    i32 135, label %36
    i32 137, label %36
    i32 145, label %36
    i32 144, label %36
    i32 143, label %36
    i32 130, label %36
    i32 129, label %36
    i32 128, label %36
    i32 142, label %36
    i32 138, label %36
    i32 141, label %36
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @BHND_PROBE_ROOT, align 4
  %10 = load i32, i32* @BHND_PROBE_ORDER_FIRST, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @BHND_PROBE_BUS, align 4
  %14 = load i32, i32* @BHND_PROBE_ORDER_EARLY, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @BHND_PROBE_BUS, align 4
  %18 = load i32, i32* @BHND_PROBE_ORDER_LATE, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* @BHND_PROBE_BUS, align 4
  %22 = load i32, i32* @BHND_PROBE_ORDER_LAST, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* @BHND_PROBE_CPU, align 4
  %26 = load i32, i32* @BHND_PROBE_ORDER_FIRST, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %2, %2
  %29 = load i32, i32* @BHND_PROBE_CPU, align 4
  %30 = load i32, i32* @BHND_PROBE_ORDER_EARLY, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load i32, i32* @BHND_PROBE_RESOURCE, align 4
  %34 = load i32, i32* @BHND_PROBE_ORDER_EARLY, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @bhnd_bus_find_hostb_device(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @BHND_PROBE_ROOT, align 4
  %43 = load i32, i32* @BHND_PROBE_ORDER_EARLY, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @BHND_PROBE_DEFAULT, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %2
  %48 = load i32, i32* @BHND_PROBE_DEFAULT, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %41, %32, %28, %24, %20, %16, %12, %8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @bhnd_get_class(i32) #1

declare dso_local i32 @bhnd_bus_find_hostb_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
