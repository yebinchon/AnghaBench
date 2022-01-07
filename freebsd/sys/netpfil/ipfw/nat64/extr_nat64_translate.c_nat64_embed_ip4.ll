; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_embed_ip4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_embed_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32*, i64* }

@.str = private unnamed_addr constant [15 x i8] c"Wrong plen: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nat64_embed_ip4(%struct.in6_addr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %60 [
    i32 32, label %8
    i32 96, label %8
    i32 40, label %17
    i32 48, label %17
    i32 56, label %17
    i32 64, label %47
  ]

8:                                                ; preds = %3, %3
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %9, i32* %16, align 4
  br label %63

17:                                               ; preds = %3, %3, %3
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 32
  %20 = sub nsw i32 32, %19
  %21 = shl i32 -1, %20
  %22 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %23 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 32
  %31 = ashr i32 %28, %30
  %32 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = srem i32 %39, 32
  %41 = sub nsw i32 24, %40
  %42 = shl i32 %38, %41
  %43 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  br label %63

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 8
  %50 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 24
  %56 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %57 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %47, %17, %8
  %64 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %65 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 8
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
