; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_match_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_match_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@LLE_IFADDR = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32, %struct.llentry*)* @in6_lltable_match_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_lltable_match_prefix(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2, %struct.llentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.llentry*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.llentry* %3, %struct.llentry** %9, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in6*
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  store %struct.in6_addr* %15, %struct.in6_addr** %10, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in6*
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  store %struct.in6_addr* %18, %struct.in6_addr** %11, align 8
  %19 = load %struct.llentry*, %struct.llentry** %9, align 8
  %20 = getelementptr inbounds %struct.llentry, %struct.llentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.in6_addr* %21, %struct.in6_addr** %12, align 8
  %22 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %23 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %24 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %25 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr* %22, %struct.in6_addr* %23, %struct.in6_addr* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

28:                                               ; preds = %4
  %29 = load %struct.llentry*, %struct.llentry** %9, align 8
  %30 = getelementptr inbounds %struct.llentry, %struct.llentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LLE_IFADDR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %37 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %38 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %36, %struct.in6_addr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LLE_STATIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %61

46:                                               ; preds = %40, %35
  store i32 0, i32* %5, align 4
  br label %61

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @LLE_STATIC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.llentry*, %struct.llentry** %9, align 8
  %54 = getelementptr inbounds %struct.llentry, %struct.llentry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LLE_STATIC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %47
  store i32 1, i32* %5, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %46, %45, %27
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
