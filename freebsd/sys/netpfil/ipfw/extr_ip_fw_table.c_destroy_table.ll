; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_destroy_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_destroy_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_config = type { i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ESRCH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error unlinking kidx %d from table %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*)* @destroy_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_table(%struct.ip_fw_chain* %0, %struct.tid_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %struct.namedobj_instance*, align 8
  %7 = alloca %struct.table_config*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.tid_info* %1, %struct.tid_info** %5, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %9 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %11 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %10)
  store %struct.namedobj_instance* %11, %struct.namedobj_instance** %6, align 8
  %12 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %14 = call %struct.table_config* @find_table(%struct.namedobj_instance* %12, %struct.tid_info* %13)
  store %struct.table_config* %14, %struct.table_config** %7, align 8
  %15 = icmp eq %struct.table_config* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %18 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %17)
  %19 = load i32, i32* @ESRCH, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.table_config*, %struct.table_config** %7, align 8
  %22 = getelementptr inbounds %struct.table_config, %struct.table_config* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %28 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %27)
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %20
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %32 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %31)
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %34 = load %struct.table_config*, %struct.table_config** %7, align 8
  %35 = call i32 @unlink_table(%struct.ip_fw_chain* %33, %struct.table_config* %34)
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %37 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %36)
  %38 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %39 = load %struct.table_config*, %struct.table_config** %7, align 8
  %40 = getelementptr inbounds %struct.table_config, %struct.table_config* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ipfw_objhash_free_idx(%struct.namedobj_instance* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %30
  %46 = load %struct.table_config*, %struct.table_config** %7, align 8
  %47 = getelementptr inbounds %struct.table_config, %struct.table_config* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.table_config*, %struct.table_config** %7, align 8
  %51 = getelementptr inbounds %struct.table_config, %struct.table_config* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %52)
  br label %54

54:                                               ; preds = %45, %30
  %55 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %56 = load %struct.table_config*, %struct.table_config** %7, align 8
  %57 = load %struct.table_config*, %struct.table_config** %7, align 8
  %58 = getelementptr inbounds %struct.table_config, %struct.table_config* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.table_config*, %struct.table_config** %7, align 8
  %61 = getelementptr inbounds %struct.table_config, %struct.table_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.table_config*, %struct.table_config** %7, align 8
  %64 = getelementptr inbounds %struct.table_config, %struct.table_config* %63, i32 0, i32 1
  %65 = call i32 @ipfw_unref_table_values(%struct.ip_fw_chain* %55, %struct.table_config* %56, i32 %59, i32 %62, i32* %64)
  %66 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %67 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %66)
  %68 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %69 = load %struct.table_config*, %struct.table_config** %7, align 8
  %70 = call i32 @free_table_config(%struct.namedobj_instance* %68, %struct.table_config* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %54, %26, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @unlink_table(%struct.ip_fw_chain*, %struct.table_config*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_free_idx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @ipfw_unref_table_values(%struct.ip_fw_chain*, %struct.table_config*, i32, i32, i32*) #1

declare dso_local i32 @free_table_config(%struct.namedobj_instance*, %struct.table_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
