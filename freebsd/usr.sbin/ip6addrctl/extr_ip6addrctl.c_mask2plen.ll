; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_mask2plen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_mask2plen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in6*)* @mask2plen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask2plen(%struct.sockaddr_in6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i64 1
  %10 = bitcast %struct.sockaddr_in6* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 0
  store i32* %12, i32** %6, align 8
  br label %13

13:                                               ; preds = %72, %1
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %77

25:                                               ; preds = %20, %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  switch i32 %28, label %70 [
    i32 255, label %29
    i32 254, label %32
    i32 252, label %37
    i32 248, label %42
    i32 240, label %47
    i32 224, label %52
    i32 192, label %57
    i32 128, label %62
    i32 0, label %67
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 8
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 7
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %71

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 6
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %71

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 5
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %71

47:                                               ; preds = %25
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %25
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %71

57:                                               ; preds = %25
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %71

62:                                               ; preds = %25
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %25
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %25
  br label %77

71:                                               ; preds = %67, %62, %57, %52, %47, %42, %37, %32, %29
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  br label %13

75:                                               ; preds = %13
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %70, %24
  store i32 -1, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %75
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
