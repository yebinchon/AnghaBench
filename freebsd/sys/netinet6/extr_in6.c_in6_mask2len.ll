; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_mask2len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_mask2len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_mask2len(%struct.in6_addr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %16 = bitcast %struct.in6_addr* %15 to i32*
  %17 = ptrtoint i32* %14 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %13, %2
  %23 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %24 = bitcast %struct.in6_addr* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %22, %13
  %27 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %28 = bitcast %struct.in6_addr* %27 to i32*
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %39, %26
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %44

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  br label %29

44:                                               ; preds = %37, %29
  store i32 0, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 128, %55
  %57 = and i32 %54, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %49

64:                                               ; preds = %59, %49
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 255, %75
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %102

80:                                               ; preds = %72, %69
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32* %82, i32** %9, align 8
  br label %83

83:                                               ; preds = %93, %80
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ult i32* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %102

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  br label %83

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 %98, 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %91, %79
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
