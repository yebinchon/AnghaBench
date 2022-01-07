; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_hpts_cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_hpts_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpts_domain_info = type { i32*, i64 }
%struct.inpcb = type { i32, i32, i64, i64, i64, i64, i64 }

@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i32 0, align 4
@M_NODOM = common dso_local global i64 0, align 8
@NETISR_CPUID_NONE = common dso_local global i32 0, align 4
@hpts_domains = common dso_local global %struct.hpts_domain_info* null, align 8
@tcp_bind_threads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*)* @hpts_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpts_cpuid(%struct.inpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %6 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %31 = call i32 @hpts_random_cpu(%struct.inpcb* %30)
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %23
  %33 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @mp_ncpus, align 4
  %37 = sext i32 %36 to i64
  %38 = urem i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %29, %18, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @hpts_random_cpu(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
