; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_sort_modifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_sort_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sort_mods = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@need_hint = common dso_local global i32 0, align 4
@need_random = common dso_local global i32 0, align 4
@print_symbols_on_debug = common dso_local global i32 0, align 4
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sort_mods*, i32)* @set_sort_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sort_modifier(%struct.sort_mods* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sort_mods*, align 8
  %5 = alloca i32, align 4
  store %struct.sort_mods* %0, %struct.sort_mods** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %7 = icmp eq %struct.sort_mods* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %45 [
    i32 98, label %11
    i32 100, label %14
    i32 102, label %17
    i32 103, label %20
    i32 105, label %23
    i32 82, label %26
    i32 77, label %29
    i32 110, label %33
    i32 114, label %36
    i32 86, label %39
    i32 104, label %42
  ]

11:                                               ; preds = %9
  %12 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %13 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %16 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %46

17:                                               ; preds = %9
  %18 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %19 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  br label %46

20:                                               ; preds = %9
  %21 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %22 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  store i32 1, i32* @need_hint, align 4
  br label %46

23:                                               ; preds = %9
  %24 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %25 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %24, i32 0, i32 4
  store i32 1, i32* %25, align 4
  br label %46

26:                                               ; preds = %9
  %27 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %28 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %27, i32 0, i32 5
  store i32 1, i32* %28, align 4
  store i32 1, i32* @need_hint, align 4
  store i32 1, i32* @need_random, align 4
  br label %46

29:                                               ; preds = %9
  %30 = call i32 (...) @initialise_months()
  %31 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %32 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %31, i32 0, i32 6
  store i32 1, i32* %32, align 4
  store i32 1, i32* @need_hint, align 4
  br label %46

33:                                               ; preds = %9
  %34 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %35 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %34, i32 0, i32 7
  store i32 1, i32* %35, align 4
  store i32 1, i32* @need_hint, align 4
  store i32 1, i32* @print_symbols_on_debug, align 4
  br label %46

36:                                               ; preds = %9
  %37 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %38 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %37, i32 0, i32 8
  store i32 1, i32* %38, align 4
  br label %46

39:                                               ; preds = %9
  %40 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %41 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %40, i32 0, i32 9
  store i32 1, i32* %41, align 4
  br label %46

42:                                               ; preds = %9
  %43 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %44 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %43, i32 0, i32 10
  store i32 1, i32* %44, align 4
  store i32 1, i32* @need_hint, align 4
  store i32 1, i32* @print_symbols_on_debug, align 4
  br label %46

45:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %42, %39, %36, %33, %29, %26, %23, %20, %17, %14, %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 4
  %47 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %48 = call i32 @get_sort_func(%struct.sort_mods* %47)
  %49 = load %struct.sort_mods*, %struct.sort_mods** %4, align 8
  %50 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %45, %8
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @initialise_months(...) #1

declare dso_local i32 @get_sort_func(%struct.sort_mods*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
