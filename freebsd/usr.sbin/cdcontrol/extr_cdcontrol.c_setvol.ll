; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_setvol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_setvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc_vol = type { i32* }

@fd = common dso_local global i32 0, align 4
@CDIOCSETVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @setvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setvol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioc_vol, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 255, %12 ], [ %14, %13 ]
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ 0, %8 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 255, %25 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ 0, %21 ], [ %29, %28 ]
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds %struct.ioc_vol, %struct.ioc_vol* %5, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.ioc_vol, %struct.ioc_vol* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ioc_vol, %struct.ioc_vol* %5, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.ioc_vol, %struct.ioc_vol* %5, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @fd, align 4
  %47 = load i32, i32* @CDIOCSETVOL, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.ioc_vol* %5)
  ret i32 %48
}

declare dso_local i32 @ioctl(i32, i32, %struct.ioc_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
