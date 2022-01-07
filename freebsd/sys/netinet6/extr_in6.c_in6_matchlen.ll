; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_matchlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_matchlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_matchlen(%struct.in6_addr* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %11 = bitcast %struct.in6_addr* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %13 = bitcast %struct.in6_addr* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 16
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %24, align 4
  %27 = xor i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %30

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39
  br label %16

43:                                               ; preds = %38, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
