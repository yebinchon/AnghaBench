; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_del_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_del_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.tentry_info = type { i32 }
%struct.table_config = type { i32, i32, %struct.TYPE_2__, %struct.table_algo* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.table_algo = type { i32 (i32, i32, %struct.tentry_info*, i8*, i32*)*, i32 }

@TA_BUF_SZ = common dso_local global i32 0, align 4
@OP_DEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_table_entry(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.tentry_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.table_config*, align 8
  %13 = alloca %struct.table_algo*, align 8
  %14 = alloca %struct.tentry_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.tid_info* %1, %struct.tid_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @TA_BUF_SZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %31 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %30)
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %33 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %34 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @OP_DEL, align 4
  %37 = call i32 @find_ref_table(%struct.ip_fw_chain* %32, %struct.tid_info* %33, %struct.tentry_info* %34, i32 %35, i32 %36, %struct.table_config** %12)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %42 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %41)
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %164

44:                                               ; preds = %5
  %45 = load %struct.table_config*, %struct.table_config** %12, align 8
  %46 = getelementptr inbounds %struct.table_config, %struct.table_config* %45, i32 0, i32 3
  %47 = load %struct.table_algo*, %struct.table_algo** %46, align 8
  store %struct.table_algo* %47, %struct.table_algo** %13, align 8
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %49 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %48)
  store i8* %29, i8** %23, align 8
  %50 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %51 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %52 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @OP_DEL, align 4
  %55 = call i32 @prepare_batch_buffer(%struct.ip_fw_chain* %50, %struct.table_algo* %51, %struct.tentry_info* %52, i32 %53, i32 %54, i8** %23)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %156

59:                                               ; preds = %44
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %61 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %60)
  %62 = load %struct.table_config*, %struct.table_config** %12, align 8
  %63 = getelementptr inbounds %struct.table_config, %struct.table_config* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %68 = load %struct.table_config*, %struct.table_config** %12, align 8
  %69 = getelementptr inbounds %struct.table_config, %struct.table_config* %68, i32 0, i32 3
  %70 = load %struct.table_algo*, %struct.table_algo** %69, align 8
  %71 = icmp ne %struct.table_algo* %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %74 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %16, align 4
  br label %156

76:                                               ; preds = %59
  %77 = load %struct.table_config*, %struct.table_config** %12, align 8
  %78 = getelementptr inbounds %struct.table_config, %struct.table_config* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  %81 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %82 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %81)
  %83 = load i8*, i8** %23, align 8
  store i8* %83, i8** %24, align 8
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %126, %76
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %84
  %89 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %89, i64 %91
  store %struct.tentry_info* %92, %struct.tentry_info** %14, align 8
  store i32 0, i32* %19, align 4
  %93 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %94 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, %struct.tentry_info*, i8*, i32*)*, i32 (i32, i32, %struct.tentry_info*, i8*, i32*)** %94, align 8
  %96 = load %struct.table_config*, %struct.table_config** %12, align 8
  %97 = getelementptr inbounds %struct.table_config, %struct.table_config* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %99, i32 %100)
  %102 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = call i32 %95(i32 %98, i32 %101, %struct.tentry_info* %102, i8* %103, i32* %19)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.tentry_info*, %struct.tentry_info** %14, align 8
  %106 = load i32, i32* @OP_DEL, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @store_tei_result(%struct.tentry_info* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %88
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %115, %112, %88
  %118 = load i32, i32* %19, align 4
  %119 = load %struct.table_config*, %struct.table_config** %12, align 8
  %120 = getelementptr inbounds %struct.table_config, %struct.table_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %20, align 4
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  %129 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %130 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %24, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %24, align 8
  br label %84

135:                                              ; preds = %84
  %136 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %137 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %136)
  %138 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %139 = load %struct.table_config*, %struct.table_config** %12, align 8
  %140 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @ipfw_garbage_table_values(%struct.ip_fw_chain* %138, %struct.table_config* %139, %struct.tentry_info* %140, i32 %141, i32 0)
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %135
  %146 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %147 = load %struct.table_config*, %struct.table_config** %12, align 8
  %148 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %148, i32 %149)
  %151 = call i32 @check_table_space(%struct.ip_fw_chain* %146, i32* null, %struct.table_config* %147, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %145, %135
  %153 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %154 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %153)
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %152, %72, %58
  %157 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %158 = load %struct.table_algo*, %struct.table_algo** %13, align 8
  %159 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i8*, i8** %23, align 8
  %162 = call i32 @flush_batch_buffer(%struct.ip_fw_chain* %157, %struct.table_algo* %158, %struct.tentry_info* %159, i32 %160, i32 0, i8* %161, i8* %29)
  %163 = load i32, i32* %16, align 4
  store i32 %163, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %164

164:                                              ; preds = %156, %40
  %165 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @find_ref_table(%struct.ip_fw_chain*, %struct.tid_info*, %struct.tentry_info*, i32, i32, %struct.table_config**) #2

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @prepare_batch_buffer(%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i8**) #2

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #2

declare dso_local i32 @store_tei_result(%struct.tentry_info*, i32, i32, i32) #2

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @ipfw_garbage_table_values(%struct.ip_fw_chain*, %struct.table_config*, %struct.tentry_info*, i32, i32) #2

declare dso_local i32 @check_table_space(%struct.ip_fw_chain*, i32*, %struct.table_config*, i32, i32) #2

declare dso_local i32 @flush_batch_buffer(%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
