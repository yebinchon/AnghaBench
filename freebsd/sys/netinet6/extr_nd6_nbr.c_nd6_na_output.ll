; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_na_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_na_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr = type { i32 }

@RT_DEFAULT_FIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_na_output(%struct.ifnet* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3, i32 %4, %struct.sockaddr* %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.sockaddr* %5, %struct.sockaddr** %12, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %19 = load i32, i32* @RT_DEFAULT_FIB, align 4
  %20 = call i32 @nd6_na_output_fib(%struct.ifnet* %13, %struct.in6_addr* %14, %struct.in6_addr* %15, i32 %16, i32 %17, %struct.sockaddr* %18, i32 %19)
  ret void
}

declare dso_local i32 @nd6_na_output_fib(%struct.ifnet*, %struct.in6_addr*, %struct.in6_addr*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
