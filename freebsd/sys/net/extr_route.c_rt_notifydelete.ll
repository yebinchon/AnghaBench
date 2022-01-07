; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_notifydelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_notifydelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.ifaddr* }
%struct.ifaddr = type { i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)* }
%struct.rt_addrinfo = type { i32 }

@RTM_DELETE = common dso_local global i32 0, align 4
@V_rttrash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.rt_addrinfo*)* @rt_notifydelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_notifydelete(%struct.rtentry* %0, %struct.rt_addrinfo* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rt_addrinfo*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %4, align 8
  %6 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %7 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %6, i32 0, i32 0
  %8 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  store %struct.ifaddr* %8, %struct.ifaddr** %5, align 8
  %9 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %10 = icmp ne %struct.ifaddr* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %13 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %18 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %18, align 8
  %20 = load i32, i32* @RTM_DELETE, align 4
  %21 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %22 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %4, align 8
  %23 = call i32 %19(i32 %20, %struct.rtentry* %21, %struct.rt_addrinfo* %22)
  br label %24

24:                                               ; preds = %16, %11, %2
  %25 = load i32, i32* @V_rttrash, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @V_rttrash, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
