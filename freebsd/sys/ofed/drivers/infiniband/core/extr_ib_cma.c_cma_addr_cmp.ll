; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @cma_addr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_addr_cmp(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %39 [
    i32 129, label %18
    i32 128, label %31
  ]

18:                                               ; preds = %14
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in*
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %23, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %14
  %32 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_in6*
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  %38 = call i32 @ipv6_addr_cmp(i32* %34, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %14
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_ib*
  %42 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %41, i32 0, i32 0
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_ib*
  %45 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %44, i32 0, i32 0
  %46 = call i32 @ib_addr_cmp(i32* %42, i32* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %31, %18, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ipv6_addr_cmp(i32*, i32*) #1

declare dso_local i32 @ib_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
