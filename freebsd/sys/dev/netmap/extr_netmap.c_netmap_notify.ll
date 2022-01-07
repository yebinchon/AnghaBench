; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i32, i32, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i64*, i32* }

@NM_IRQ_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @netmap_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_notify(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %8 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %7, i32 0, i32 2
  %9 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  store %struct.netmap_adapter* %9, %struct.netmap_adapter** %5, align 8
  %10 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %11 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %13, i32 0, i32 1
  %15 = call i32 @nm_os_selwakeup(i32* %14)
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @nm_os_selwakeup(i32* %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32, i32* @NM_IRQ_COMPLETED, align 4
  ret i32 %33
}

declare dso_local i32 @nm_os_selwakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
