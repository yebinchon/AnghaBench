; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.sockaddr_in = type { i32 }

@ips_toosmall = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @div_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.thread*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %6
  %20 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %21 = call %struct.mbuf* @m_pullup(%struct.mbuf* %20, i32 4)
  store %struct.mbuf* %21, %struct.mbuf** %10, align 8
  %22 = icmp eq %struct.mbuf* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @ips_toosmall, align 4
  %25 = call i32 @KMOD_IPSTAT_INC(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %19, %6
  %30 = load %struct.socket*, %struct.socket** %8, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_in*
  %34 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %35 = call i32 @div_output(%struct.socket* %30, %struct.mbuf* %31, %struct.sockaddr_in* %33, %struct.mbuf* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @KMOD_IPSTAT_INC(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @div_output(%struct.socket*, %struct.mbuf*, %struct.sockaddr_in*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
