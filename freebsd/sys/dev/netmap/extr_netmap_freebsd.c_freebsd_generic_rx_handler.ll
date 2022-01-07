; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_freebsd_generic_rx_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_freebsd_generic_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.netmap_generic_adapter = type { i32 (%struct.ifnet.0*, %struct.mbuf.1*)* }
%struct.ifnet.0 = type opaque
%struct.mbuf.1 = type opaque

@.str = private unnamed_addr constant [56 x i8] c"Warning: RX packet intercepted, but no emulated adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbuf*)* @freebsd_generic_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freebsd_generic_rx_handler(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_generic_adapter*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @NM_NA_VALID(%struct.ifnet* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @nm_prlim(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = call i32 @generic_rx_handler(%struct.ifnet* %17, %struct.mbuf* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = call i64 @NA(%struct.ifnet* %23)
  %25 = inttoptr i64 %24 to %struct.netmap_generic_adapter*
  store %struct.netmap_generic_adapter* %25, %struct.netmap_generic_adapter** %6, align 8
  %26 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %26, i32 0, i32 0
  %28 = load i32 (%struct.ifnet.0*, %struct.mbuf.1*)*, i32 (%struct.ifnet.0*, %struct.mbuf.1*)** %27, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = bitcast %struct.ifnet* %29 to %struct.ifnet.0*
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = bitcast %struct.mbuf* %31 to %struct.mbuf.1*
  %33 = call i32 %28(%struct.ifnet.0* %30, %struct.mbuf.1* %32)
  br label %34

34:                                               ; preds = %14, %22, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NM_NA_VALID(%struct.ifnet*) #1

declare dso_local i32 @nm_prlim(i32, i8*) #1

declare dso_local i32 @generic_rx_handler(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i64 @NA(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
