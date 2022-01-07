; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i64 }
%struct.ipoib_path = type { i64, i32, i32*, %struct.ib_sa_path_rec }
%struct.ib_sa_path_rec = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IB_SA_PATH_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_GT = common dso_local global i32 0, align 4
@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Start path record lookup for %16D MTU > %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ipoib_sa_client = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_NUMB_PATH = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@path_rec_completion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ib_sa_path_rec_get failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, %struct.ipoib_path*)* @path_rec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_rec_start(%struct.ipoib_dev_priv* %0, %struct.ipoib_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.ipoib_path*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_sa_path_rec, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %5, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 2
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %6, align 8
  %12 = load i32, i32* @IB_SA_PATH_REC_MTU_SELECTOR, align 4
  %13 = load i32, i32* @IB_SA_PATH_REC_MTU, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %15, i32 0, i32 3
  %17 = bitcast %struct.ib_sa_path_rec* %8 to i8*
  %18 = bitcast %struct.ib_sa_path_rec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %18, i64 12, i1 false)
  %19 = load i32, i32* @IB_SA_GT, align 4
  %20 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @roundup_pow_of_two(i64 %25)
  switch i32 %26, label %39 [
    i32 512, label %27
    i32 1024, label %30
    i32 2048, label %33
    i32 4096, label %36
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @IB_MTU_256, align 4
  %29 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* @IB_MTU_512, align 4
  %32 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* @IB_MTU_1024, align 4
  %35 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @IB_MTU_2048, align 4
  %38 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %40 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 2
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36, %33, %30, %27
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ib_mtu_enum_to_int(i32 %51)
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %58 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %57, i32 0, i32 1
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @IB_SA_PATH_REC_NUMB_PATH, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = load i32, i32* @path_rec_completion, align 4
  %79 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %80 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %81 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %80, i32 0, i32 2
  %82 = call i64 @ib_sa_path_rec_get(i32* @ipoib_sa_client, i32 %62, i32 %65, %struct.ib_sa_path_rec* %8, i32 %76, i32 1000, i32 %77, i32 %78, %struct.ipoib_path* %79, i32** %81)
  %83 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %84 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %86 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %54
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %91 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %92 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %96 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %98 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %97, i32 0, i32 1
  %99 = call i32 @complete(i32* %98)
  %100 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %101 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @roundup_pow_of_two(i64) #2

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, i8*, i32) #2

declare dso_local i32 @ib_mtu_enum_to_int(i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i64 @ib_sa_path_rec_get(i32*, i32, i32, %struct.ib_sa_path_rec*, i32, i32, i32, i32, %struct.ipoib_path*, i32**) #2

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i64) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
