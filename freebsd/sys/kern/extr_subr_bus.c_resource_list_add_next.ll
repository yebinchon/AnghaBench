; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_add_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_add_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_list_add_next(%struct.resource_list* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %18, %5
  %13 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32* @resource_list_find(%struct.resource_list* %13, i32 %14, i32 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @resource_list_add(%struct.resource_list* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
