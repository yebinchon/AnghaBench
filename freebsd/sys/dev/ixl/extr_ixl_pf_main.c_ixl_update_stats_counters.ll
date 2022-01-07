; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_stats_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_update_stats_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, %struct.ixl_vf*, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vf = type { i32, i32 }
%struct.i40e_hw_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixl_vsi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { i32 }

@VF_FLAG_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_update_stats_counters(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_hw_port_stats*, align 8
  %8 = alloca %struct.i40e_hw_port_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 6
  store %struct.i40e_hw* %11, %struct.i40e_hw** %3, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 5
  store %struct.ixl_vsi* %13, %struct.ixl_vsi** %4, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 3
  store %struct.i40e_hw_port_stats* %19, %struct.i40e_hw_port_stats** %7, align 8
  %20 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %21 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %20, i32 0, i32 4
  store %struct.i40e_hw_port_stats* %21, %struct.i40e_hw_port_stats** %8, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @I40E_GLPRT_CRCERRS(i32 %25)
  %27 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %28 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %31 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %30, i32 0, i32 1
  %32 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %33 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %32, i32 0, i32 1
  %34 = call i32 @ixl_stat_update32(%struct.i40e_hw* %22, i32 %26, i32 %29, i64* %31, i64* %33)
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @I40E_GLPRT_ILLERRC(i32 %38)
  %40 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %41 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %44 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %43, i32 0, i32 2
  %45 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %46 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %45, i32 0, i32 2
  %47 = call i32 @ixl_stat_update32(%struct.i40e_hw* %35, i32 %39, i32 %42, i64* %44, i64* %46)
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @I40E_GLPRT_GORCH(i32 %51)
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @I40E_GLPRT_GORCL(i32 %55)
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %58 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %61 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %60, i32 0, i32 28
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 8
  %63 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %64 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %63, i32 0, i32 28
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 8
  %66 = call i32 @ixl_stat_update48(%struct.i40e_hw* %48, i32 %52, i32 %56, i32 %59, i32* %62, i32* %65)
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @I40E_GLPRT_GOTCH(i32 %70)
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %73 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @I40E_GLPRT_GOTCL(i32 %74)
  %76 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %77 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %80 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %79, i32 0, i32 28
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %83 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %82, i32 0, i32 28
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 7
  %85 = call i32 @ixl_stat_update48(%struct.i40e_hw* %67, i32 %71, i32 %75, i32 %78, i32* %81, i32* %84)
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @I40E_GLPRT_RDPC(i32 %89)
  %91 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %92 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %95 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %94, i32 0, i32 28
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %98 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %97, i32 0, i32 28
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @ixl_stat_update32(%struct.i40e_hw* %86, i32 %90, i32 %93, i64* %96, i64* %99)
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @I40E_GLPRT_UPRCH(i32 %104)
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %107 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @I40E_GLPRT_UPRCL(i32 %108)
  %110 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %111 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %114 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %113, i32 0, i32 28
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %117 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %116, i32 0, i32 28
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  %119 = call i32 @ixl_stat_update48(%struct.i40e_hw* %101, i32 %105, i32 %109, i32 %112, i32* %115, i32* %118)
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %121 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %122 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @I40E_GLPRT_UPTCH(i32 %123)
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %126 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @I40E_GLPRT_UPTCL(i32 %127)
  %129 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %130 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %133 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %132, i32 0, i32 28
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %136 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %135, i32 0, i32 28
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = call i32 @ixl_stat_update48(%struct.i40e_hw* %120, i32 %124, i32 %128, i32 %131, i32* %134, i32* %137)
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %141 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @I40E_GLPRT_MPRCH(i32 %142)
  %144 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %145 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @I40E_GLPRT_MPRCL(i32 %146)
  %148 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %149 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %152 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %151, i32 0, i32 28
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  %154 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %155 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %154, i32 0, i32 28
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = call i32 @ixl_stat_update48(%struct.i40e_hw* %139, i32 %143, i32 %147, i32 %150, i32* %153, i32* %156)
  %158 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %159 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %160 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @I40E_GLPRT_MPTCH(i32 %161)
  %163 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %164 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @I40E_GLPRT_MPTCL(i32 %165)
  %167 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %168 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %171 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %170, i32 0, i32 28
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %174 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %173, i32 0, i32 28
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = call i32 @ixl_stat_update48(%struct.i40e_hw* %158, i32 %162, i32 %166, i32 %169, i32* %172, i32* %175)
  %177 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %178 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %179 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @I40E_GLPRT_BPRCH(i32 %180)
  %182 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %183 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @I40E_GLPRT_BPRCL(i32 %184)
  %186 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %187 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %190 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %189, i32 0, i32 28
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %193 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %192, i32 0, i32 28
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = call i32 @ixl_stat_update48(%struct.i40e_hw* %177, i32 %181, i32 %185, i32 %188, i32* %191, i32* %194)
  %196 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %197 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %198 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @I40E_GLPRT_BPTCH(i32 %199)
  %201 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %202 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @I40E_GLPRT_BPTCL(i32 %203)
  %205 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %206 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %209 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %208, i32 0, i32 28
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %212 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %211, i32 0, i32 28
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = call i32 @ixl_stat_update48(%struct.i40e_hw* %196, i32 %200, i32 %204, i32 %207, i32* %210, i32* %213)
  %215 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %216 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %217 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @I40E_GLPRT_TDOLD(i32 %218)
  %220 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %221 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %224 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %223, i32 0, i32 3
  %225 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %226 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %225, i32 0, i32 3
  %227 = call i32 @ixl_stat_update32(%struct.i40e_hw* %215, i32 %219, i32 %222, i64* %224, i64* %226)
  %228 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %229 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %230 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @I40E_GLPRT_MLFC(i32 %231)
  %233 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %234 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %237 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %236, i32 0, i32 4
  %238 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %239 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %238, i32 0, i32 4
  %240 = call i32 @ixl_stat_update32(%struct.i40e_hw* %228, i32 %232, i32 %235, i64* %237, i64* %239)
  %241 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %242 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %243 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @I40E_GLPRT_MRFC(i32 %244)
  %246 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %247 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %250 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %249, i32 0, i32 5
  %251 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %252 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %251, i32 0, i32 5
  %253 = call i32 @ixl_stat_update32(%struct.i40e_hw* %241, i32 %245, i32 %248, i64* %250, i64* %252)
  %254 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %255 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %256 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @I40E_GLPRT_RLEC(i32 %257)
  %259 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %260 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %263 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %262, i32 0, i32 6
  %264 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %265 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %264, i32 0, i32 6
  %266 = call i32 @ixl_stat_update32(%struct.i40e_hw* %254, i32 %258, i32 %261, i64* %263, i64* %265)
  %267 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %268 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %269 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @I40E_GLPRT_LXONRXC(i32 %270)
  %272 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %273 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %276 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %275, i32 0, i32 7
  %277 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %278 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %277, i32 0, i32 7
  %279 = call i32 @ixl_stat_update32(%struct.i40e_hw* %267, i32 %271, i32 %274, i64* %276, i64* %278)
  %280 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %281 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %282 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @I40E_GLPRT_LXONTXC(i32 %283)
  %285 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %286 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %289 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %288, i32 0, i32 8
  %290 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %291 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %290, i32 0, i32 8
  %292 = call i32 @ixl_stat_update32(%struct.i40e_hw* %280, i32 %284, i32 %287, i64* %289, i64* %291)
  %293 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %294 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %295 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @I40E_GLPRT_LXOFFRXC(i32 %296)
  %298 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %299 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %302 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %301, i32 0, i32 0
  %303 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %304 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %303, i32 0, i32 0
  %305 = call i32 @ixl_stat_update32(%struct.i40e_hw* %293, i32 %297, i32 %300, i64* %302, i64* %304)
  %306 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %307 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %308 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @I40E_GLPRT_LXOFFTXC(i32 %309)
  %311 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %312 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %315 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %314, i32 0, i32 9
  %316 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %317 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %316, i32 0, i32 9
  %318 = call i32 @ixl_stat_update32(%struct.i40e_hw* %306, i32 %310, i32 %313, i64* %315, i64* %317)
  %319 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %320 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %6, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %1
  %326 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %327 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %326, i32 0, i32 0
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  store i32 1, i32* %329, align 4
  br label %330

330:                                              ; preds = %325, %1
  %331 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %332 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %333 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @I40E_GLPRT_PRC64H(i32 %334)
  %336 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %337 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @I40E_GLPRT_PRC64L(i32 %338)
  %340 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %341 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %344 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %343, i32 0, i32 27
  %345 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %346 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %345, i32 0, i32 27
  %347 = call i32 @ixl_stat_update48(%struct.i40e_hw* %331, i32 %335, i32 %339, i32 %342, i32* %344, i32* %346)
  %348 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %349 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %350 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @I40E_GLPRT_PRC127H(i32 %351)
  %353 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %354 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @I40E_GLPRT_PRC127L(i32 %355)
  %357 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %358 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %361 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %360, i32 0, i32 26
  %362 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %363 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %362, i32 0, i32 26
  %364 = call i32 @ixl_stat_update48(%struct.i40e_hw* %348, i32 %352, i32 %356, i32 %359, i32* %361, i32* %363)
  %365 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %366 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %367 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @I40E_GLPRT_PRC255H(i32 %368)
  %370 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %371 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @I40E_GLPRT_PRC255L(i32 %372)
  %374 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %375 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %378 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %377, i32 0, i32 25
  %379 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %380 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %379, i32 0, i32 25
  %381 = call i32 @ixl_stat_update48(%struct.i40e_hw* %365, i32 %369, i32 %373, i32 %376, i32* %378, i32* %380)
  %382 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %383 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %384 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @I40E_GLPRT_PRC511H(i32 %385)
  %387 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %388 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @I40E_GLPRT_PRC511L(i32 %389)
  %391 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %392 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %395 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %394, i32 0, i32 24
  %396 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %397 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %396, i32 0, i32 24
  %398 = call i32 @ixl_stat_update48(%struct.i40e_hw* %382, i32 %386, i32 %390, i32 %393, i32* %395, i32* %397)
  %399 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %400 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %401 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @I40E_GLPRT_PRC1023H(i32 %402)
  %404 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %405 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @I40E_GLPRT_PRC1023L(i32 %406)
  %408 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %409 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %412 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %411, i32 0, i32 23
  %413 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %414 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %413, i32 0, i32 23
  %415 = call i32 @ixl_stat_update48(%struct.i40e_hw* %399, i32 %403, i32 %407, i32 %410, i32* %412, i32* %414)
  %416 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %417 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %418 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @I40E_GLPRT_PRC1522H(i32 %419)
  %421 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %422 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @I40E_GLPRT_PRC1522L(i32 %423)
  %425 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %426 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %429 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %428, i32 0, i32 22
  %430 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %431 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %430, i32 0, i32 22
  %432 = call i32 @ixl_stat_update48(%struct.i40e_hw* %416, i32 %420, i32 %424, i32 %427, i32* %429, i32* %431)
  %433 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %434 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %435 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @I40E_GLPRT_PRC9522H(i32 %436)
  %438 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %439 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @I40E_GLPRT_PRC9522L(i32 %440)
  %442 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %443 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %446 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %445, i32 0, i32 21
  %447 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %448 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %447, i32 0, i32 21
  %449 = call i32 @ixl_stat_update48(%struct.i40e_hw* %433, i32 %437, i32 %441, i32 %444, i32* %446, i32* %448)
  %450 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %451 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %452 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @I40E_GLPRT_PTC64H(i32 %453)
  %455 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %456 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @I40E_GLPRT_PTC64L(i32 %457)
  %459 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %460 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %463 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %462, i32 0, i32 20
  %464 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %465 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %464, i32 0, i32 20
  %466 = call i32 @ixl_stat_update48(%struct.i40e_hw* %450, i32 %454, i32 %458, i32 %461, i32* %463, i32* %465)
  %467 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %468 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %469 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @I40E_GLPRT_PTC127H(i32 %470)
  %472 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %473 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @I40E_GLPRT_PTC127L(i32 %474)
  %476 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %477 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %480 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %479, i32 0, i32 19
  %481 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %482 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %481, i32 0, i32 19
  %483 = call i32 @ixl_stat_update48(%struct.i40e_hw* %467, i32 %471, i32 %475, i32 %478, i32* %480, i32* %482)
  %484 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %485 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %486 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @I40E_GLPRT_PTC255H(i32 %487)
  %489 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %490 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @I40E_GLPRT_PTC255L(i32 %491)
  %493 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %494 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %497 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %496, i32 0, i32 18
  %498 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %499 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %498, i32 0, i32 18
  %500 = call i32 @ixl_stat_update48(%struct.i40e_hw* %484, i32 %488, i32 %492, i32 %495, i32* %497, i32* %499)
  %501 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %502 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %503 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @I40E_GLPRT_PTC511H(i32 %504)
  %506 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %507 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @I40E_GLPRT_PTC511L(i32 %508)
  %510 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %511 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %514 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %513, i32 0, i32 17
  %515 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %516 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %515, i32 0, i32 17
  %517 = call i32 @ixl_stat_update48(%struct.i40e_hw* %501, i32 %505, i32 %509, i32 %512, i32* %514, i32* %516)
  %518 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %519 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %520 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @I40E_GLPRT_PTC1023H(i32 %521)
  %523 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %524 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = call i32 @I40E_GLPRT_PTC1023L(i32 %525)
  %527 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %528 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %531 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %530, i32 0, i32 16
  %532 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %533 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %532, i32 0, i32 16
  %534 = call i32 @ixl_stat_update48(%struct.i40e_hw* %518, i32 %522, i32 %526, i32 %529, i32* %531, i32* %533)
  %535 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %536 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %537 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @I40E_GLPRT_PTC1522H(i32 %538)
  %540 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %541 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @I40E_GLPRT_PTC1522L(i32 %542)
  %544 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %545 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %548 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %547, i32 0, i32 15
  %549 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %550 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %549, i32 0, i32 15
  %551 = call i32 @ixl_stat_update48(%struct.i40e_hw* %535, i32 %539, i32 %543, i32 %546, i32* %548, i32* %550)
  %552 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %553 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %554 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @I40E_GLPRT_PTC9522H(i32 %555)
  %557 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %558 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @I40E_GLPRT_PTC9522L(i32 %559)
  %561 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %562 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %565 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %564, i32 0, i32 14
  %566 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %567 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %566, i32 0, i32 14
  %568 = call i32 @ixl_stat_update48(%struct.i40e_hw* %552, i32 %556, i32 %560, i32 %563, i32* %565, i32* %567)
  %569 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %570 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %571 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @I40E_GLPRT_RUC(i32 %572)
  %574 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %575 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %578 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %577, i32 0, i32 10
  %579 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %580 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %579, i32 0, i32 10
  %581 = call i32 @ixl_stat_update32(%struct.i40e_hw* %569, i32 %573, i32 %576, i64* %578, i64* %580)
  %582 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %583 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %584 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @I40E_GLPRT_RFC(i32 %585)
  %587 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %588 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %591 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %590, i32 0, i32 11
  %592 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %593 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %592, i32 0, i32 11
  %594 = call i32 @ixl_stat_update32(%struct.i40e_hw* %582, i32 %586, i32 %589, i64* %591, i64* %593)
  %595 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %596 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %597 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = call i32 @I40E_GLPRT_ROC(i32 %598)
  %600 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %601 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %604 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %603, i32 0, i32 12
  %605 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %606 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %605, i32 0, i32 12
  %607 = call i32 @ixl_stat_update32(%struct.i40e_hw* %595, i32 %599, i32 %602, i64* %604, i64* %606)
  %608 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %609 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %610 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = call i32 @I40E_GLPRT_RJC(i32 %611)
  %613 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %614 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %8, align 8
  %617 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %616, i32 0, i32 13
  %618 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %7, align 8
  %619 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %618, i32 0, i32 13
  %620 = call i32 @ixl_stat_update32(%struct.i40e_hw* %608, i32 %612, i32 %615, i64* %617, i64* %619)
  %621 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %622 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %621, i32 0, i32 0
  store i32 1, i32* %622, align 8
  %623 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %624 = call i32 @ixl_update_vsi_stats(%struct.ixl_vsi* %623)
  store i32 0, i32* %9, align 4
  br label %625

625:                                              ; preds = %654, %330
  %626 = load i32, i32* %9, align 4
  %627 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %628 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = icmp slt i32 %626, %629
  br i1 %630, label %631, label %657

631:                                              ; preds = %625
  %632 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %633 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %632, i32 0, i32 2
  %634 = load %struct.ixl_vf*, %struct.ixl_vf** %633, align 8
  %635 = load i32, i32* %9, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %634, i64 %636
  store %struct.ixl_vf* %637, %struct.ixl_vf** %5, align 8
  %638 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %639 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* @VF_FLAG_ENABLED, align 4
  %642 = and i32 %640, %641
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %653

644:                                              ; preds = %631
  %645 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %646 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %645, i32 0, i32 2
  %647 = load %struct.ixl_vf*, %struct.ixl_vf** %646, align 8
  %648 = load i32, i32* %9, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %647, i64 %649
  %651 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %650, i32 0, i32 1
  %652 = call i32 @ixl_update_eth_stats(i32* %651)
  br label %653

653:                                              ; preds = %644, %631
  br label %654

654:                                              ; preds = %653
  %655 = load i32, i32* %9, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %9, align 4
  br label %625

657:                                              ; preds = %625
  ret void
}

