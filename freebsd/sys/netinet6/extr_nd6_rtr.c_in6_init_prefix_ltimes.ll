; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_init_prefix_ltimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_init_prefix_ltimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i64, i64, i8*, i8* }

@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_prefix*)* @in6_init_prefix_ltimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_init_prefix_ltimes(%struct.nd_prefix* %0) #0 {
  %2 = alloca %struct.nd_prefix*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %2, align 8
  %3 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %4 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %10 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %9, i32 0, i32 3
  store i8* null, i8** %10, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load i8*, i8** @time_uptime, align 8
  %13 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %14 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr i8, i8* %12, i64 %15
  %17 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %18 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %11, %8
  %20 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %21 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %27 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %26, i32 0, i32 2
  store i8* null, i8** %27, align 8
  br label %36

28:                                               ; preds = %19
  %29 = load i8*, i8** @time_uptime, align 8
  %30 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %31 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = load %struct.nd_prefix*, %struct.nd_prefix** %2, align 8
  %35 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %28, %25
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
