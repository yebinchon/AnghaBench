; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_scrubprefixlle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_scrubprefixlle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { %struct.TYPE_6__, %struct.ifnet*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@LLE_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_ifaddr*, i32, i32)* @in_scrubprefixlle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_scrubprefixlle(%struct.in_ifaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.ifnet*, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %9, align 8
  %13 = call i32 @bzero(%struct.sockaddr_in* %7, i32 16)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 16, i32* %14, align 8
  %15 = load i8*, i8** @AF_INET, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %10, align 8
  %18 = call i32 @bzero(%struct.sockaddr_in* %8, i32 16)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %23 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %27, i32 0, i32 1
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  store %struct.ifnet* %29, %struct.ifnet** %11, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ntohl(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** @AF_INET, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @lltable_prefix_free(i8* %41, %struct.sockaddr* %42, %struct.sockaddr* %43, i32 %44)
  br label %59

46:                                               ; preds = %3
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %55 = call i32 @LLTABLE(%struct.ifnet* %54)
  %56 = load i32, i32* @LLE_IFADDR, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = call i32 @lltable_delete_addr(i32 %55, i32 %56, %struct.sockaddr* %57)
  br label %59

59:                                               ; preds = %46, %32
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @lltable_prefix_free(i8*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @lltable_delete_addr(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