declare dso_local i32 @ixl_stat_update32(%struct.i40e_hw*, i32, i32, i64*, i64*) #1

declare dso_local i32 @I40E_GLPRT_CRCERRS(i32) #1

declare dso_local i32 @I40E_GLPRT_ILLERRC(i32) #1

declare dso_local i32 @ixl_stat_update48(%struct.i40e_hw*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLPRT_GORCH(i32) #1

declare dso_local i32 @I40E_GLPRT_GORCL(i32) #1

declare dso_local i32 @I40E_GLPRT_GOTCH(i32) #1

declare dso_local i32 @I40E_GLPRT_GOTCL(i32) #1

declare dso_local i32 @I40E_GLPRT_RDPC(i32) #1

declare dso_local i32 @I40E_GLPRT_UPRCH(i32) #1

declare dso_local i32 @I40E_GLPRT_UPRCL(i32) #1

declare dso_local i32 @I40E_GLPRT_UPTCH(i32) #1

declare dso_local i32 @I40E_GLPRT_UPTCL(i32) #1

declare dso_local i32 @I40E_GLPRT_MPRCH(i32) #1

declare dso_local i32 @I40E_GLPRT_MPRCL(i32) #1

declare dso_local i32 @I40E_GLPRT_MPTCH(i32) #1

declare dso_local i32 @I40E_GLPRT_MPTCL(i32) #1

declare dso_local i32 @I40E_GLPRT_BPRCH(i32) #1

declare dso_local i32 @I40E_GLPRT_BPRCL(i32) #1

declare dso_local i32 @I40E_GLPRT_BPTCH(i32) #1

declare dso_local i32 @I40E_GLPRT_BPTCL(i32) #1

declare dso_local i32 @I40E_GLPRT_TDOLD(i32) #1

declare dso_local i32 @I40E_GLPRT_MLFC(i32) #1

declare dso_local i32 @I40E_GLPRT_MRFC(i32) #1

declare dso_local i32 @I40E_GLPRT_RLEC(i32) #1

declare dso_local i32 @I40E_GLPRT_LXONRXC(i32) #1

declare dso_local i32 @I40E_GLPRT_LXONTXC(i32) #1

declare dso_local i32 @I40E_GLPRT_LXOFFRXC(i32) #1

declare dso_local i32 @I40E_GLPRT_LXOFFTXC(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC64H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC64L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC127H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC127L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC255H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC255L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC511H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC511L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC1023H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC1023L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC1522H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC1522L(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC9522H(i32) #1

declare dso_local i32 @I40E_GLPRT_PRC9522L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC64H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC64L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC127H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC127L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC255H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC255L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC511H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC511L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC1023H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC1023L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC1522H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC1522L(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC9522H(i32) #1

declare dso_local i32 @I40E_GLPRT_PTC9522L(i32) #1

declare dso_local i32 @I40E_GLPRT_RUC(i32) #1

declare dso_local i32 @I40E_GLPRT_RFC(i32) #1

declare dso_local i32 @I40E_GLPRT_ROC(i32) #1

declare dso_local i32 @I40E_GLPRT_RJC(i32) #1

declare dso_local i32 @ixl_update_vsi_stats(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_update_eth_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
