; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_vsi_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_vsi_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { %struct.i40e_eth_stats, %struct.ifnet*, %struct.ixl_pf* }
%struct.i40e_eth_stats = type { i32, i64, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32 }
%struct.ixl_pf = type { %struct.i40e_hw_port_stats }
%struct.i40e_hw_port_stats = type { %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_update_vsi_stats(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.i40e_eth_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_hw_port_stats*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %8, i32 0, i32 2
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %9, align 8
  store %struct.ixl_pf* %10, %struct.ixl_pf** %3, align 8
  %11 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %14, i32 0, i32 0
  store %struct.i40e_eth_stats* %15, %struct.i40e_eth_stats** %5, align 8
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 0
  store %struct.i40e_hw_port_stats* %17, %struct.i40e_hw_port_stats** %7, align 8
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %19 = call i32 @ixl_update_eth_stats(%struct.ixl_vsi* %18)
  %20 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %24 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %28 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %29 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %28, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %36 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @IXL_SET_IPACKETS(%struct.ixl_vsi* %27, i64 %38)
  %40 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %41 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %42 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @IXL_SET_OPACKETS(%struct.ixl_vsi* %40, i64 %51)
  %53 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %54 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %55 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IXL_SET_IBYTES(%struct.ixl_vsi* %53, i32 %56)
  %58 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %59 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %60 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @IXL_SET_OBYTES(%struct.ixl_vsi* %58, i32 %61)
  %63 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %64 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %65 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @IXL_SET_IMCASTS(%struct.ixl_vsi* %63, i64 %66)
  %68 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %69 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %70 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @IXL_SET_OMCASTS(%struct.ixl_vsi* %68, i64 %71)
  %73 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %74 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %75 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %78 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %82 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %86 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %90 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %94 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @IXL_SET_IERRORS(%struct.ixl_vsi* %73, i64 %96)
  %98 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %99 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %100 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IXL_SET_OERRORS(%struct.ixl_vsi* %98, i32 %101)
  %103 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %104 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %105 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %108 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %106, %110
  %112 = call i32 @IXL_SET_IQDROPS(%struct.ixl_vsi* %103, i64 %111)
  %113 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @IXL_SET_OQDROPS(%struct.ixl_vsi* %113, i64 %114)
  %116 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %117 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %118 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @IXL_SET_NOPROTO(%struct.ixl_vsi* %116, i32 %119)
  %121 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %122 = call i32 @IXL_SET_COLLISIONS(%struct.ixl_vsi* %121, i32 0)
  ret void
}

declare dso_local i32 @ixl_update_eth_stats(%struct.ixl_vsi*) #1

declare dso_local i32 @IXL_SET_IPACKETS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OPACKETS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_IBYTES(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_OBYTES(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_IMCASTS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OMCASTS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_IERRORS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OERRORS(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_IQDROPS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OQDROPS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_NOPROTO(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_COLLISIONS(%struct.ixl_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
