; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_algo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_algo = type { i64, i32 }
%struct.tables_config = type { i32, %struct.table_algo**, %struct.table_algo** }
%struct.tid_info = type { i64, i32 }

@IPFW_TABLE_MAXTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_algo* (%struct.tables_config*, %struct.tid_info*, i8*)* @find_table_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_algo* @find_table_algo(%struct.tables_config* %0, %struct.tid_info* %1, i8* %2) #0 {
  %4 = alloca %struct.table_algo*, align 8
  %5 = alloca %struct.tables_config*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.table_algo*, align 8
  store %struct.tables_config* %0, %struct.tables_config** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %12 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPFW_TABLE_MAXTYPE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.table_algo* null, %struct.table_algo** %4, align 8
  br label %117

17:                                               ; preds = %3
  %18 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %24 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %27 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.table_algo* null, %struct.table_algo** %4, align 8
  br label %117

31:                                               ; preds = %22
  %32 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %33 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %32, i32 0, i32 1
  %34 = load %struct.table_algo**, %struct.table_algo*** %33, align 8
  %35 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %36 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %34, i64 %38
  %40 = load %struct.table_algo*, %struct.table_algo** %39, align 8
  store %struct.table_algo* %40, %struct.table_algo** %4, align 8
  br label %117

41:                                               ; preds = %17
  %42 = load i8*, i8** %7, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %46 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %45, i32 0, i32 2
  %47 = load %struct.table_algo**, %struct.table_algo*** %46, align 8
  %48 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %47, i64 %50
  %52 = load %struct.table_algo*, %struct.table_algo** %51, align 8
  store %struct.table_algo* %52, %struct.table_algo** %4, align 8
  br label %117

53:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %113, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %57 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %54
  %61 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %62 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %61, i32 0, i32 1
  %63 = load %struct.table_algo**, %struct.table_algo*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.table_algo*, %struct.table_algo** %63, i64 %65
  %67 = load %struct.table_algo*, %struct.table_algo** %66, align 8
  store %struct.table_algo* %67, %struct.table_algo** %10, align 8
  %68 = load %struct.table_algo*, %struct.table_algo** %10, align 8
  %69 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @strlen(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.table_algo*, %struct.table_algo** %10, align 8
  %74 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @strncmp(i8* %72, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %113

80:                                               ; preds = %60
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 32
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %113

97:                                               ; preds = %88, %80
  %98 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %99 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %104 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.table_algo*, %struct.table_algo** %10, align 8
  %107 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store %struct.table_algo* null, %struct.table_algo** %4, align 8
  br label %117

111:                                              ; preds = %102, %97
  %112 = load %struct.table_algo*, %struct.table_algo** %10, align 8
  store %struct.table_algo* %112, %struct.table_algo** %4, align 8
  br label %117

113:                                              ; preds = %96, %79
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %54

116:                                              ; preds = %54
  store %struct.table_algo* null, %struct.table_algo** %4, align 8
  br label %117

117:                                              ; preds = %116, %111, %110, %44, %31, %30, %16
  %118 = load %struct.table_algo*, %struct.table_algo** %4, align 8
  ret %struct.table_algo* %118
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
