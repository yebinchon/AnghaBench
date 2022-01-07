; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangelock = type { i32 }
%struct.mtx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rangelock_unlock(%struct.rangelock* %0, i8* %1, %struct.mtx* %2) #0 {
  %4 = alloca %struct.rangelock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtx*, align 8
  store %struct.rangelock* %0, %struct.rangelock** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mtx* %2, %struct.mtx** %6, align 8
  %7 = load %struct.rangelock*, %struct.rangelock** %4, align 8
  %8 = icmp ne %struct.rangelock* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.mtx*, %struct.mtx** %6, align 8
  %14 = icmp ne %struct.mtx* %13, null
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i1 [ false, %9 ], [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.mtx*, %struct.mtx** %6, align 8
  %20 = call i32 @mtx_lock(%struct.mtx* %19)
  %21 = load %struct.rangelock*, %struct.rangelock** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.mtx*, %struct.mtx** %6, align 8
  %24 = call i32 @rangelock_unlock_locked(%struct.rangelock* %21, i8* %22, %struct.mtx* %23, i32 1)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @rangelock_unlock_locked(%struct.rangelock*, i8*, %struct.mtx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
