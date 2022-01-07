; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_ifaddr_broadcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_ifaddr_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.in_addr = type { i64 }

@IN_RFC3021_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_ifaddr_broadcast(i64 %0, %struct.in_ifaddr* %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.in_ifaddr*, align 8
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %4, align 8
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %9 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %16 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IN_RFC3021_MASK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @ntohl(i64 %22)
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %25 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20, %2
  %29 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %30 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 4294967295
  br label %33

33:                                               ; preds = %28, %20, %14
  %34 = phi i1 [ false, %20 ], [ false, %14 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
