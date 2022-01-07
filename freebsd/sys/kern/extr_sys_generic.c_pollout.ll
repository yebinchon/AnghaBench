; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_pollout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_pollout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.pollfd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.pollfd*, %struct.pollfd*, i64)* @pollout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pollout(%struct.thread* %0, %struct.pollfd* %1, %struct.pollfd* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca %struct.pollfd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.pollfd* %1, %struct.pollfd** %7, align 8
  store %struct.pollfd* %2, %struct.pollfd** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 0
  %20 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  %22 = call i32 @copyout(i64* %19, i64* %21, i32 8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %12, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i32 1
  store %struct.pollfd* %37, %struct.pollfd** %7, align 8
  %38 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 1
  store %struct.pollfd* %39, %struct.pollfd** %8, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %13

43:                                               ; preds = %13
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.thread*, %struct.thread** %6, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 %44, i64* %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @copyout(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
