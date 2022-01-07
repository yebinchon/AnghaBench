; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_ref_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_ref_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i64 }
%struct.tentry_info = type { i32 }
%struct.table_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@OP_DEL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TEI_FLAGS_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"create_table_compat returned bad idx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*, %struct.tentry_info*, i32, i32, %struct.table_config**)* @find_ref_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ref_table(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.tentry_info* %2, i32 %3, i32 %4, %struct.table_config** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_fw_chain*, align 8
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca %struct.tentry_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.table_config**, align 8
  %14 = alloca %struct.namedobj_instance*, align 8
  %15 = alloca %struct.table_config*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %8, align 8
  store %struct.tid_info* %1, %struct.tid_info** %9, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.table_config** %5, %struct.table_config*** %13, align 8
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %19 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %18)
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %21 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %20)
  store %struct.namedobj_instance* %21, %struct.namedobj_instance** %14, align 8
  store %struct.table_config* null, %struct.table_config** %15, align 8
  %22 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %23 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %24 = call %struct.table_config* @find_table(%struct.namedobj_instance* %22, %struct.tid_info* %23)
  store %struct.table_config* %24, %struct.table_config** %15, align 8
  %25 = icmp ne %struct.table_config* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %6
  %27 = load %struct.table_config*, %struct.table_config** %15, align 8
  %28 = getelementptr inbounds %struct.table_config, %struct.table_config* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %7, align 4
  br label %107

37:                                               ; preds = %26
  %38 = load %struct.table_config*, %struct.table_config** %15, align 8
  %39 = getelementptr inbounds %struct.table_config, %struct.table_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EACCES, align 4
  store i32 %43, i32* %7, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @OP_ADD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.table_config*, %struct.table_config** %15, align 8
  %53 = load %struct.tentry_info*, %struct.tentry_info** %10, align 8
  %54 = call i64 @check_table_limit(%struct.table_config* %52, %struct.tentry_info* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @EFBIG, align 4
  store i32 %57, i32* %7, align 4
  br label %107

58:                                               ; preds = %51, %48, %44
  %59 = load %struct.table_config*, %struct.table_config** %15, align 8
  %60 = getelementptr inbounds %struct.table_config, %struct.table_config* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.table_config*, %struct.table_config** %15, align 8
  %65 = load %struct.table_config**, %struct.table_config*** %13, align 8
  store %struct.table_config* %64, %struct.table_config** %65, align 8
  store i32 0, i32* %7, align 4
  br label %107

66:                                               ; preds = %6
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @OP_DEL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ESRCH, align 4
  store i32 %71, i32* %7, align 4
  br label %107

72:                                               ; preds = %66
  %73 = load %struct.tentry_info*, %struct.tentry_info** %10, align 8
  %74 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TEI_FLAGS_COMPAT, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @ESRCH, align 4
  store i32 %80, i32* %7, align 4
  br label %107

81:                                               ; preds = %72
  %82 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %83 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %82)
  %84 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %85 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %86 = call i32 @create_table_compat(%struct.ip_fw_chain* %84, %struct.tid_info* %85, i32* %16)
  store i32 %86, i32* %17, align 4
  %87 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %88 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %87)
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %7, align 4
  br label %107

93:                                               ; preds = %81
  %94 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %94, i32 %95)
  %97 = inttoptr i64 %96 to %struct.table_config*
  store %struct.table_config* %97, %struct.table_config** %15, align 8
  %98 = load %struct.table_config*, %struct.table_config** %15, align 8
  %99 = icmp ne %struct.table_config* %98, null
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @KASSERT(i32 %100, i8* %103)
  %105 = load %struct.table_config*, %struct.table_config** %15, align 8
  %106 = load %struct.table_config**, %struct.table_config*** %13, align 8
  store %struct.table_config* %105, %struct.table_config** %106, align 8
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %93, %91, %79, %70, %58, %56, %42, %35
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i64 @check_table_limit(%struct.table_config*, %struct.tentry_info*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @create_table_compat(%struct.ip_fw_chain*, %struct.tid_info*, i32*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
