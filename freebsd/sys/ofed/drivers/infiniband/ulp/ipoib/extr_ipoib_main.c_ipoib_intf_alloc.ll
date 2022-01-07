; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, %struct.ipoib_dev_priv*, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_dl = type { i32, i32 }

@IFT_INFINIBAND = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@ipoib_unrhdr = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@IPOIB_HEADER_LEN = common dso_local global i32 0, align 4
@ipoib_init = common dso_local global i32 0, align 4
@ipoib_ioctl = common dso_local global i32 0, align 4
@ipoib_start = common dso_local global i32 0, align 4
@ipoib_output = common dso_local global i32 0, align 4
@ipoib_input = common dso_local global i32 0, align 4
@ipoib_resolvemulti = common dso_local global i32 0, align 4
@ipoib_sendq_size = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_dev_priv* @ipoib_intf_alloc(i8* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.ipoib_dev_priv* (...) @ipoib_priv_alloc()
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %4, align 8
  %8 = load i32, i32* @IFT_INFINIBAND, align 4
  %9 = call %struct.ifnet* @if_alloc(i32 %8)
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  store %struct.ifnet* %9, %struct.ifnet** %11, align 8
  store %struct.ifnet* %9, %struct.ifnet** %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %13 = icmp ne %struct.ifnet* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %16 = load i32, i32* @M_TEMP, align 4
  %17 = call i32 @free(%struct.ipoib_dev_priv* %15, i32 %16)
  store %struct.ipoib_dev_priv* null, %struct.ipoib_dev_priv** %2, align 8
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 1
  store %struct.ipoib_dev_priv* %19, %struct.ipoib_dev_priv** %21, align 8
  %22 = load i32, i32* @ipoib_unrhdr, align 4
  %23 = call i32 @alloc_unr(i32 %22)
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %32 = call i32 @if_free(%struct.ifnet* %31)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %34 = load i32, i32* @M_TEMP, align 4
  %35 = call i32 @free(%struct.ipoib_dev_priv* %33, i32 %34)
  store %struct.ipoib_dev_priv* null, %struct.ipoib_dev_priv** %2, align 8
  br label %114

36:                                               ; preds = %18
  %37 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @if_initname(%struct.ifnet* %37, i8* %38, i32 %41)
  %43 = load i32, i32* @IFF_BROADCAST, align 4
  %44 = load i32, i32* @IFF_MULTICAST, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @INFINIBAND_ALEN, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @IPOIB_HEADER_LEN, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %55 = call i32 @if_attach(%struct.ifnet* %54)
  %56 = load i32, i32* @ipoib_init, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 12
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @ipoib_ioctl, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ipoib_start, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @ipoib_output, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ipoib_input, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ipoib_resolvemulti, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = call i32 @IF_Gbps(i32 10)
  %75 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ipoib_sendq_size, align 4
  %83 = mul nsw i32 %82, 2
  %84 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %92, %struct.sockaddr_dl** %5, align 8
  %93 = load i32, i32* @IFT_INFINIBAND, align 4
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %95 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %100 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %102 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %103 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %102, i32 0, i32 1
  store %struct.ifnet* %101, %struct.ifnet** %103, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = load i32, i32* @LINK_STATE_DOWN, align 4
  %106 = call i32 @if_link_state_change(%struct.ifnet* %104, i32 %105)
  %107 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %108 = load i32, i32* @DLT_EN10MB, align 4
  %109 = load i32, i32* @ETHER_HDR_LEN, align 4
  %110 = call i32 @bpfattach(%struct.ifnet* %107, i32 %108, i32 %109)
  %111 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 1
  %113 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %112, align 8
  store %struct.ipoib_dev_priv* %113, %struct.ipoib_dev_priv** %2, align 8
  br label %114

114:                                              ; preds = %36, %30, %14
  %115 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  ret %struct.ipoib_dev_priv* %115
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv_alloc(...) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
