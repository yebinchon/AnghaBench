; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_discioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_discioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.ifreq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @discioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.ifreq*
  store %struct.ifreq* %10, %struct.ifreq** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %37 [
    i32 129, label %12
    i32 131, label %18
    i32 130, label %18
    i32 128, label %31
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %39

18:                                               ; preds = %3, %3
  %19 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %20 = icmp eq %struct.ifreq* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %22, i32* %8, align 4
  br label %39

23:                                               ; preds = %18
  %24 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %28 [
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %31, %30, %21, %12
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
