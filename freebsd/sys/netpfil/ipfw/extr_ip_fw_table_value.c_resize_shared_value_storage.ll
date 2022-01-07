; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_resize_shared_value_storage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_resize_shared_value_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { %struct.table_value* }
%struct.table_value = type { i32 }
%struct.tables_config = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.vdump_args = type { %struct.table_value* }

@ENOSPC = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@update_tvalue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*)* @resize_shared_value_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_shared_value_storage(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.tables_config*, align 8
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.table_value*, align 8
  %7 = alloca %struct.table_value*, align 8
  %8 = alloca %struct.table_value*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vdump_args, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  %14 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %15 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %14)
  store %struct.table_value* null, %struct.table_value** %7, align 8
  store i8* null, i8** %9, align 8
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %17 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %16, i32 0, i32 0
  %18 = load %struct.table_value*, %struct.table_value** %17, align 8
  store %struct.table_value* %18, %struct.table_value** %6, align 8
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %20 = call %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain* %19)
  store %struct.namedobj_instance* %20, %struct.namedobj_instance** %5, align 8
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %22 = call %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain* %21)
  store %struct.tables_config* %22, %struct.tables_config** %4, align 8
  %23 = load %struct.tables_config*, %struct.tables_config** %4, align 8
  %24 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 1073741824
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOSPC, align 4
  store i32 %30, i32* %2, align 4
  br label %109

31:                                               ; preds = %1
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %33 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %32)
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @M_IPFW, align 4
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.table_value* @malloc(i32 %37, i32 %38, i32 %41)
  store %struct.table_value* %42, %struct.table_value** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = bitcast i8** %9 to i8*
  %45 = call i32 @ipfw_objhash_bitmap_alloc(i32 %43, i8* %44, i32* %11)
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %47 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %46)
  %48 = load %struct.tables_config*, %struct.tables_config** %4, align 8
  %49 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %102

54:                                               ; preds = %31
  %55 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %56 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %55, i32 0, i32 0
  %57 = load %struct.table_value*, %struct.table_value** %56, align 8
  store %struct.table_value* %57, %struct.table_value** %6, align 8
  %58 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %60 = call i32 @rollback_toperation_state(%struct.ip_fw_chain* %58, %struct.ip_fw_chain* %59)
  %61 = load %struct.table_value*, %struct.table_value** %7, align 8
  %62 = load %struct.table_value*, %struct.table_value** %6, align 8
  %63 = load %struct.tables_config*, %struct.tables_config** %4, align 8
  %64 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(%struct.table_value* %61, %struct.table_value* %62, i32 %68)
  %70 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %71 = call %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain* %70)
  %72 = call i32 @ipfw_objhash_bitmap_merge(%struct.namedobj_instance* %71, i8** %9, i32* %11)
  %73 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %74 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %73)
  %75 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %76 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %75, i32 0, i32 0
  %77 = load %struct.table_value*, %struct.table_value** %76, align 8
  store %struct.table_value* %77, %struct.table_value** %8, align 8
  %78 = load %struct.table_value*, %struct.table_value** %7, align 8
  %79 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %80 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %79, i32 0, i32 0
  store %struct.table_value* %78, %struct.table_value** %80, align 8
  %81 = load %struct.table_value*, %struct.table_value** %8, align 8
  store %struct.table_value* %81, %struct.table_value** %7, align 8
  %82 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %83 = call %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain* %82)
  %84 = call i32 @ipfw_objhash_bitmap_swap(%struct.namedobj_instance* %83, i8** %9, i32* %11)
  %85 = load %struct.tables_config*, %struct.tables_config** %4, align 8
  %86 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.tables_config*, %struct.tables_config** %4, align 8
  %90 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %12, align 4
  %92 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %93 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %92)
  %94 = call i32 @memset(%struct.vdump_args* %10, i32 0, i32 8)
  %95 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %96 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %95, i32 0, i32 0
  %97 = load %struct.table_value*, %struct.table_value** %96, align 8
  %98 = getelementptr inbounds %struct.vdump_args, %struct.vdump_args* %10, i32 0, i32 0
  store %struct.table_value* %97, %struct.table_value** %98, align 8
  %99 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %100 = load i32, i32* @update_tvalue, align 4
  %101 = call i32 @ipfw_objhash_foreach(%struct.namedobj_instance* %99, i32 %100, %struct.vdump_args* %10)
  br label %102

102:                                              ; preds = %54, %53
  %103 = load %struct.table_value*, %struct.table_value** %7, align 8
  %104 = load i32, i32* @M_IPFW, align 4
  %105 = call i32 @free(%struct.table_value* %103, i32 %104)
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @ipfw_objhash_bitmap_free(i8* %106, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %102, %29
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain*) #1

declare dso_local %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_value* @malloc(i32, i32, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_alloc(i32, i8*, i32*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @rollback_toperation_state(%struct.ip_fw_chain*, %struct.ip_fw_chain*) #1

declare dso_local i32 @memcpy(%struct.table_value*, %struct.table_value*, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_merge(%struct.namedobj_instance*, i8**, i32*) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_bitmap_swap(%struct.namedobj_instance*, i8**, i32*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @memset(%struct.vdump_args*, i32, i32) #1

declare dso_local i32 @ipfw_objhash_foreach(%struct.namedobj_instance*, i32, %struct.vdump_args*) #1

declare dso_local i32 @free(%struct.table_value*, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
