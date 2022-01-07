; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_multi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_multi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"em_set_multi: begin\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i32 0, align 4
@e1000_82542 = common dso_local global i64 0, align 8
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@E1000_RCTL = common dso_local global i32 0, align 4
@CMD_MEM_WRT_INVALIDATE = common dso_local global i32 0, align 4
@E1000_RCTL_RST = common dso_local global i32 0, align 4
@em_copy_maddr = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_if_multi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_multi_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.ifnet* @iflib_get_ifp(i32 %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @bzero(i32* %16, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e1000_82542, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %1
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @E1000_REVISION_2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load i32, i32* @E1000_RCTL, align 4
  %43 = call i32 @E1000_READ_REG(%struct.TYPE_10__* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CMD_MEM_WRT_INVALIDATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = call i32 @e1000_pci_clear_mwi(%struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %52, %39
  %57 = load i32, i32* @E1000_RCTL_RST, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = load i32, i32* @E1000_RCTL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @E1000_WRITE_REG(%struct.TYPE_10__* %61, i32 %62, i32 %63)
  %65 = call i32 @msec_delay(i32 5)
  br label %66

66:                                               ; preds = %56, %32, %1
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = load i32, i32* @em_copy_maddr, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @if_foreach_llmaddr(%struct.ifnet* %67, i32 %68, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 0
  %77 = load i32, i32* @E1000_RCTL, align 4
  %78 = call i32 @E1000_READ_REG(%struct.TYPE_10__* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @E1000_RCTL_MPE, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.adapter*, %struct.adapter** %3, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = load i32, i32* @E1000_RCTL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @E1000_WRITE_REG(%struct.TYPE_10__* %83, i32 %84, i32 %85)
  br label %93

87:                                               ; preds = %66
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @e1000_update_mc_addr_list(%struct.TYPE_10__* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %74
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_82542, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %136

101:                                              ; preds = %93
  %102 = load %struct.adapter*, %struct.adapter** %3, align 8
  %103 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @E1000_REVISION_2, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = load i32, i32* @E1000_RCTL, align 4
  %112 = call i32 @E1000_READ_REG(%struct.TYPE_10__* %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @E1000_RCTL_RST, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = load i32, i32* @E1000_RCTL, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @E1000_WRITE_REG(%struct.TYPE_10__* %118, i32 %119, i32 %120)
  %122 = call i32 @msec_delay(i32 5)
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CMD_MEM_WRT_INVALIDATE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %108
  %132 = load %struct.adapter*, %struct.adapter** %3, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 0
  %134 = call i32 @e1000_pci_set_mwi(%struct.TYPE_10__* %133)
  br label %135

135:                                              ; preds = %131, %108
  br label %136

136:                                              ; preds = %135, %101, %93
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.TYPE_10__*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @e1000_update_mc_addr_list(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
