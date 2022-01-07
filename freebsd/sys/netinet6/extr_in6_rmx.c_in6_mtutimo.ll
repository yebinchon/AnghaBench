; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtutimo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtutimo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.mtuex_arg = type { i32 }
%struct.vnet = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@in6_mtutimo_setwa = common dso_local global i32 0, align 4
@in6_mtuexpire = common dso_local global i32 0, align 4
@MTUTIMO_DEFAULT = common dso_local global i32 0, align 4
@V_rtq_mtutimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @in6_mtutimo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_mtutimo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.mtuex_arg, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vnet*
  %7 = call i32 @CURVNET_SET_QUIET(%struct.vnet* %6)
  %8 = load i32, i32* @AF_INET6, align 4
  %9 = load i32, i32* @in6_mtutimo_setwa, align 4
  %10 = load i32, i32* @in6_mtuexpire, align 4
  %11 = call i32 @rt_foreach_fib_walk(i32 %8, i32 %9, i32 %10, %struct.mtuex_arg* %4)
  %12 = load i32, i32* @MTUTIMO_DEFAULT, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i32 @tvtohz(%struct.timeval* %3)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @callout_reset(i32* @V_rtq_mtutimer, i32 %15, void (i8*)* @in6_mtutimo, i8* %16)
  %18 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET_QUIET(%struct.vnet*) #1

declare dso_local i32 @rt_foreach_fib_walk(i32, i32, i32, %struct.mtuex_arg*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i8*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
