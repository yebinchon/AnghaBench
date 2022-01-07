; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_copy_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_copy_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.mbx_set_common_iface_multicast = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@OCE_MAX_MC_FILTER_SIZE = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @oce_copy_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_copy_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbx_set_common_iface_multicast*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mbx_set_common_iface_multicast*
  store %struct.mbx_set_common_iface_multicast* %10, %struct.mbx_set_common_iface_multicast** %8, align 8
  %11 = load %struct.mbx_set_common_iface_multicast*, %struct.mbx_set_common_iface_multicast** %8, align 8
  %12 = getelementptr inbounds %struct.mbx_set_common_iface_multicast, %struct.mbx_set_common_iface_multicast* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCE_MAX_MC_FILTER_SIZE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %21 = call i32 @LLADDR(%struct.sockaddr_dl* %20)
  %22 = load %struct.mbx_set_common_iface_multicast*, %struct.mbx_set_common_iface_multicast** %8, align 8
  %23 = getelementptr inbounds %struct.mbx_set_common_iface_multicast, %struct.mbx_set_common_iface_multicast* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.mbx_set_common_iface_multicast*, %struct.mbx_set_common_iface_multicast** %8, align 8
  %28 = getelementptr inbounds %struct.mbx_set_common_iface_multicast, %struct.mbx_set_common_iface_multicast* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i32, i32* %26, i64 %31
  %34 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %35 = call i32 @bcopy(i32 %21, i32* %33, i32 %34)
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %19, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
