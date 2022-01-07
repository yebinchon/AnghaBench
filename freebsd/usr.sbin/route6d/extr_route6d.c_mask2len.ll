; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_mask2len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_mask2len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*, i32)* @mask2len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask2len(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %9 = bitcast %struct.in6_addr* %8 to i32*
  store i32* %9, i32** %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  br label %10

27:                                               ; preds = %18, %10
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %69 [
    i32 254, label %34
    i32 252, label %39
    i32 248, label %44
    i32 240, label %49
    i32 224, label %54
    i32 192, label %59
    i32 128, label %64
  ]

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 7
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35
  br label %69

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 6
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40
  br label %69

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 5
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45
  br label %69

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50
  br label %69

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 3
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55
  br label %69

59:                                               ; preds = %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %31, %68, %63, %58, %53, %48, %43, %38
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
