; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_promisc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.ifnet = type { i32 }

@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixgbe_if_promisc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_promisc_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ifnet* @iflib_get_ifp(i32 %11)
  store %struct.ifnet* %12, %struct.ifnet** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* @IXGBE_FCTRL, align 4
  %16 = call i32 @IXGBE_READ_REG(i32* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_ALLMULTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = call i32 @if_llmaddr_count(%struct.ifnet* %30)
  %32 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %33 = call i32 @min(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.adapter*, %struct.adapter** %5, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = load i32, i32* @IXGBE_FCTRL, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @IXGBE_WRITE_REG(i32* %45, i32 %46, i32 %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_PROMISC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %57 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = load i32, i32* @IXGBE_FCTRL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @IXGBE_WRITE_REG(i32* %62, i32 %63, i32 %64)
  br label %87

66:                                               ; preds = %43
  %67 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_ALLMULTI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.adapter*, %struct.adapter** %5, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = load i32, i32* @IXGBE_FCTRL, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @IXGBE_WRITE_REG(i32* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %66
  br label %87

87:                                               ; preds = %86, %55
  ret i32 0
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @IXGBE_READ_REG(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
