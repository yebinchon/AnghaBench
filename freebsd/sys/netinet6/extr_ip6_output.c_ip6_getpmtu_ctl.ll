; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpmtu_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpmtu_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.nhop6_extended = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@NHR_REF = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.in6_addr*, i32*)* @ip6_getpmtu_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_getpmtu_ctl(i32 %0, %struct.in6_addr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nhop6_extended, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %15 = call i32 @in6_splitscope(%struct.in6_addr* %14, %struct.in6_addr* %9, i32* %10)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NHR_REF, align 4
  %19 = call i64 @fib6_lookup_nh_ext(i32 %16, %struct.in6_addr* %9, i32 %17, i32 %18, i32 0, %struct.nhop6_extended* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.nhop6_extended, %struct.nhop6_extended* %8, i32 0, i32 1
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %11, align 8
  %26 = getelementptr inbounds %struct.nhop6_extended, %struct.nhop6_extended* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %29 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ip6_calcmtu(%struct.ifnet* %28, %struct.in6_addr* %29, i32 %30, i32* %31, i32* null, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @fib6_free_nh_ext(i32 %33, %struct.nhop6_extended* %8)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @in6_splitscope(%struct.in6_addr*, %struct.in6_addr*, i32*) #1

declare dso_local i64 @fib6_lookup_nh_ext(i32, %struct.in6_addr*, i32, i32, i32, %struct.nhop6_extended*) #1

declare dso_local i32 @ip6_calcmtu(%struct.ifnet*, %struct.in6_addr*, i32, i32*, i32*, i32) #1

declare dso_local i32 @fib6_free_nh_ext(i32, %struct.nhop6_extended*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
