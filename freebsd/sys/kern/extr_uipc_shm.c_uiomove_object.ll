; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_uiomove_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_uiomove_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uiomove_object(i32 %0, i64 %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.uio* %2, %struct.uio** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load %struct.uio*, %struct.uio** %6, align 8
  %12 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.uio*, %struct.uio** %6, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %48

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @MIN(i64 %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %48

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = call i32 @uiomove_object_page(i32 %34, i64 %35, %struct.uio* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %33
  br label %48

47:                                               ; preds = %40
  br label %10

48:                                               ; preds = %46, %32, %21, %10
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @uiomove_object_page(i32, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
