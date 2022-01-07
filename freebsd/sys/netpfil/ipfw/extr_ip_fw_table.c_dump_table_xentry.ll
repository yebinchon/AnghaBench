; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_xentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_xentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_args = type { %struct.TYPE_17__, %struct.table_config*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_11__, %struct.TYPE_12__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.table_config = type { %struct.TYPE_13__, i32, %struct.table_algo* }
%struct.TYPE_13__ = type { i64 }
%struct.table_algo = type { i32 (i32, i32, i8*, %struct.TYPE_17__*)* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.table_value = type { i32 }

@IPFW_TABLE_ADDR = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@IPFW_TCF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dump_table_xentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_table_xentry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.table_value*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.dump_args*
  store %struct.dump_args* %14, %struct.dump_args** %6, align 8
  %15 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %16 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %15, i32 0, i32 1
  %17 = load %struct.table_config*, %struct.table_config** %16, align 8
  store %struct.table_config* %17, %struct.table_config** %7, align 8
  %18 = load %struct.table_config*, %struct.table_config** %7, align 8
  %19 = getelementptr inbounds %struct.table_config, %struct.table_config* %18, i32 0, i32 2
  %20 = load %struct.table_algo*, %struct.table_algo** %19, align 8
  store %struct.table_algo* %20, %struct.table_algo** %8, align 8
  %21 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %22 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ipfw_get_sopt_space(i32 %23, i32 32)
  %25 = inttoptr i64 %24 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %9, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %114

29:                                               ; preds = %2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i32 32, i32* %31, align 8
  %32 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %33 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %38 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %37, i32 0, i32 0
  %39 = call i32 @memset(%struct.TYPE_17__* %38, i32 0, i32 24)
  %40 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %41 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %40, i32 0, i32 0
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %10, align 8
  %42 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %43 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %42, i32 0, i32 0
  %44 = load i32 (i32, i32, i8*, %struct.TYPE_17__*)*, i32 (i32, i32, i8*, %struct.TYPE_17__*)** %43, align 8
  %45 = load %struct.table_config*, %struct.table_config** %7, align 8
  %46 = getelementptr inbounds %struct.table_config, %struct.table_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %49 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = call i32 %44(i32 %47, i32 %50, i8* %51, %struct.TYPE_17__* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %29
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %3, align 4
  br label %114

58:                                               ; preds = %29
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %65 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %68 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %67, i32 0, i32 1
  %69 = load %struct.table_config*, %struct.table_config** %68, align 8
  %70 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %71 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.table_value* @get_table_value(i32 %66, %struct.table_config* %69, i32 %74)
  store %struct.table_value* %75, %struct.table_value** %11, align 8
  %76 = load %struct.table_value*, %struct.table_value** %11, align 8
  %77 = call i32 @ipfw_export_table_value_legacy(%struct.table_value* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.table_config*, %struct.table_config** %7, align 8
  %81 = getelementptr inbounds %struct.table_config, %struct.table_config* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IPFW_TABLE_ADDR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %58
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* @IPFW_TCF_INET, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %113

107:                                              ; preds = %86, %58
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = call i32 @memcpy(%struct.TYPE_18__* %109, %struct.TYPE_11__* %111, i32 8)
  br label %113

113:                                              ; preds = %107, %92
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %56, %28
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @ipfw_get_sopt_space(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.table_value* @get_table_value(i32, %struct.table_config*, i32) #1

declare dso_local i32 @ipfw_export_table_value_legacy(%struct.table_value*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
