; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_multi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_multi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_mc_addr* }
%struct.ixgbe_mc_addr = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ixgbe_if_multi_set: begin\00", align 1
@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i32 0, align 4
@ixgbe_mc_filter_apply = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ixgbe_mc_array_itr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_if_multi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_if_multi_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_mc_addr*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.ifnet* @iflib_get_ifp(i32 %11)
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %15, align 8
  store %struct.ixgbe_mc_addr* %16, %struct.ixgbe_mc_addr** %4, align 8
  %17 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %4, align 8
  %18 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @bzero(%struct.ixgbe_mc_addr* %17, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.ifnet* @iflib_get_ifp(i32 %23)
  %25 = load i32, i32* @ixgbe_mc_filter_apply, align 4
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = call i32 @if_foreach_llmaddr(%struct.ifnet* %24, i32 %25, %struct.adapter* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* @IXGBE_FCTRL, align 4
  %31 = call i32 @IXGBE_READ_REG(i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %33 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %45 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %76

49:                                               ; preds = %1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_ALLMULTI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53, %49
  %61 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %75

68:                                               ; preds = %53
  %69 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %70 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %68, %60
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 0
  %79 = load i32, i32* @IXGBE_FCTRL, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @IXGBE_WRITE_REG(i32* %78, i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.ixgbe_mc_addr*, %struct.ixgbe_mc_addr** %4, align 8
  %87 = bitcast %struct.ixgbe_mc_addr* %86 to i32*
  store i32* %87, i32** %6, align 8
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ixgbe_mc_array_itr, align 4
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @ixgbe_update_mc_addr_list(i32* %89, i32* %90, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %76
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

declare dso_local i32 @bzero(%struct.ixgbe_mc_addr*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.adapter*) #1

declare dso_local i32 @IXGBE_READ_REG(i32*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_update_mc_addr_list(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
