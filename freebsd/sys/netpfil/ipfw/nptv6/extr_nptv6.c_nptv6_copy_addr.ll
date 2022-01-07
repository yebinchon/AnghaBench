; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_copy_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*, %struct.in6_addr*, %struct.in6_addr*)* @nptv6_copy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nptv6_copy_addr(%struct.in6_addr* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %62, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %13 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i1 [ false, %8 ], [ %19, %11 ]
  br i1 %21, label %22, label %65

22:                                               ; preds = %20
  %23 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %24 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %30
  store i32 %38, i32* %36, align 4
  %39 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %40 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %47 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %45, %52
  %54 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %22
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %8

65:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
