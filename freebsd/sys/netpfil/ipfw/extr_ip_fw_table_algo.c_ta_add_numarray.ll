; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_numarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_numarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i64 }
%struct.tentry_info = type { i32, i32 }
%struct.numarray_cfg = type { i64, i32 }
%struct.ta_buf_numarray = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.numarray = type { i32 }

@TEI_FLAGS_UPDATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@TEI_FLAGS_UPDATED = common dso_local global i32 0, align 4
@TEI_FLAGS_DONTADD = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@compare_numarray = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"number %d already exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_add_numarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_add_numarray(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.numarray_cfg*, align 8
  %13 = alloca %struct.ta_buf_numarray*, align 8
  %14 = alloca %struct.numarray*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.ta_buf_numarray*
  store %struct.ta_buf_numarray* %18, %struct.ta_buf_numarray** %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.numarray_cfg*
  store %struct.numarray_cfg* %20, %struct.numarray_cfg** %12, align 8
  %21 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %22 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %25 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.table_info*, %struct.table_info** %8, align 8
  %28 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %29 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call %struct.numarray* @numarray_find(%struct.table_info* %27, i32* %30)
  store %struct.numarray* %31, %struct.numarray** %14, align 8
  %32 = load %struct.numarray*, %struct.numarray** %14, align 8
  %33 = icmp ne %struct.numarray* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %5
  %35 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %36 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TEI_FLAGS_UPDATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EEXIST, align 4
  store i32 %42, i32* %6, align 4
  br label %104

43:                                               ; preds = %34
  %44 = load %struct.numarray*, %struct.numarray** %14, align 8
  %45 = getelementptr inbounds %struct.numarray, %struct.numarray* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %48 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.numarray*, %struct.numarray** %14, align 8
  %51 = getelementptr inbounds %struct.numarray, %struct.numarray* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %54 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @TEI_FLAGS_UPDATED, align 4
  %56 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %57 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 0, i32* %60, align 4
  store i32 0, i32* %6, align 4
  br label %104

61:                                               ; preds = %5
  %62 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %63 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TEI_FLAGS_DONTADD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @EFBIG, align 4
  store i32 %69, i32* %6, align 4
  br label %104

70:                                               ; preds = %61
  %71 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %72 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %75 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %74, i32 0, i32 0
  %76 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %77 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %80 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @compare_numarray, align 4
  %83 = call i32 @badd(i32* %73, %struct.TYPE_2__* %75, i32 %78, i64 %81, i32 4, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %88 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @KASSERT(i32 %86, i8* %92)
  %94 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %95 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %99 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.table_info*, %struct.table_info** %8, align 8
  %102 = getelementptr inbounds %struct.table_info, %struct.table_info* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i32*, i32** %11, align 8
  store i32 1, i32* %103, align 4
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %70, %68, %43, %41
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.numarray* @numarray_find(%struct.table_info*, i32*) #1

declare dso_local i32 @badd(i32*, %struct.TYPE_2__*, i32, i64, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
