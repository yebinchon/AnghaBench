; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ip6_clear_scope_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ip6_clear_scope_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*)* @cma_ip6_clear_scope_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_ip6_clear_scope_id(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %2, align 8
  %3 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %4 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %8 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6, %1
  %11 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %12 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %16 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %10, %6
  ret void
}

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
