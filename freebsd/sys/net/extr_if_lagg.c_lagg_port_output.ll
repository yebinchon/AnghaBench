; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.lagg_port* }
%struct.lagg_port = type { i32 (%struct.ifnet.0*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* }
%struct.ifnet.0 = type opaque
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.route = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* @lagg_port_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_port_output(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca %struct.lagg_port*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.route* %3, %struct.route** %9, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.lagg_port*, %struct.lagg_port** %12, align 8
  store %struct.lagg_port* %13, %struct.lagg_port** %10, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %4, %4
  %18 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  %19 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %18, i32 0, i32 0
  %20 = load i32 (%struct.ifnet.0*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)*, i32 (%struct.ifnet.0*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)** %19, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = bitcast %struct.ifnet* %21 to %struct.ifnet.0*
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = load %struct.route*, %struct.route** %9, align 8
  %26 = call i32 %20(%struct.ifnet.0* %22, %struct.mbuf* %23, %struct.sockaddr* %24, %struct.route* %25)
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %4
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = call i32 @m_freem(%struct.mbuf* %28)
  %30 = load i32, i32* @ENETDOWN, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
