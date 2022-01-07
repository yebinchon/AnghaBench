; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_gsignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_gsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsignal(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pgrp*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = call i32 @sx_slock(i32* @proctree_lock)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.pgrp* @pgfind(i32 %12)
  store %struct.pgrp* %13, %struct.pgrp** %7, align 8
  %14 = call i32 @sx_sunlock(i32* @proctree_lock)
  %15 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %16 = icmp ne %struct.pgrp* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @pgsignal(%struct.pgrp* %18, i32 %19, i32 0, i32* %20)
  %22 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %23 = call i32 @PGRP_UNLOCK(%struct.pgrp* %22)
  br label %24

24:                                               ; preds = %17, %10
  br label %25

25:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.pgrp* @pgfind(i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @pgsignal(%struct.pgrp*, i32, i32, i32*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
