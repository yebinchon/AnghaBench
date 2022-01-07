; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_check_table_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_check_table_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tableop_state = type { i64 }
%struct.table_config = type { %struct.TYPE_2__, i32, %struct.table_algo* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.table_algo = type { i64 (i32, %struct.table_info*, i32, i64*)*, i32 (i8*, i64*)*, i32 (i32, %struct.table_info*, i8*, i64*)*, i32 (i8*)*, i32 (i32, %struct.table_info*, i8*, i64)* }
%struct.table_info = type { i32 }

@TA_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tableop_state*, %struct.table_config*, %struct.table_info*, i32)* @check_table_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_table_space(%struct.ip_fw_chain* %0, %struct.tableop_state* %1, %struct.table_config* %2, %struct.table_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.tableop_state*, align 8
  %9 = alloca %struct.table_config*, align 8
  %10 = alloca %struct.table_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.table_algo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.tableop_state* %1, %struct.tableop_state** %8, align 8
  store %struct.table_config* %2, %struct.table_config** %9, align 8
  store %struct.table_info* %3, %struct.table_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @TA_BUF_SZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %23 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %22)
  store i32 0, i32* %16, align 4
  %24 = load %struct.table_config*, %struct.table_config** %9, align 8
  %25 = getelementptr inbounds %struct.table_config, %struct.table_config* %24, i32 0, i32 2
  %26 = load %struct.table_algo*, %struct.table_algo** %25, align 8
  store %struct.table_algo* %26, %struct.table_algo** %12, align 8
  %27 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %28 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %27, i32 0, i32 0
  %29 = load i64 (i32, %struct.table_info*, i32, i64*)*, i64 (i32, %struct.table_info*, i32, i64*)** %28, align 8
  %30 = icmp eq i64 (i32, %struct.table_info*, i32, i64*)* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %154

32:                                               ; preds = %5
  %33 = load %struct.table_config*, %struct.table_config** %9, align 8
  %34 = getelementptr inbounds %struct.table_config, %struct.table_config* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %142, %32
  br label %39

39:                                               ; preds = %38
  store i64 0, i64* %13, align 8
  %40 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %41 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %40, i32 0, i32 0
  %42 = load i64 (i32, %struct.table_info*, i32, i64*)*, i64 (i32, %struct.table_info*, i32, i64*)** %41, align 8
  %43 = load %struct.table_config*, %struct.table_config** %9, align 8
  %44 = getelementptr inbounds %struct.table_config, %struct.table_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.table_info*, %struct.table_info** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 %42(i32 %45, %struct.table_info* %46, i32 %47, i64* %13)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %147

51:                                               ; preds = %39
  %52 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %53 = icmp ne %struct.tableop_state* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %56 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %57 = call i32 @add_toperation_state(%struct.ip_fw_chain* %55, %struct.tableop_state* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %60 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %59)
  %61 = bitcast i8* %21 to i8**
  %62 = trunc i64 %19 to i32
  %63 = call i32 @memset(i8** %61, i32 0, i32 %62)
  %64 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %65 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %64, i32 0, i32 1
  %66 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %65, align 8
  %67 = call i32 %66(i8* %21, i64* %13)
  store i32 %67, i32* %16, align 4
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %69 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %68)
  %70 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %71 = icmp ne %struct.tableop_state* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %74 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %75 = call i32 @del_toperation_state(%struct.ip_fw_chain* %73, %struct.tableop_state* %74)
  br label %76

76:                                               ; preds = %72, %58
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %147

80:                                               ; preds = %76
  %81 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %82 = icmp ne %struct.tableop_state* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.tableop_state*, %struct.tableop_state** %8, align 8
  %85 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %90 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %89, i32 0, i32 3
  %91 = load i32 (i8*)*, i32 (i8*)** %90, align 8
  %92 = call i32 %91(i8* %21)
  br label %147

93:                                               ; preds = %83, %80
  %94 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %95 = load %struct.table_config*, %struct.table_config** %9, align 8
  %96 = getelementptr inbounds %struct.table_config, %struct.table_config* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %94, i32 %98)
  store %struct.table_info* %99, %struct.table_info** %10, align 8
  %100 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %101 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %100, i32 0, i32 0
  %102 = load i64 (i32, %struct.table_info*, i32, i64*)*, i64 (i32, %struct.table_info*, i32, i64*)** %101, align 8
  %103 = load %struct.table_config*, %struct.table_config** %9, align 8
  %104 = getelementptr inbounds %struct.table_config, %struct.table_config* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.table_info*, %struct.table_info** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i64 %102(i32 %105, %struct.table_info* %106, i32 %107, i64* %13)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %93
  %111 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %112 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %111)
  %113 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %114 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %113, i32 0, i32 3
  %115 = load i32 (i8*)*, i32 (i8*)** %114, align 8
  %116 = call i32 %115(i8* %21)
  br label %147

117:                                              ; preds = %93
  %118 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %119 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %118, i32 0, i32 2
  %120 = load i32 (i32, %struct.table_info*, i8*, i64*)*, i32 (i32, %struct.table_info*, i8*, i64*)** %119, align 8
  %121 = load %struct.table_config*, %struct.table_config** %9, align 8
  %122 = getelementptr inbounds %struct.table_config, %struct.table_config* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.table_info*, %struct.table_info** %10, align 8
  %125 = call i32 %120(i32 %123, %struct.table_info* %124, i8* %21, i64* %13)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %117
  %129 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %130 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %129)
  %131 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %132 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %131, i32 0, i32 4
  %133 = load i32 (i32, %struct.table_info*, i8*, i64)*, i32 (i32, %struct.table_info*, i8*, i64)** %132, align 8
  %134 = load %struct.table_config*, %struct.table_config** %9, align 8
  %135 = getelementptr inbounds %struct.table_config, %struct.table_config* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.table_info*, %struct.table_info** %10, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 %133(i32 %136, %struct.table_info* %137, i8* %21, i64 %138)
  %140 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %141 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %140)
  br label %142

142:                                              ; preds = %128, %117
  %143 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %144 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %143, i32 0, i32 3
  %145 = load i32 (i8*)*, i32 (i8*)** %144, align 8
  %146 = call i32 %145(i8* %21)
  br label %38

147:                                              ; preds = %110, %88, %79, %50
  %148 = load %struct.table_config*, %struct.table_config** %9, align 8
  %149 = getelementptr inbounds %struct.table_config, %struct.table_config* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %154

154:                                              ; preds = %147, %31
  %155 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #2

declare dso_local i32 @add_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #2

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @del_toperation_state(%struct.ip_fw_chain*, %struct.tableop_state*) #2

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #2

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #2

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
