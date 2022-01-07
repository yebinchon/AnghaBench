; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_update_stats_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_update_stats_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { %struct.i40e_eth_stats }
%struct.i40e_eth_stats = type { i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_update_stats_counters(%struct.iavf_sc* %0, %struct.i40e_eth_stats* %1) #0 {
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.i40e_eth_stats*, align 8
  %5 = alloca %struct.ixl_vsi*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %3, align 8
  store %struct.i40e_eth_stats* %1, %struct.i40e_eth_stats** %4, align 8
  %7 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %7, i32 0, i32 0
  store %struct.ixl_vsi* %8, %struct.ixl_vsi** %5, align 8
  %9 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %13 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @IXL_SET_IPACKETS(%struct.ixl_vsi* %12, i64 %23)
  %25 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %26 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %34 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @IXL_SET_OPACKETS(%struct.ixl_vsi* %25, i64 %36)
  %38 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %39 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %40 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IXL_SET_IBYTES(%struct.ixl_vsi* %38, i32 %41)
  %43 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %44 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IXL_SET_OBYTES(%struct.ixl_vsi* %43, i32 %46)
  %48 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %49 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IXL_SET_IMCASTS(%struct.ixl_vsi* %48, i64 %51)
  %53 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %54 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %55 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @IXL_SET_OMCASTS(%struct.ixl_vsi* %53, i64 %56)
  %58 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %59 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %60 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @IXL_SET_OERRORS(%struct.ixl_vsi* %58, i32 %61)
  %63 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %64 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @IXL_SET_IQDROPS(%struct.ixl_vsi* %63, i32 %66)
  %68 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @IXL_SET_OQDROPS(%struct.ixl_vsi* %68, i32 %69)
  %71 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %72 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %73 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IXL_SET_NOPROTO(%struct.ixl_vsi* %71, i32 %74)
  %76 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %77 = call i32 @IXL_SET_COLLISIONS(%struct.ixl_vsi* %76, i32 0)
  %78 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %79 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %78, i32 0, i32 0
  %80 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %4, align 8
  %81 = bitcast %struct.i40e_eth_stats* %79 to i8*
  %82 = bitcast %struct.i40e_eth_stats* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 80, i1 false)
  ret void
}

declare dso_local i32 @IXL_SET_IPACKETS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OPACKETS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_IBYTES(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_OBYTES(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_IMCASTS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OMCASTS(%struct.ixl_vsi*, i64) #1

declare dso_local i32 @IXL_SET_OERRORS(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_IQDROPS(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_OQDROPS(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_NOPROTO(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @IXL_SET_COLLISIONS(%struct.ixl_vsi*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
