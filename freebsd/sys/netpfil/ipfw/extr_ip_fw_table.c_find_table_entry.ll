; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct._ipfw_obj_header = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tid_info = type { i64, i32 }
%struct.table_config = type { i32, %struct.table_algo*, %struct.TYPE_9__ }
%struct.table_algo = type { i32 (i32, %struct.table_info*, %struct.TYPE_11__*)* }
%struct.table_info = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.table_value = type { i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @find_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_table_entry(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct._ipfw_obj_header*, align 8
  %10 = alloca %struct.tid_info, align 8
  %11 = alloca %struct.table_config*, align 8
  %12 = alloca %struct.table_algo*, align 8
  %13 = alloca %struct.table_info*, align 8
  %14 = alloca %struct.table_value*, align 8
  %15 = alloca %struct.namedobj_instance*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 28, i64* %17, align 8
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %17, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %27 = load i64, i64* %17, align 8
  %28 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %26, i64 %27)
  %29 = inttoptr i64 %28 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %29, %struct._ipfw_obj_header** %9, align 8
  %30 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %31 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %30, i64 1
  %32 = bitcast %struct._ipfw_obj_header* %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  %33 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %34 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 16
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %122

42:                                               ; preds = %25
  %43 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %44 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %43, %struct.tid_info* %10)
  %45 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %46 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %55 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %54)
  %56 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %57 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %56)
  store %struct.namedobj_instance* %57, %struct.namedobj_instance** %15, align 8
  store %struct.table_algo* null, %struct.table_algo** %12, align 8
  %58 = load %struct.namedobj_instance*, %struct.namedobj_instance** %15, align 8
  %59 = call %struct.table_config* @find_table(%struct.namedobj_instance* %58, %struct.tid_info* %10)
  store %struct.table_config* %59, %struct.table_config** %11, align 8
  %60 = icmp eq %struct.table_config* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %63 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %62)
  %64 = load i32, i32* @ESRCH, align 4
  store i32 %64, i32* %4, align 4
  br label %122

65:                                               ; preds = %42
  %66 = load %struct.table_config*, %struct.table_config** %11, align 8
  %67 = getelementptr inbounds %struct.table_config, %struct.table_config* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %75 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %74)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %4, align 4
  br label %122

77:                                               ; preds = %65
  %78 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %79 = load %struct.table_config*, %struct.table_config** %11, align 8
  %80 = getelementptr inbounds %struct.table_config, %struct.table_config* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %78, i32 %82)
  store %struct.table_info* %83, %struct.table_info** %13, align 8
  %84 = load %struct.table_config*, %struct.table_config** %11, align 8
  %85 = getelementptr inbounds %struct.table_config, %struct.table_config* %84, i32 0, i32 1
  %86 = load %struct.table_algo*, %struct.table_algo** %85, align 8
  store %struct.table_algo* %86, %struct.table_algo** %12, align 8
  %87 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %88 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %87, i32 0, i32 0
  %89 = load i32 (i32, %struct.table_info*, %struct.TYPE_11__*)*, i32 (i32, %struct.table_info*, %struct.TYPE_11__*)** %88, align 8
  %90 = icmp eq i32 (i32, %struct.table_info*, %struct.TYPE_11__*)* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @ENOTSUP, align 4
  store i32 %92, i32* %4, align 4
  br label %122

93:                                               ; preds = %77
  %94 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %95 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %94, i32 0, i32 0
  %96 = load i32 (i32, %struct.table_info*, %struct.TYPE_11__*)*, i32 (i32, %struct.table_info*, %struct.TYPE_11__*)** %95, align 8
  %97 = load %struct.table_config*, %struct.table_config** %11, align 8
  %98 = getelementptr inbounds %struct.table_config, %struct.table_config* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.table_info*, %struct.table_info** %13, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = call i32 %96(i32 %99, %struct.table_info* %100, %struct.TYPE_11__* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %93
  %106 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %107 = load %struct.table_config*, %struct.table_config** %11, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.table_value* @get_table_value(%struct.ip_fw_chain* %106, %struct.table_config* %107, i32 %111)
  store %struct.table_value* %112, %struct.table_value** %14, align 8
  %113 = load %struct.table_value*, %struct.table_value** %14, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = call i32 @ipfw_export_table_value_v1(%struct.table_value* %113, i32* %116)
  br label %118

118:                                              ; preds = %105, %93
  %119 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %120 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %119)
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %91, %73, %61, %40, %23
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

declare dso_local %struct.table_value* @get_table_value(%struct.ip_fw_chain*, %struct.table_config*, i32) #1

declare dso_local i32 @ipfw_export_table_value_v1(%struct.table_value*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
