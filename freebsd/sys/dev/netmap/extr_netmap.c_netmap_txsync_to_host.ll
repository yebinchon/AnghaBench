; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_txsync_to_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_txsync_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i64, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i32 }
%struct.mbq = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"have %d pkts in queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @netmap_txsync_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_txsync_to_host(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mbq, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %10 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %9, i32 0, i32 4
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %10, align 8
  store %struct.netmap_adapter* %11, %struct.netmap_adapter** %5, align 8
  %12 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %13 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %6, align 8
  %16 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %17 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = call i32 @mbq_init(%struct.mbq* %8)
  %20 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %21 = call i32 @netmap_grab_packets(%struct.netmap_kring* %20, %struct.mbq* %8, i32 1)
  %22 = call i32 @mbq_len(%struct.mbq* %8)
  %23 = call i32 @nm_prdis(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %26 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %33 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %41 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netmap_send_up(i32 %47, %struct.mbq* %8)
  ret i32 0
}

declare dso_local i32 @mbq_init(%struct.mbq*) #1

declare dso_local i32 @netmap_grab_packets(%struct.netmap_kring*, %struct.mbq*, i32) #1

declare dso_local i32 @nm_prdis(i8*, i32) #1

declare dso_local i32 @mbq_len(%struct.mbq*) #1

declare dso_local i32 @netmap_send_up(i32, %struct.mbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
