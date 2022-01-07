; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_get_new_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_get_new_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@LIO_IFFLAG_UNICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@LIO_IFFLAG_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@LIO_IFFLAG_ALLMULTI = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@LIO_IFFLAG_MULTICAST = common dso_local global i32 0, align 4
@LIO_MAX_MULTICAST_ADDR = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@LIO_IFFLAG_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_get_new_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_get_new_flags(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load i32, i32* @LIO_IFFLAG_UNICAST, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = call i32 @if_getflags(%struct.ifnet* %5)
  %7 = load i32, i32* @IFF_PROMISC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @LIO_IFFLAG_PROMISC, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = call i32 @if_getflags(%struct.ifnet* %15)
  %17 = load i32, i32* @IFF_ALLMULTI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @LIO_IFFLAG_ALLMULTI, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = call i32 @if_getflags(%struct.ifnet* %25)
  %27 = load i32, i32* @IFF_MULTICAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i32, i32* @LIO_IFFLAG_MULTICAST, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %35 = call i64 @if_getamcount(%struct.ifnet* %34)
  %36 = load i64, i64* @LIO_MAX_MULTICAST_ADDR, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @LIO_IFFLAG_ALLMULTI, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %45 = call i32 @if_getflags(%struct.ifnet* %44)
  %46 = load i32, i32* @IFF_BROADCAST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @LIO_IFFLAG_BROADCAST, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

declare dso_local i64 @if_getamcount(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
