; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_drop_attr_stack.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_drop_attr_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_stack = type { %struct.attr_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_stack**)* @drop_attr_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_attr_stack(%struct.attr_stack** %0) #0 {
  %2 = alloca %struct.attr_stack**, align 8
  %3 = alloca %struct.attr_stack*, align 8
  store %struct.attr_stack** %0, %struct.attr_stack*** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.attr_stack**, %struct.attr_stack*** %2, align 8
  %6 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %7 = icmp ne %struct.attr_stack* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.attr_stack**, %struct.attr_stack*** %2, align 8
  %10 = load %struct.attr_stack*, %struct.attr_stack** %9, align 8
  store %struct.attr_stack* %10, %struct.attr_stack** %3, align 8
  %11 = load %struct.attr_stack*, %struct.attr_stack** %3, align 8
  %12 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %11, i32 0, i32 0
  %13 = load %struct.attr_stack*, %struct.attr_stack** %12, align 8
  %14 = load %struct.attr_stack**, %struct.attr_stack*** %2, align 8
  store %struct.attr_stack* %13, %struct.attr_stack** %14, align 8
  %15 = load %struct.attr_stack*, %struct.attr_stack** %3, align 8
  %16 = call i32 @attr_stack_free(%struct.attr_stack* %15)
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @attr_stack_free(%struct.attr_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
