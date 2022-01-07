; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_unlock_umutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_unlock_umutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.umutex = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, i32)* @do_unlock_umutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unlock_umutex(%struct.thread* %0, %struct.umutex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.umutex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.umutex* %1, %struct.umutex** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.umutex*, %struct.umutex** %6, align 8
  %11 = getelementptr inbounds %struct.umutex, %struct.umutex* %10, i32 0, i32 0
  %12 = call i32 @fueword32(i32* %11, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EFAULT, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 129
  switch i32 %19, label %38 [
    i32 0, label %20
    i32 129, label %26
    i32 128, label %32
  ]

20:                                               ; preds = %17
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = load %struct.umutex*, %struct.umutex** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @do_unlock_normal(%struct.thread* %21, %struct.umutex* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = load %struct.umutex*, %struct.umutex** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @do_unlock_pi(%struct.thread* %27, %struct.umutex* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = load %struct.umutex*, %struct.umutex** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @do_unlock_pp(%struct.thread* %33, %struct.umutex* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %17
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %32, %26, %20, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @do_unlock_normal(%struct.thread*, %struct.umutex*, i32, i32) #1

declare dso_local i32 @do_unlock_pi(%struct.thread*, %struct.umutex*, i32, i32) #1

declare dso_local i32 @do_unlock_pp(%struct.thread*, %struct.umutex*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
