; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_osdep.h_ixgbe_bcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_osdep.h_ixgbe_bcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @ixgbe_bcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_bcopy(i8* noalias %0, i8* noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %32, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 32
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %13
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
