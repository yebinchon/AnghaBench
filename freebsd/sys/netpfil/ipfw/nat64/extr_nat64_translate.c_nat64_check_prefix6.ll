; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_check_prefix6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_check_prefix6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat64_check_prefix6(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @nat64_check_prefixlen(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %13 = call i64 @IN6_IS_ADDR_WKPFX(%struct.in6_addr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 96
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %15, %11
  %21 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %20
  %31 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %32 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %36 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %40 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %28, %18, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @nat64_check_prefixlen(i32) #1

declare dso_local i64 @IN6_IS_ADDR_WKPFX(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
