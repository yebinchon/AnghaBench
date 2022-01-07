; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hhook_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hhook_head_deregister(%struct.hhook_head* %0) #0 {
  %2 = alloca %struct.hhook_head*, align 8
  %3 = alloca i32, align 4
  store %struct.hhook_head* %0, %struct.hhook_head** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @HHHLIST_LOCK()
  %5 = load %struct.hhook_head*, %struct.hhook_head** %2, align 8
  %6 = icmp eq %struct.hhook_head* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOENT, align 4
  store i32 %8, i32* %3, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.hhook_head*, %struct.hhook_head** %2, align 8
  %11 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.hhook_head*, %struct.hhook_head** %2, align 8
  %18 = call i32 @hhook_head_destroy(%struct.hhook_head* %17)
  br label %19

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %7
  %21 = call i32 (...) @HHHLIST_UNLOCK()
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @HHHLIST_LOCK(...) #1

declare dso_local i32 @hhook_head_destroy(%struct.hhook_head*) #1

declare dso_local i32 @HHHLIST_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
