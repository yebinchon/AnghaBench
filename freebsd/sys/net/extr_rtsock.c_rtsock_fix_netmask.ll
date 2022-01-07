; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rtsock_fix_netmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rtsock_fix_netmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.sockaddr_storage = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockaddr* (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr_storage*)* @rtsock_fix_netmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockaddr* @rtsock_fix_netmask(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %9 = icmp eq %struct.sockaddr* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = icmp eq %struct.sockaddr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store %struct.sockaddr* null, %struct.sockaddr** %4, align 8
  br label %38

14:                                               ; preds = %10
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(%struct.sockaddr_storage* %15, i32 0, i32 %18)
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(%struct.sockaddr_storage* %20, %struct.sockaddr* %21, i32 %24)
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %37 = bitcast %struct.sockaddr_storage* %36 to %struct.sockaddr*
  store %struct.sockaddr* %37, %struct.sockaddr** %4, align 8
  br label %38

38:                                               ; preds = %14, %13
  %39 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  ret %struct.sockaddr* %39
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
