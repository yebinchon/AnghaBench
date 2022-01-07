; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI_TTY = common dso_local global i32 0, align 4
@PI_DISK = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@PI_AV = common dso_local global i32 0, align 4
@PI_REALTIME = common dso_local global i32 0, align 4
@PI_DULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"intr_priority: no interrupt type in flags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_priority(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 135
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %21 [
    i32 128, label %7
    i32 133, label %9
    i32 129, label %11
    i32 132, label %13
    i32 134, label %15
    i32 131, label %17
    i32 130, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @PI_TTY, align 4
  store i32 %8, i32* %3, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @PI_DISK, align 4
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @PI_NET, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @PI_DISK, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @PI_AV, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @PI_REALTIME, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @PI_DULL, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
