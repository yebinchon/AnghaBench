; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32, i64 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @udp6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %16 = icmp ne %struct.sockaddr* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %6
  %18 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %14, align 4
  br label %42

25:                                               ; preds = %17
  %26 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %32, i32* %14, align 4
  br label %42

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %6
  %35 = load %struct.socket*, %struct.socket** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %40 = load %struct.thread*, %struct.thread** %13, align 8
  %41 = call i32 @udp6_output(%struct.socket* %35, i32 %36, %struct.mbuf* %37, %struct.sockaddr* %38, %struct.mbuf* %39, %struct.thread* %40)
  store i32 %41, i32* %7, align 4
  br label %52

42:                                               ; preds = %31, %23
  %43 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %47 = call i32 @m_freem(%struct.mbuf* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %34
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @udp6_output(%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
