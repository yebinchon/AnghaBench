; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.tid_info = type { i32, i32, i32, i32* }
%struct.table_config = type { i32 }
%struct.named_object = type { i32 }
%struct.TYPE_3__ = type { i8* }

@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V_fw_tables_sets = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.tid_info*, %struct.table_config**)* @find_table_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_table_err(%struct.namedobj_instance* %0, %struct.tid_info* %1, %struct.table_config** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca %struct.table_config**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.named_object*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store %struct.table_config** %2, %struct.table_config*** %7, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %28 = call %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32* %20, i32 %23, i32 %26, i32 %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %11, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i64, i64* @V_fw_tables_sets, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %41 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  store i32 %45, i32* %12, align 4
  br label %53

46:                                               ; preds = %3
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintf(i8* %47, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %52, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %46, %44
  %54 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call %struct.named_object* @ipfw_objhash_lookup_name(%struct.namedobj_instance* %54, i32 %55, i8* %56)
  store %struct.named_object* %57, %struct.named_object** %10, align 8
  %58 = load %struct.named_object*, %struct.named_object** %10, align 8
  %59 = bitcast %struct.named_object* %58 to %struct.table_config*
  %60 = load %struct.table_config**, %struct.table_config*** %7, align 8
  store %struct.table_config* %59, %struct.table_config** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %31
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_3__* @ipfw_find_name_tlv_type(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name(%struct.namedobj_instance*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
