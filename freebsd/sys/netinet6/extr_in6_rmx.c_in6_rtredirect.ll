; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_rtredirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_rtredirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_rtredirect(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @rtredirect_fib(%struct.sockaddr* %13, %struct.sockaddr* %14, %struct.sockaddr* %15, i32 %16, %struct.sockaddr* %17, i32 %18)
  ret void
}

declare dso_local i32 @rtredirect_fib(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
