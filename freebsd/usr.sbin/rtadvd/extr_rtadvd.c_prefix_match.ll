; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_rtadvd.c_prefix_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_rtadvd.c_prefix_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prefix_match(%struct.in6_addr* %0, i32 %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = srem i32 %20, 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 8, %22
  %24 = shl i32 255, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %12, align 1
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = bitcast %struct.in6_addr* %26 to i8*
  %28 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %29 = bitcast %struct.in6_addr* %28 to i8*
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @memcmp(i8* %27, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

34:                                               ; preds = %17
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %48, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %37, %34
  store i32 1, i32* %5, align 4
  br label %63

62:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61, %33, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
