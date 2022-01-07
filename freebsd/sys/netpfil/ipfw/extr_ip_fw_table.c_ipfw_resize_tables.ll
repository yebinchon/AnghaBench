; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_resize_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_resize_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i8* }
%struct.namedobj_instance = type { i32 }
%struct.table_info = type { i32* }
%struct.table_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.table_info*)* }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_TABLES_MAX = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_fw_tables_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_resize_tables(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.namedobj_instance*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.table_info*, align 8
  %13 = alloca %struct.table_config*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %142

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IPFW_TABLES_MAX, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @IPFW_TABLES_MAX, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @roundup2p(i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @M_IPFW, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @malloc(i32 %33, i32 %34, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i32, i32* %5, align 4
  %40 = bitcast i8** %9 to i8*
  %41 = call i32 @ipfw_objhash_bitmap_alloc(i32 %39, i8* %40, i32* %15)
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %43 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @V_fw_tables_max, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i32, i32* @V_fw_tables_max, align 4
  br label %51

49:                                               ; preds = %26
  %50 = load i32, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %54 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %53)
  store %struct.namedobj_instance* %54, %struct.namedobj_instance** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @V_fw_tables_max, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %60 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %59)
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %142

62:                                               ; preds = %51
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %65 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(i8* %63, i8* %66, i32 %70)
  %72 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %73 = call i32 @ipfw_objhash_bitmap_merge(%struct.namedobj_instance* %72, i8** %9, i32* %15)
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %75 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %74)
  %76 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %77 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %81 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %83 = call i32 @ipfw_objhash_bitmap_swap(%struct.namedobj_instance* %82, i8** %9, i32* %15)
  %84 = load i32, i32* @V_fw_tables_max, align 4
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* @V_fw_tables_max, align 4
  %86 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %87 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %86)
  %88 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %89 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.table_info*
  store %struct.table_info* %91, %struct.table_info** %12, align 8
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %128, %62
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %92
  %97 = load %struct.table_info*, %struct.table_info** %12, align 8
  %98 = getelementptr inbounds %struct.table_info, %struct.table_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %128

102:                                              ; preds = %96
  %103 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %103, i32 %104)
  %106 = inttoptr i64 %105 to %struct.table_config*
  store %struct.table_config* %106, %struct.table_config** %13, align 8
  %107 = load %struct.table_config*, %struct.table_config** %13, align 8
  %108 = icmp eq %struct.table_config* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.table_config*, %struct.table_config** %13, align 8
  %111 = getelementptr inbounds %struct.table_config, %struct.table_config* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (i32, %struct.table_info*)*, i32 (i32, %struct.table_info*)** %113, align 8
  %115 = icmp eq i32 (i32, %struct.table_info*)* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %102
  br label %128

117:                                              ; preds = %109
  %118 = load %struct.table_config*, %struct.table_config** %13, align 8
  %119 = getelementptr inbounds %struct.table_config, %struct.table_config* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (i32, %struct.table_info*)*, i32 (i32, %struct.table_info*)** %121, align 8
  %123 = load %struct.table_config*, %struct.table_config** %13, align 8
  %124 = getelementptr inbounds %struct.table_config, %struct.table_config* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.table_info*, %struct.table_info** %12, align 8
  %127 = call i32 %122(i32 %125, %struct.table_info* %126)
  br label %128

128:                                              ; preds = %117, %116, %101
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  %131 = load %struct.table_info*, %struct.table_info** %12, align 8
  %132 = getelementptr inbounds %struct.table_info, %struct.table_info* %131, i32 1
  store %struct.table_info* %132, %struct.table_info** %12, align 8
  br label %92

133:                                              ; preds = %92
  %134 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %135 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %134)
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* @M_IPFW, align 4
  %138 = call i32 @free(i8* %136, i32 %137)
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @ipfw_objhash_bitmap_free(i8* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %133, %58, %18
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @roundup2p(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_alloc(i32, i8*, i32*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_merge(%struct.namedobj_instance*, i8**, i32*) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_bitmap_swap(%struct.namedobj_instance*, i8**, i32*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ipfw_objhash_bitmap_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
