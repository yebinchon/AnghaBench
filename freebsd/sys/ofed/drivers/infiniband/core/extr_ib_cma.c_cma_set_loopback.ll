; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*)* @cma_set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_set_loopback(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %3 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %4 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %19 [
    i32 129, label %6
    i32 128, label %13
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @INADDR_LOOPBACK, align 4
  %8 = call i32 @htonl(i32 %7)
  %9 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in6*
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = call i32 @htonl(i32 1)
  %18 = call i32 @ipv6_addr_set(i32* %16, i32 0, i32 0, i32 0, i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_ib*
  %22 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %21, i32 0, i32 0
  %23 = call i32 @htonl(i32 1)
  %24 = call i32 @ib_addr_set(i32* %22, i32 0, i32 0, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %19, %13, %6
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ib_addr_set(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
