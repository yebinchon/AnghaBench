; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ngdwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ngdwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@DBG = common dso_local global i32 0, align 4
@IP_MAXPACKET = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ngdwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngdwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @DBG, align 4
  %17 = load %struct.uio*, %struct.uio** %6, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IP_MAXPACKET, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %27
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_PKTHDR, align 4
  %39 = call %struct.mbuf* @m_uiotombuf(%struct.uio* %36, i32 %37, i32 0, i32 0, i32 %38)
  store %struct.mbuf* %39, %struct.mbuf** %9, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = call i32 @NG_SEND_DATA_ONLY(i32 %44, i32 %47, %struct.mbuf* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41, %33, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.mbuf* @m_uiotombuf(%struct.uio*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
