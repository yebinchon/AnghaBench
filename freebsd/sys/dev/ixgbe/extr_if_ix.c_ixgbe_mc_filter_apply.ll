; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_mc_filter_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_mc_filter_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.adapter = type { i32, %struct.ixgbe_mc_addr* }
%struct.ixgbe_mc_addr = type { i32, i32 }

@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i64 0, align 8
@IXGBE_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.sockaddr_dl*, i64)* @ixgbe_mc_filter_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_mc_filter_apply(i8* %0, %struct.sockaddr_dl* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.ixgbe_mc_addr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %8, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %13, align 8
  store %struct.ixgbe_mc_addr* %14, %struct.ixgbe_mc_addr** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @MAX_NUM_MULTICAST_ADDRESSES, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %21 = call i32 @LLADDR(%struct.sockaddr_dl* %20)
  %22 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mc_addr, %struct.ixgbe_mc_addr* %22, i64 %23
  %25 = getelementptr inbounds %struct.ixgbe_mc_addr, %struct.ixgbe_mc_addr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IXGBE_ETH_LENGTH_OF_ADDRESS, align 4
  %28 = call i32 @bcopy(i32 %21, i32 %26, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %8, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mc_addr, %struct.ixgbe_mc_addr* %32, i64 %33
  %35 = getelementptr inbounds %struct.ixgbe_mc_addr, %struct.ixgbe_mc_addr* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  store i64 1, i64* %4, align 8
  br label %36

36:                                               ; preds = %19, %18
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
