; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_list_table_algo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_list_table_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct._ipfw_obj_lheader = type { i32, i32, i32 }
%struct.tables_config = type { i32, %struct.table_algo** }
%struct.table_algo = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"previously checked buffer is not enough\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @list_table_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_table_algo(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_lheader*, align 8
  %9 = alloca %struct.tables_config*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.table_algo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %15 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %16 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %15, i32 12)
  %17 = inttoptr i64 %16 to %struct._ipfw_obj_lheader*
  store %struct._ipfw_obj_lheader* %17, %struct._ipfw_obj_lheader** %8, align 8
  %18 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %19 = icmp eq %struct._ipfw_obj_lheader* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %108

22:                                               ; preds = %3
  %23 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %24 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %27 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %108

32:                                               ; preds = %22
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %34 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %33)
  %35 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %36 = call %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain* %35)
  store %struct.tables_config* %36, %struct.tables_config** %9, align 8
  %37 = load %struct.tables_config*, %struct.tables_config** %9, align 8
  %38 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 12
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %47 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %49 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %48, i32 0, i32 2
  store i32 12, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %52 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %32
  %56 = load i32, i32* %14, align 4
  %57 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %58 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %60 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %108

62:                                               ; preds = %32
  %63 = load i32, i32* %14, align 4
  %64 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %65 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %102, %62
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %66
  %71 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %72 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %71, i32 12)
  %73 = inttoptr i64 %72 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %10, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %75 = icmp ne %struct.TYPE_2__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.tables_config*, %struct.tables_config** %9, align 8
  %79 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %78, i32 0, i32 1
  %80 = load %struct.table_algo**, %struct.table_algo*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %80, i64 %82
  %84 = load %struct.table_algo*, %struct.table_algo** %83, align 8
  store %struct.table_algo* %84, %struct.table_algo** %11, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %89 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strlcpy(i32 %87, i32 %90, i32 4)
  %92 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %93 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %98 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %70
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %66

105:                                              ; preds = %66
  %106 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %107 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %55, %30, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
