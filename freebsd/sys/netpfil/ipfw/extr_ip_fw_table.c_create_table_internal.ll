; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_create_table_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_create_table_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_config = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.table_algo = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TA_FLAG_READONLY = common dso_local global i32 0, align 4
@IPFW_TGFLAGS_LOCKED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Unable to allocate table index. Consider increasing net.inet.ip.fw.tables_max\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*, i8*, %struct.TYPE_5__*, i32*, i32)* @create_table_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_table_internal(%struct.ip_fw_chain* %0, %struct.tid_info* %1, i8* %2, %struct.TYPE_5__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_fw_chain*, align 8
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.namedobj_instance*, align 8
  %15 = alloca %struct.table_config*, align 8
  %16 = alloca %struct.table_config*, align 8
  %17 = alloca %struct.table_config*, align 8
  %18 = alloca %struct.table_algo*, align 8
  %19 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %8, align 8
  store %struct.tid_info* %1, %struct.tid_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %21 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %20)
  store %struct.namedobj_instance* %21, %struct.namedobj_instance** %14, align 8
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %23 = call i32 @CHAIN_TO_TCFG(%struct.ip_fw_chain* %22)
  %24 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.table_algo* @find_table_algo(i32 %23, %struct.tid_info* %24, i8* %25)
  store %struct.table_algo* %26, %struct.table_algo** %18, align 8
  %27 = load %struct.table_algo*, %struct.table_algo** %18, align 8
  %28 = icmp eq %struct.table_algo* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOTSUP, align 4
  store i32 %30, i32* %7, align 4
  br label %158

31:                                               ; preds = %6
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %33 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %34 = load %struct.table_algo*, %struct.table_algo** %18, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.table_config* @alloc_table_config(%struct.ip_fw_chain* %32, %struct.tid_info* %33, %struct.table_algo* %34, i8* %35, i32 %38)
  store %struct.table_config* %39, %struct.table_config** %15, align 8
  %40 = load %struct.table_config*, %struct.table_config** %15, align 8
  %41 = icmp eq %struct.table_config* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %7, align 4
  br label %158

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.table_config*, %struct.table_config** %15, align 8
  %49 = getelementptr inbounds %struct.table_config, %struct.table_config* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.table_config*, %struct.table_config** %15, align 8
  %54 = getelementptr inbounds %struct.table_config, %struct.table_config* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.table_algo*, %struct.table_algo** %18, align 8
  %56 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TA_FLAG_READONLY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.table_config*, %struct.table_config** %15, align 8
  %63 = getelementptr inbounds %struct.table_config, %struct.table_config* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %74

64:                                               ; preds = %44
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPFW_TGFLAGS_LOCKED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.table_config*, %struct.table_config** %15, align 8
  %73 = getelementptr inbounds %struct.table_config, %struct.table_config* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %64, %61
  %75 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %76 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %75)
  %77 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %78 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %79 = call %struct.table_config* @find_table(%struct.namedobj_instance* %77, %struct.tid_info* %78)
  store %struct.table_config* %79, %struct.table_config** %16, align 8
  %80 = load %struct.table_config*, %struct.table_config** %16, align 8
  %81 = icmp ne %struct.table_config* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load %struct.table_config*, %struct.table_config** %16, align 8
  %87 = getelementptr inbounds %struct.table_config, %struct.table_config* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.table_config*, %struct.table_config** %15, align 8
  %91 = getelementptr inbounds %struct.table_config, %struct.table_config* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %89, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85, %82
  %96 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %97 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %96)
  %98 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %99 = load %struct.table_config*, %struct.table_config** %15, align 8
  %100 = call i32 @free_table_config(%struct.namedobj_instance* %98, %struct.table_config* %99)
  %101 = load i32, i32* @EEXIST, align 4
  store i32 %101, i32* %7, align 4
  br label %158

102:                                              ; preds = %85
  %103 = load %struct.table_config*, %struct.table_config** %15, align 8
  store %struct.table_config* %103, %struct.table_config** %17, align 8
  %104 = load %struct.table_config*, %struct.table_config** %16, align 8
  store %struct.table_config* %104, %struct.table_config** %15, align 8
  %105 = load %struct.table_config*, %struct.table_config** %17, align 8
  store %struct.table_config* %105, %struct.table_config** %16, align 8
  br label %130

106:                                              ; preds = %74
  %107 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %108 = call i64 @ipfw_objhash_alloc_idx(%struct.namedobj_instance* %107, i32* %19)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %112 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %111)
  %113 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %114 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %115 = load %struct.table_config*, %struct.table_config** %15, align 8
  %116 = call i32 @free_table_config(%struct.namedobj_instance* %114, %struct.table_config* %115)
  %117 = load i32, i32* @EBUSY, align 4
  store i32 %117, i32* %7, align 4
  br label %158

118:                                              ; preds = %106
  %119 = load i32, i32* %19, align 4
  %120 = load %struct.table_config*, %struct.table_config** %15, align 8
  %121 = getelementptr inbounds %struct.table_config, %struct.table_config* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %124 = load %struct.table_config*, %struct.table_config** %15, align 8
  %125 = getelementptr inbounds %struct.table_config, %struct.table_config* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %128 = load %struct.table_config*, %struct.table_config** %15, align 8
  %129 = call i32 @link_table(%struct.ip_fw_chain* %127, %struct.table_config* %128)
  br label %130

130:                                              ; preds = %118, %102
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.table_config*, %struct.table_config** %15, align 8
  %135 = getelementptr inbounds %struct.table_config, %struct.table_config* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32*, i32** %12, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.table_config*, %struct.table_config** %15, align 8
  %144 = getelementptr inbounds %struct.table_config, %struct.table_config* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %12, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %150 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %149)
  %151 = load %struct.table_config*, %struct.table_config** %16, align 8
  %152 = icmp ne %struct.table_config* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %155 = load %struct.table_config*, %struct.table_config** %16, align 8
  %156 = call i32 @free_table_config(%struct.namedobj_instance* %154, %struct.table_config* %155)
  br label %157

157:                                              ; preds = %153, %148
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %157, %110, %95, %42, %29
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_algo* @find_table_algo(i32, %struct.tid_info*, i8*) #1

declare dso_local i32 @CHAIN_TO_TCFG(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @alloc_table_config(%struct.ip_fw_chain*, %struct.tid_info*, %struct.table_algo*, i8*, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(%struct.namedobj_instance*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @free_table_config(%struct.namedobj_instance*, %struct.table_config*) #1

declare dso_local i64 @ipfw_objhash_alloc_idx(%struct.namedobj_instance*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @link_table(%struct.ip_fw_chain*, %struct.table_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
