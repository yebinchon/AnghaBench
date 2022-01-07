; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_addrscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_addrscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@IPV6_ADDR_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_SITELOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_addrscope(%struct.in6_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  %4 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %5 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %9 = call i32 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr* %8)
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %7
  %14 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %15 = call i32 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr* %14)
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %18 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %22 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %28 = call i64 @IN6_IS_ADDR_SITELOCAL(%struct.in6_addr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @IPV6_ADDR_SCOPE_SITELOCAL, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %24, %13, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr*) #1

declare dso_local i32 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_SITELOCAL(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
