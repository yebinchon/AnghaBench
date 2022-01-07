; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_init_address_ltimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_init_address_ltimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32 }
%struct.in6_addrlifetime = type { i64, i64, i64, i64 }

@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_prefix*, %struct.in6_addrlifetime*)* @in6_init_address_ltimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_init_address_ltimes(%struct.nd_prefix* %0, %struct.in6_addrlifetime* %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.in6_addrlifetime*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store %struct.in6_addrlifetime* %1, %struct.in6_addrlifetime** %4, align 8
  %5 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %6 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %12 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load i8*, i8** @time_uptime, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %17 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %19 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %22 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %13, %10
  %26 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %27 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %33 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  br label %46

34:                                               ; preds = %25
  %35 = load i8*, i8** @time_uptime, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %38 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %40 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %43 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %34, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
