; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_mtu_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"ioctl: SIOCSIFMTU (Set Interface MTU)\00", align 1
@IXL_MAX_FRAME = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @iavf_if_mtu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_mtu_set(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.iavf_sc*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.iavf_sc* @iflib_get_softc(i32 %8)
  store %struct.iavf_sc* %9, %struct.iavf_sc** %6, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %6, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 0
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %7, align 8
  %12 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @IXL_MAX_FRAME, align 8
  %15 = load i64, i64* @ETHER_HDR_LEN, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i64, i64* @ETHER_CRC_LEN, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %20 = sub nsw i64 %18, %19
  %21 = icmp sgt i64 %13, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ETHER_HDR_LEN, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @ETHER_CRC_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %33 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
