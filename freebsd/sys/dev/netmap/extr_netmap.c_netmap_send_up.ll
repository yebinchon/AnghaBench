; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_send_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_send_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbq = type { i32 }
%struct.mbuf = type { i32 }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sending up pkt %p size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbq*)* @netmap_send_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_send_up(%struct.ifnet* %0, %struct.mbq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbq* %1, %struct.mbq** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.mbq*, %struct.mbq** %4, align 8
  %10 = call %struct.mbuf* @mbq_dequeue(%struct.mbq* %9)
  store %struct.mbuf* %10, %struct.mbuf** %5, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i32, i32* @netmap_debug, align 4
  %14 = load i32, i32* @NM_DEBUG_HOST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %20 = call i32 @MBUF_LEN(%struct.mbuf* %19)
  %21 = call i32 @nm_prinf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = call %struct.mbuf* @nm_os_send_up(%struct.ifnet* %23, %struct.mbuf* %24, %struct.mbuf* %25)
  store %struct.mbuf* %26, %struct.mbuf** %7, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %30, %struct.mbuf** %6, align 8
  br label %31

31:                                               ; preds = %29, %22
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = call %struct.mbuf* @nm_os_send_up(%struct.ifnet* %36, %struct.mbuf* null, %struct.mbuf* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.mbq*, %struct.mbq** %4, align 8
  %41 = call i32 @mbq_fini(%struct.mbq* %40)
  ret void
}

declare dso_local %struct.mbuf* @mbq_dequeue(%struct.mbq*) #1

declare dso_local i32 @nm_prinf(i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @MBUF_LEN(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @nm_os_send_up(%struct.ifnet*, %struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @mbq_fini(%struct.mbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
