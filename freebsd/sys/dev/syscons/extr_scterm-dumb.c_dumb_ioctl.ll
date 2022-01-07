; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-dumb.c_dumb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-dumb.c_dumb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SC_NORM_ATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tty*, i32, i64, %struct.thread*)* @dumb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumb_ioctl(i32* %0, %struct.tty* %1, i32 %2, i64 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.tty* %1, %struct.tty** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %52 [
    i32 128, label %14
    i32 129, label %18
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* @SC_NORM_ATTR, align 4
  %16 = load i64, i64* %10, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %54

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %12, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %54

28:                                               ; preds = %18
  %29 = load i32, i32* @SC_NORM_ATTR, align 4
  %30 = and i32 %29, 15
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @SC_NORM_ATTR, align 4
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @SC_NORM_ATTR, align 4
  %41 = and i32 %40, 15
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SC_NORM_ATTR, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @ENOIOCTL, align 4
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %5
  %53 = load i32, i32* @ENOIOCTL, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %28, %26, %14
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
