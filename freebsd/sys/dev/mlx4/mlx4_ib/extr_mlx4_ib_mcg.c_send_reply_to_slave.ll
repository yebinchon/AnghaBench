; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_send_reply_to_slave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_send_reply_to_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_6__*, %struct.ib_sa_mcmember_data }
%struct.TYPE_6__ = type { i32 }
%struct.ib_sa_mcmember_data = type { i32, i32 }
%struct.ib_sa_mad = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i32, i32 }
%struct.ib_mad = type { i32 }

@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET_RESP = common dso_local global i32 0, align 4
@IB_SA_ATTR_MC_MEMBER_REC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mcast_group*, %struct.ib_sa_mad*, i32)* @send_reply_to_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_reply_to_slave(i32 %0, %struct.mcast_group* %1, %struct.ib_sa_mad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcast_group*, align 8
  %7 = alloca %struct.ib_sa_mad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_sa_mad, align 8
  %10 = alloca %struct.ib_sa_mcmember_data*, align 8
  %11 = alloca %struct.ib_sa_mcmember_data*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mcast_group* %1, %struct.mcast_group** %6, align 8
  store %struct.ib_sa_mad* %2, %struct.ib_sa_mad** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 2
  %14 = bitcast i32* %13 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %14, %struct.ib_sa_mcmember_data** %10, align 8
  %15 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %7, align 8
  %16 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %15, i32 0, i32 2
  %17 = bitcast i32* %16 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %17, %struct.ib_sa_mcmember_data** %11, align 8
  %18 = call i32 @memset(%struct.ib_sa_mad* %9, i32 0, i32 88)
  %19 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @IB_MGMT_CLASS_SUBN_ADM, align 4
  %22 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* @IB_MGMT_METHOD_GET_RESP, align 4
  %27 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @cpu_to_be16(i32 %29)
  %31 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = call i8* @cpu_to_be16(i32 0)
  %34 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %7, align 8
  %37 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = bitcast i32* %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @IB_SA_ATTR_MC_MEMBER_REC, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = call i32 @cpu_to_be32(i32 0)
  %50 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %7, align 8
  %53 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = call i8* @cpu_to_be16(i32 7)
  %59 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %9, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %10, align 8
  %64 = load %struct.mcast_group*, %struct.mcast_group** %6, align 8
  %65 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %64, i32 0, i32 2
  %66 = bitcast %struct.ib_sa_mcmember_data* %63 to i8*
  %67 = bitcast %struct.ib_sa_mcmember_data* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %10, align 8
  %69 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 240
  store i32 %71, i32* %69, align 4
  %72 = load %struct.mcast_group*, %struct.mcast_group** %6, align 8
  %73 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %10, align 8
  %82 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %10, align 8
  %86 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %85, i32 0, i32 1
  %87 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %88 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %87, i32 0, i32 1
  %89 = call i32 @memcpy(i32* %86, i32* %88, i32 4)
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.mcast_group*, %struct.mcast_group** %6, align 8
  %92 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %struct.ib_sa_mad* %9 to %struct.ib_mad*
  %95 = call i32 @send_mad_to_slave(i32 %90, i32 %93, %struct.ib_mad* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.ib_sa_mad*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_mad_to_slave(i32, i32, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
