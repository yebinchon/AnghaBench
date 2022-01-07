; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list_decorator.c_sci_mdl_decorator_get_memory_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list_decorator.c_sci_mdl_decorator_get_memory_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sci_mdl_decorator_get_memory_size(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @sci_mdl_first_entry(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_3__* @sci_mdl_get_current_entry(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20, %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @sci_mdl_next_entry(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.TYPE_3__* @sci_mdl_get_current_entry(i32 %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %6, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i32 @sci_mdl_first_entry(i32) #1

declare dso_local %struct.TYPE_3__* @sci_mdl_get_current_entry(i32) #1

declare dso_local i32 @sci_mdl_next_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
