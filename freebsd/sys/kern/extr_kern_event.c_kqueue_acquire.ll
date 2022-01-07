; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.kqueue* }
%struct.kqueue = type { i32, i32 }

@DTYPE_KQUEUE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@KQ_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kqueue**)* @kqueue_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_acquire(%struct.file* %0, %struct.kqueue** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kqueue**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqueue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kqueue** %1, %struct.kqueue*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load %struct.kqueue*, %struct.kqueue** %9, align 8
  store %struct.kqueue* %10, %struct.kqueue** %7, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DTYPE_KQUEUE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %18 = icmp eq %struct.kqueue* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %16
  %22 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %23 = load %struct.kqueue**, %struct.kqueue*** %5, align 8
  store %struct.kqueue* %22, %struct.kqueue** %23, align 8
  %24 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %25 = call i32 @KQ_LOCK(%struct.kqueue* %24)
  %26 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %27 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KQ_CLOSING, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @KQ_CLOSING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %35 = call i32 @KQ_UNLOCK(%struct.kqueue* %34)
  %36 = load i32, i32* @EBADF, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %21
  %38 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %39 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %43 = call i32 @KQ_UNLOCK(%struct.kqueue* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %33, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i32 @KQ_UNLOCK(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
