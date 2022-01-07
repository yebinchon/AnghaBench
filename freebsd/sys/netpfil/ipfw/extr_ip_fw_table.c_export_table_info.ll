; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_table_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_table_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i64, i32, %struct.table_algo*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.table_algo = type { i32 (i32, %struct.table_info*, %struct.TYPE_7__*)*, i32, i32 (i32, %struct.table_info*, i32, i32)* }
%struct.table_info = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPFW_TGFLAGS_LOCKED = common dso_local global i32 0, align 4
@IPFW_TATFLAGS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.table_config*, %struct.TYPE_6__*)* @export_table_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_table_info(%struct.ip_fw_chain* %0, %struct.table_config* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.table_config*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.table_info*, align 8
  %8 = alloca %struct.table_algo*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.table_config* %1, %struct.table_config** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.table_config*, %struct.table_config** %5, align 8
  %10 = getelementptr inbounds %struct.table_config, %struct.table_config* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.table_config*, %struct.table_config** %5, align 8
  %16 = getelementptr inbounds %struct.table_config, %struct.table_config* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load %struct.table_config*, %struct.table_config** %5, align 8
  %21 = getelementptr inbounds %struct.table_config, %struct.table_config* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.table_config*, %struct.table_config** %5, align 8
  %26 = getelementptr inbounds %struct.table_config, %struct.table_config* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.table_config*, %struct.table_config** %5, align 8
  %32 = getelementptr inbounds %struct.table_config, %struct.table_config* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.table_config*, %struct.table_config** %5, align 8
  %38 = getelementptr inbounds %struct.table_config, %struct.table_config* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %44 = load %struct.table_config*, %struct.table_config** %5, align 8
  %45 = call i32 @table_get_count(%struct.ip_fw_chain* %43, %struct.table_config* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.table_config*, %struct.table_config** %5, align 8
  %49 = getelementptr inbounds %struct.table_config, %struct.table_config* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.table_config*, %struct.table_config** %5, align 8
  %54 = getelementptr inbounds %struct.table_config, %struct.table_config* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = load i32, i32* @IPFW_TGFLAGS_LOCKED, align 4
  br label %60

59:                                               ; preds = %3
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 56
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.table_config*, %struct.table_config** %5, align 8
  %84 = getelementptr inbounds %struct.table_config, %struct.table_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strlcpy(i32 %82, i32 %85, i32 4)
  %87 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %88 = load %struct.table_config*, %struct.table_config** %5, align 8
  %89 = getelementptr inbounds %struct.table_config, %struct.table_config* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %87, i32 %91)
  store %struct.table_info* %92, %struct.table_info** %7, align 8
  %93 = load %struct.table_config*, %struct.table_config** %5, align 8
  %94 = getelementptr inbounds %struct.table_config, %struct.table_config* %93, i32 0, i32 2
  %95 = load %struct.table_algo*, %struct.table_algo** %94, align 8
  store %struct.table_algo* %95, %struct.table_algo** %8, align 8
  %96 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %97 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %96, i32 0, i32 2
  %98 = load i32 (i32, %struct.table_info*, i32, i32)*, i32 (i32, %struct.table_info*, i32, i32)** %97, align 8
  %99 = icmp ne i32 (i32, %struct.table_info*, i32, i32)* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %60
  %101 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %102 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %101, i32 0, i32 2
  %103 = load i32 (i32, %struct.table_info*, i32, i32)*, i32 (i32, %struct.table_info*, i32, i32)** %102, align 8
  %104 = load %struct.table_config*, %struct.table_config** %5, align 8
  %105 = getelementptr inbounds %struct.table_config, %struct.table_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.table_info*, %struct.table_info** %7, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %103(i32 %106, %struct.table_info* %107, i32 %110, i32 4)
  br label %120

112:                                              ; preds = %60
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %117 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strlcpy(i32 %115, i32 %118, i32 4)
  br label %120

120:                                              ; preds = %112, %100
  %121 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %122 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %121, i32 0, i32 0
  %123 = load i32 (i32, %struct.table_info*, %struct.TYPE_7__*)*, i32 (i32, %struct.table_info*, %struct.TYPE_7__*)** %122, align 8
  %124 = icmp ne i32 (i32, %struct.table_info*, %struct.TYPE_7__*)* %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %127 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %126, i32 0, i32 0
  %128 = load i32 (i32, %struct.table_info*, %struct.TYPE_7__*)*, i32 (i32, %struct.table_info*, %struct.TYPE_7__*)** %127, align 8
  %129 = load %struct.table_config*, %struct.table_config** %5, align 8
  %130 = getelementptr inbounds %struct.table_config, %struct.table_config* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.table_info*, %struct.table_info** %7, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = call i32 %128(i32 %131, %struct.table_info* %132, %struct.TYPE_7__* %134)
  %136 = load i32, i32* @IPFW_TATFLAGS_DATA, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %125, %120
  ret void
}

declare dso_local i32 @table_get_count(%struct.ip_fw_chain*, %struct.table_config*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
