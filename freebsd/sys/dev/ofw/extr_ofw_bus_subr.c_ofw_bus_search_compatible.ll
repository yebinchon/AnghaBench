; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_search_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_search_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %0, %struct.ofw_compat_data* %1) #0 {
  %3 = alloca %struct.ofw_compat_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ofw_compat_data* %1, %struct.ofw_compat_data** %5, align 8
  %6 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %7 = icmp eq %struct.ofw_compat_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.ofw_compat_data* null, %struct.ofw_compat_data** %3, align 8
  br label %29

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %24, %9
  %11 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %12 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %18 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @ofw_bus_is_compatible(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %26 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %25, i32 1
  store %struct.ofw_compat_data* %26, %struct.ofw_compat_data** %5, align 8
  br label %10

27:                                               ; preds = %22, %10
  %28 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  store %struct.ofw_compat_data* %28, %struct.ofw_compat_data** %3, align 8
  br label %29

29:                                               ; preds = %27, %8
  %30 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %3, align 8
  ret %struct.ofw_compat_data* %30
}

declare dso_local i64 @ofw_bus_is_compatible(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
