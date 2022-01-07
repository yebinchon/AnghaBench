; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_polling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bdg_kthread = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.netmap_bwrap_adapter* }
%struct.netmap_bwrap_adapter = type { i32 }
%struct.netmap_kring = type { i32 (%struct.netmap_kring*, i32)* }

@NR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @netmap_bwrap_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_bwrap_polling(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nm_bdg_kthread*, align 8
  %4 = alloca %struct.netmap_bwrap_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netmap_kring**, align 8
  %9 = alloca %struct.netmap_kring*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.nm_bdg_kthread*
  store %struct.nm_bdg_kthread* %11, %struct.nm_bdg_kthread** %3, align 8
  %12 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %3, align 8
  %13 = icmp ne %struct.nm_bdg_kthread* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %3, align 8
  %17 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %3, align 8
  %20 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %3, align 8
  %23 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %25, align 8
  store %struct.netmap_bwrap_adapter* %26, %struct.netmap_bwrap_adapter** %4, align 8
  %27 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NR_RX, align 4
  %31 = call %struct.netmap_kring** @NMR(i32 %29, i32 %30)
  store %struct.netmap_kring** %31, %struct.netmap_kring*** %8, align 8
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %47, %15
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.netmap_kring**, %struct.netmap_kring*** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %38, i64 %39
  %41 = load %struct.netmap_kring*, %struct.netmap_kring** %40, align 8
  store %struct.netmap_kring* %41, %struct.netmap_kring** %9, align 8
  %42 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %43 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %42, i32 0, i32 0
  %44 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %43, align 8
  %45 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %46 = call i32 %44(%struct.netmap_kring* %45, i32 0)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %33

50:                                               ; preds = %14, %33
  ret void
}

declare dso_local %struct.netmap_kring** @NMR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
