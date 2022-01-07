; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_create_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i64 }
%struct._ipfw_obj_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.tid_info = type { i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_table(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_header*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tid_info, align 4
  %13 = alloca %struct.namedobj_instance*, align 8
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
  br label %78

21:                                               ; preds = %3
  %22 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %23 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %25, %struct._ipfw_obj_header** %8, align 8
  %26 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %27 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %26, i64 1
  %28 = bitcast %struct._ipfw_obj_header* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  %29 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %30 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @check_table_name(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strnlen(i8* %40, i32 8)
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %21
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %78

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i8* null, i8** %11, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %55 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %54, %struct.tid_info* %12)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %61 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %60)
  store %struct.namedobj_instance* %61, %struct.namedobj_instance** %13, align 8
  %62 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %63 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %62)
  %64 = load %struct.namedobj_instance*, %struct.namedobj_instance** %13, align 8
  %65 = call i32* @find_table(%struct.namedobj_instance* %64, %struct.tid_info* %12)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %69 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %68)
  %70 = load i32, i32* @EEXIST, align 4
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %53
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %73 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %72)
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = call i32 @create_table_internal(%struct.ip_fw_chain* %74, %struct.tid_info* %12, i8* %75, %struct.TYPE_5__* %76, i32* null, i32 0)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %67, %44, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @check_table_name(i8*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @create_table_internal(%struct.ip_fw_chain*, %struct.tid_info*, i8*, %struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
