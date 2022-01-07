; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_is_virtualised_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_is_virtualised_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hhook_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hhook_head_is_virtualised_lookup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hhook_head*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.hhook_head* @hhook_head_get(i32 %8, i32 %9)
  store %struct.hhook_head* %10, %struct.hhook_head** %6, align 8
  %11 = load %struct.hhook_head*, %struct.hhook_head** %6, align 8
  %12 = icmp eq %struct.hhook_head* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.hhook_head*, %struct.hhook_head** %6, align 8
  %16 = call i32 @hhook_head_is_virtualised(%struct.hhook_head* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hhook_head*, %struct.hhook_head** %6, align 8
  %18 = call i32 @hhook_head_release(%struct.hhook_head* %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.hhook_head* @hhook_head_get(i32, i32) #1

declare dso_local i32 @hhook_head_is_virtualised(%struct.hhook_head*) #1

declare dso_local i32 @hhook_head_release(%struct.hhook_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
