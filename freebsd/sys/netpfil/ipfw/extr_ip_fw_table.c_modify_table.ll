; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_modify_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_modify_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i64 }
%struct._ipfw_obj_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.tid_info = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_config = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TA_FLAG_READONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IPFW_TMFLAGS_LIMIT = common dso_local global i32 0, align 4
@IPFW_TMFLAGS_LOCK = common dso_local global i32 0, align 4
@IPFW_TGFLAGS_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @modify_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_table(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_header*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tid_info, align 4
  %12 = alloca %struct.namedobj_instance*, align 8
  %13 = alloca %struct.table_config*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %14 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %15 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 24
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %23 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %25, %struct._ipfw_obj_header** %8, align 8
  %26 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %27 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %26, i64 1
  %28 = bitcast %struct._ipfw_obj_header* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %9, align 8
  %29 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %30 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @check_table_name(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %102

38:                                               ; preds = %21
  %39 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %40 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %39, %struct.tid_info* %11)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %46 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %45)
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %48 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %47)
  store %struct.namedobj_instance* %48, %struct.namedobj_instance** %12, align 8
  %49 = load %struct.namedobj_instance*, %struct.namedobj_instance** %12, align 8
  %50 = call %struct.table_config* @find_table(%struct.namedobj_instance* %49, %struct.tid_info* %11)
  store %struct.table_config* %50, %struct.table_config** %13, align 8
  %51 = icmp eq %struct.table_config* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %54 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %53)
  %55 = load i32, i32* @ESRCH, align 4
  store i32 %55, i32* %4, align 4
  br label %102

56:                                               ; preds = %38
  %57 = load %struct.table_config*, %struct.table_config** %13, align 8
  %58 = getelementptr inbounds %struct.table_config, %struct.table_config* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TA_FLAG_READONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %67 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %66)
  %68 = load i32, i32* @EACCES, align 4
  store i32 %68, i32* %4, align 4
  br label %102

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IPFW_TMFLAGS_LIMIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.table_config*, %struct.table_config** %13, align 8
  %81 = getelementptr inbounds %struct.table_config, %struct.table_config* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IPFW_TMFLAGS_LOCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IPFW_TGFLAGS_LOCKED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load %struct.table_config*, %struct.table_config** %13, align 8
  %98 = getelementptr inbounds %struct.table_config, %struct.table_config* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %89, %82
  %100 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %101 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %65, %52, %36, %19
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @check_table_name(i8*) #1

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
