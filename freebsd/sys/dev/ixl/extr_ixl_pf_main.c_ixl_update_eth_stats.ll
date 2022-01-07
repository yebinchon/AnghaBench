; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_eth_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_eth_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.i40e_eth_stats, %struct.i40e_eth_stats, %struct.TYPE_2__, i64 }
%struct.i40e_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_pf = type { %struct.i40e_hw_port_stats, %struct.i40e_hw }
%struct.i40e_hw_port_stats = type { i32 }
%struct.i40e_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_update_eth_stats(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_eth_stats*, align 8
  %6 = alloca %struct.i40e_eth_stats*, align 8
  %7 = alloca %struct.i40e_hw_port_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ixl_pf*
  store %struct.ixl_pf* %12, %struct.ixl_pf** %3, align 8
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 1
  store %struct.i40e_hw* %14, %struct.i40e_hw** %4, align 8
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 2
  store %struct.i40e_eth_stats* %20, %struct.i40e_eth_stats** %5, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 1
  store %struct.i40e_eth_stats* %22, %struct.i40e_eth_stats** %6, align 8
  %23 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %24 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %23, i32 0, i32 0
  store %struct.i40e_hw_port_stats* %24, %struct.i40e_hw_port_stats** %7, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @I40E_GLV_TEPC(i32 %26)
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %31, i32 0, i32 9
  %33 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %33, i32 0, i32 9
  %35 = call i32 @ixl_stat_update32(%struct.i40e_hw* %25, i32 %27, i32 %30, i32* %32, i32* %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @I40E_GLV_RDPC(i32 %37)
  %39 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %40 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %43 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %42, i32 0, i32 8
  %44 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %44, i32 0, i32 8
  %46 = call i32 @ixl_stat_update32(%struct.i40e_hw* %36, i32 %38, i32 %41, i32* %43, i32* %45)
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @I40E_GLV_GORCH(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @I40E_GLV_GORCL(i32 %50)
  %52 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %53 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %56 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %55, i32 0, i32 7
  %57 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %58 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %57, i32 0, i32 7
  %59 = call i32 @ixl_stat_update48(%struct.i40e_hw* %47, i32 %49, i32 %51, i32 %54, i32* %56, i32* %58)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @I40E_GLV_UPRCH(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @I40E_GLV_UPRCL(i32 %63)
  %65 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %66 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %69 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %68, i32 0, i32 6
  %70 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %70, i32 0, i32 6
  %72 = call i32 @ixl_stat_update48(%struct.i40e_hw* %60, i32 %62, i32 %64, i32 %67, i32* %69, i32* %71)
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @I40E_GLV_MPRCH(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @I40E_GLV_MPRCL(i32 %76)
  %78 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %79 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %82 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %81, i32 0, i32 5
  %83 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %84 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %83, i32 0, i32 5
  %85 = call i32 @ixl_stat_update48(%struct.i40e_hw* %73, i32 %75, i32 %77, i32 %80, i32* %82, i32* %84)
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @I40E_GLV_BPRCH(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @I40E_GLV_BPRCL(i32 %89)
  %91 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %92 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %95 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %94, i32 0, i32 4
  %96 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %97 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %96, i32 0, i32 4
  %98 = call i32 @ixl_stat_update48(%struct.i40e_hw* %86, i32 %88, i32 %90, i32 %93, i32* %95, i32* %97)
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @I40E_GLV_GOTCH(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @I40E_GLV_GOTCL(i32 %102)
  %104 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %105 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %108 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %107, i32 0, i32 3
  %109 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %110 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %109, i32 0, i32 3
  %111 = call i32 @ixl_stat_update48(%struct.i40e_hw* %99, i32 %101, i32 %103, i32 %106, i32* %108, i32* %110)
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @I40E_GLV_UPTCH(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @I40E_GLV_UPTCL(i32 %115)
  %117 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %118 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %121 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %120, i32 0, i32 2
  %122 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %123 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %122, i32 0, i32 2
  %124 = call i32 @ixl_stat_update48(%struct.i40e_hw* %112, i32 %114, i32 %116, i32 %119, i32* %121, i32* %123)
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @I40E_GLV_MPTCH(i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @I40E_GLV_MPTCL(i32 %128)
  %130 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %131 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %134 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %133, i32 0, i32 1
  %135 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %136 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %135, i32 0, i32 1
  %137 = call i32 @ixl_stat_update48(%struct.i40e_hw* %125, i32 %127, i32 %129, i32 %132, i32* %134, i32* %136)
  %138 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @I40E_GLV_BPTCH(i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @I40E_GLV_BPTCL(i32 %141)
  %143 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %144 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %147 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %146, i32 0, i32 0
  %148 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %149 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %148, i32 0, i32 0
  %150 = call i32 @ixl_stat_update48(%struct.i40e_hw* %138, i32 %140, i32 %142, i32 %145, i32* %147, i32* %149)
  %151 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %152 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  ret void
}

declare dso_local i32 @ixl_stat_update32(%struct.i40e_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLV_TEPC(i32) #1

declare dso_local i32 @I40E_GLV_RDPC(i32) #1

declare dso_local i32 @ixl_stat_update48(%struct.i40e_hw*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLV_GORCH(i32) #1

declare dso_local i32 @I40E_GLV_GORCL(i32) #1

declare dso_local i32 @I40E_GLV_UPRCH(i32) #1

declare dso_local i32 @I40E_GLV_UPRCL(i32) #1

declare dso_local i32 @I40E_GLV_MPRCH(i32) #1

declare dso_local i32 @I40E_GLV_MPRCL(i32) #1

declare dso_local i32 @I40E_GLV_BPRCH(i32) #1

declare dso_local i32 @I40E_GLV_BPRCL(i32) #1

declare dso_local i32 @I40E_GLV_GOTCH(i32) #1

declare dso_local i32 @I40E_GLV_GOTCL(i32) #1

declare dso_local i32 @I40E_GLV_UPTCH(i32) #1

declare dso_local i32 @I40E_GLV_UPTCL(i32) #1

declare dso_local i32 @I40E_GLV_MPTCH(i32) #1

declare dso_local i32 @I40E_GLV_MPTCL(i32) #1

declare dso_local i32 @I40E_GLV_BPTCH(i32) #1

declare dso_local i32 @I40E_GLV_BPTCL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
