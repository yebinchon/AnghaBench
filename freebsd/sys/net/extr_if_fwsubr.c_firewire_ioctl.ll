; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_fwsubr.c_firewire_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_fwsubr.c_firewire_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 (i32)*, i32 }
%struct.ifaddr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @firewire_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.ifaddr*
  store %struct.ifaddr* %11, %struct.ifaddr** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %59 [
    i32 129, label %15
    i32 130, label %35
    i32 128, label %45
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %22 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %26 [
  ]

26:                                               ; preds = %15
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %26
  br label %61

35:                                               ; preds = %3
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = call %struct.TYPE_6__* @IFP2FWC(%struct.ifnet* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @bcopy(i32* %38, i32* %43, i32 4)
  br label %61

45:                                               ; preds = %3
  %46 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1500
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %9, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %54 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %50
  br label %61

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %58, %35, %34
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @IFP2FWC(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
