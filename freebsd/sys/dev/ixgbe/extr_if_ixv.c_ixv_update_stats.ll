; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { %struct.ixgbevf_hw_stats }
%struct.ixgbevf_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFGPRC = common dso_local global i32 0, align 4
@IXGBE_VFGPTC = common dso_local global i32 0, align 4
@IXGBE_VFGORC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGORC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFMPRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixv_update_stats(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbevf_hw_stats*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ixgbevf_hw_stats* %9, %struct.ixgbevf_hw_stats** %4, align 8
  %10 = load i32, i32* @IXGBE_VFGPRC, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @UPDATE_STAT_32(i32 %10, i32 %15, i32 %20)
  %22 = load i32, i32* @IXGBE_VFGPTC, align 4
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UPDATE_STAT_32(i32 %22, i32 %27, i32 %32)
  %34 = load i32, i32* @IXGBE_VFGORC_LSB, align 4
  %35 = load i32, i32* @IXGBE_VFGORC_MSB, align 4
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UPDATE_STAT_36(i32 %34, i32 %35, i32 %40, i32 %45)
  %47 = load i32, i32* @IXGBE_VFGOTC_LSB, align 4
  %48 = load i32, i32* @IXGBE_VFGOTC_MSB, align 4
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.adapter*, %struct.adapter** %2, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @UPDATE_STAT_36(i32 %47, i32 %48, i32 %53, i32 %58)
  %60 = load i32, i32* @IXGBE_VFMPRC, align 4
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @UPDATE_STAT_32(i32 %60, i32 %65, i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %4, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @IXGBE_SET_IPACKETS(%struct.adapter* %72, i32 %75)
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @IXGBE_SET_OPACKETS(%struct.adapter* %77, i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IXGBE_SET_IBYTES(%struct.adapter* %82, i32 %85)
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %4, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IXGBE_SET_OBYTES(%struct.adapter* %87, i32 %90)
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = load %struct.ixgbevf_hw_stats*, %struct.ixgbevf_hw_stats** %4, align 8
  %94 = getelementptr inbounds %struct.ixgbevf_hw_stats, %struct.ixgbevf_hw_stats* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IXGBE_SET_IMCASTS(%struct.adapter* %92, i32 %95)
  ret void
}

declare dso_local i32 @UPDATE_STAT_32(i32, i32, i32) #1

declare dso_local i32 @UPDATE_STAT_36(i32, i32, i32, i32) #1

declare dso_local i32 @IXGBE_SET_IPACKETS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_OPACKETS(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IBYTES(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_OBYTES(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_SET_IMCASTS(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
