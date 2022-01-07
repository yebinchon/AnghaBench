; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_alloc_table_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_alloc_table_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_config = type { i32, i32, i32, i32, %struct.table_algo*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ip_fw_chain.0 = type { i32 }
%struct.tid_info = type { i32, i32, i32* }
%struct.table_algo = type { i32 (%struct.ip_fw_chain*, i32*, i32*, i8*, i32)*, i32 }
%struct.ip_fw_chain = type opaque
%struct.TYPE_5__ = type { i8*, i64 }

@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@V_fw_tables_sets = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_config* (%struct.ip_fw_chain.0*, %struct.tid_info*, %struct.table_algo*, i8*, i32)* @alloc_table_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_config* @alloc_table_config(%struct.ip_fw_chain.0* %0, %struct.tid_info* %1, %struct.table_algo* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.table_config*, align 8
  %7 = alloca %struct.ip_fw_chain.0*, align 8
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %struct.table_algo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [16 x i8], align 16
  %14 = alloca %struct.table_config*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  store %struct.ip_fw_chain.0* %0, %struct.ip_fw_chain.0** %7, align 8
  store %struct.tid_info* %1, %struct.tid_info** %8, align 8
  store %struct.table_algo* %2, %struct.table_algo** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %5
  %23 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %24 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %33 = call %struct.TYPE_5__* @ipfw_find_name_tlv_type(i32* %25, i32 %28, i32 %31, i32 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %16, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store %struct.table_config* null, %struct.table_config** %6, align 8
  br label %112

37:                                               ; preds = %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %12, align 8
  %41 = load i64, i64* @V_fw_tables_sets, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i64 [ 0, %43 ], [ %47, %44 ]
  store i64 %49, i64* %17, align 8
  br label %57

50:                                               ; preds = %5
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %52 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snprintf(i8* %51, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  store i8* %56, i8** %12, align 8
  store i64 0, i64* %17, align 8
  br label %57

57:                                               ; preds = %50, %48
  %58 = load i32, i32* @M_IPFW, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.table_config* @malloc(i32 48, i32 %58, i32 %61)
  store %struct.table_config* %62, %struct.table_config** %14, align 8
  %63 = load %struct.table_config*, %struct.table_config** %14, align 8
  %64 = getelementptr inbounds %struct.table_config, %struct.table_config* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.table_config*, %struct.table_config** %14, align 8
  %67 = getelementptr inbounds %struct.table_config, %struct.table_config* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %70 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.table_config*, %struct.table_config** %14, align 8
  %73 = getelementptr inbounds %struct.table_config, %struct.table_config* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load %struct.table_config*, %struct.table_config** %14, align 8
  %77 = getelementptr inbounds %struct.table_config, %struct.table_config* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.table_config*, %struct.table_config** %14, align 8
  %81 = getelementptr inbounds %struct.table_config, %struct.table_config* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %83 = load %struct.table_config*, %struct.table_config** %14, align 8
  %84 = getelementptr inbounds %struct.table_config, %struct.table_config* %83, i32 0, i32 4
  store %struct.table_algo* %82, %struct.table_algo** %84, align 8
  %85 = load %struct.table_config*, %struct.table_config** %14, align 8
  %86 = getelementptr inbounds %struct.table_config, %struct.table_config* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @strlcpy(i32 %87, i8* %88, i32 4)
  %90 = load %struct.table_config*, %struct.table_config** %14, align 8
  %91 = getelementptr inbounds %struct.table_config, %struct.table_config* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %93 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %92, i32 0, i32 0
  %94 = load i32 (%struct.ip_fw_chain*, i32*, i32*, i8*, i32)*, i32 (%struct.ip_fw_chain*, i32*, i32*, i8*, i32)** %93, align 8
  %95 = load %struct.ip_fw_chain.0*, %struct.ip_fw_chain.0** %7, align 8
  %96 = bitcast %struct.ip_fw_chain.0* %95 to %struct.ip_fw_chain*
  %97 = load %struct.table_config*, %struct.table_config** %14, align 8
  %98 = getelementptr inbounds %struct.table_config, %struct.table_config* %97, i32 0, i32 2
  %99 = load %struct.table_config*, %struct.table_config** %14, align 8
  %100 = getelementptr inbounds %struct.table_config, %struct.table_config* %99, i32 0, i32 1
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 %94(%struct.ip_fw_chain* %96, i32* %98, i32* %100, i8* %101, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %57
  %107 = load %struct.table_config*, %struct.table_config** %14, align 8
  %108 = load i32, i32* @M_IPFW, align 4
  %109 = call i32 @free(%struct.table_config* %107, i32 %108)
  store %struct.table_config* null, %struct.table_config** %6, align 8
  br label %112

110:                                              ; preds = %57
  %111 = load %struct.table_config*, %struct.table_config** %14, align 8
  store %struct.table_config* %111, %struct.table_config** %6, align 8
  br label %112

112:                                              ; preds = %110, %106, %36
  %113 = load %struct.table_config*, %struct.table_config** %6, align 8
  ret %struct.table_config* %113
}

declare dso_local %struct.TYPE_5__* @ipfw_find_name_tlv_type(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.table_config* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.table_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
