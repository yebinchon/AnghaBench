; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_are_prefix_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_are_prefix_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"in6_are_prefix_equal: invalid prefix length(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_are_prefix_equal(%struct.in6_addr* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 0, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 128
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @log(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %4, align 4
  br label %59

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %22, 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @bcmp(i32** %25, i32** %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %59

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 8, %43
  %45 = ashr i32 %42, %44
  %46 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %47 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 8, %53
  %55 = ashr i32 %52, %54
  %56 = icmp ne i32 %45, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %59

58:                                               ; preds = %35, %32
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %31, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i64 @bcmp(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
