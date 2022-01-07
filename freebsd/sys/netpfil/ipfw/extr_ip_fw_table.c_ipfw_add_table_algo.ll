; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_add_table_algo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_add_table_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_algo = type { i64, i64, i32, i32 }
%struct.tables_config = type { i32, %struct.table_algo**, %struct.table_algo** }

@EINVAL = common dso_local global i32 0, align 4
@TA_BUF_SZ = common dso_local global i64 0, align 8
@IPFW_TABLE_MAXTYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Increase IPFW_TABLE_MAXTYPE\00", align 1
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Increase algo array size\00", align 1
@TA_FLAG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %0, %struct.table_algo* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.table_algo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tables_config*, align 8
  %11 = alloca %struct.table_algo*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.table_algo* %1, %struct.table_algo** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 24
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %99

17:                                               ; preds = %4
  %18 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %19 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @roundup2(i32 %20, i32 8)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @TA_BUF_SZ, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %99

27:                                               ; preds = %17
  %28 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %29 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IPFW_TABLE_MAXTYPE, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @M_IPFW, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.table_algo* @malloc(i32 24, i32 %35, i32 %38)
  store %struct.table_algo* %39, %struct.table_algo** %11, align 8
  %40 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %41 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(%struct.table_algo* %40, %struct.table_algo* %41, i64 %42)
  %44 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %45 = call %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain* %44)
  store %struct.tables_config* %45, %struct.tables_config** %10, align 8
  %46 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %47 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 255
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %53 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %54 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %53, i32 0, i32 2
  %55 = load %struct.table_algo**, %struct.table_algo*** %54, align 8
  %56 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %57 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %55, i64 %60
  store %struct.table_algo* %52, %struct.table_algo** %61, align 8
  %62 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %63 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %67 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %69 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TA_FLAG_DEFAULT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %27
  %75 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %76 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %75, i32 0, i32 1
  %77 = load %struct.table_algo**, %struct.table_algo*** %76, align 8
  %78 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %79 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %77, i64 %80
  %82 = load %struct.table_algo*, %struct.table_algo** %81, align 8
  %83 = icmp eq %struct.table_algo* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %86 = load %struct.tables_config*, %struct.tables_config** %10, align 8
  %87 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %86, i32 0, i32 1
  %88 = load %struct.table_algo**, %struct.table_algo*** %87, align 8
  %89 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %90 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %88, i64 %91
  store %struct.table_algo* %85, %struct.table_algo** %92, align 8
  br label %93

93:                                               ; preds = %84, %74, %27
  %94 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %95 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %25, %15
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @roundup2(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.table_algo* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.table_algo*, %struct.table_algo*, i64) #1

declare dso_local %struct.tables_config* @CHAIN_TO_TCFG(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
