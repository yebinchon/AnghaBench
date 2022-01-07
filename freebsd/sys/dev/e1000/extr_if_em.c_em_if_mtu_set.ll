; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_mtu_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ioctl rcv'd: SIOCSIFMTU (Set Interface MTU)\00", align 1
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@igb_mac_min = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @em_if_mtu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_mtu_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_7__* @iflib_get_softc_ctx(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.adapter*, %struct.adapter** %7, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 139, label %19
    i32 138, label %19
    i32 133, label %19
    i32 135, label %19
    i32 132, label %19
    i32 130, label %19
    i32 129, label %19
    i32 131, label %19
    i32 137, label %19
    i32 136, label %19
    i32 141, label %19
    i32 128, label %20
    i32 140, label %21
    i32 134, label %21
  ]

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 9234, i32* %6, align 4
  br label %35

20:                                               ; preds = %2
  store i32 4096, i32* %6, align 4
  br label %35

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @ETHER_MAX_LEN, align 4
  store i32 %22, i32* %6, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %7, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @igb_mac_min, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 9234, i32* %6, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %31
  br label %35

35:                                               ; preds = %34, %21, %20, %19
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ETHER_HDR_LEN, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @ETHER_CRC_LEN, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ETHER_HDR_LEN, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @ETHER_CRC_LEN, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.adapter*, %struct.adapter** %7, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %43
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_7__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
