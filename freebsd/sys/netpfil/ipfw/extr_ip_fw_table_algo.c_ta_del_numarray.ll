; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_numarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_numarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i64 }
%struct.tentry_info = type { i32 }
%struct.numarray_cfg = type { i64, i32 }
%struct.ta_buf_numarray = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.numarray = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@compare_numarray = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"number %u does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_del_numarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_del_numarray(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
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
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.ta_buf_numarray*
  store %struct.ta_buf_numarray* %17, %struct.ta_buf_numarray** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.numarray_cfg*
  store %struct.numarray_cfg* %19, %struct.numarray_cfg** %12, align 8
  %20 = load %struct.table_info*, %struct.table_info** %8, align 8
  %21 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %22 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call %struct.numarray* @numarray_find(%struct.table_info* %20, i32* %23)
  store %struct.numarray* %24, %struct.numarray** %14, align 8
  %25 = load %struct.numarray*, %struct.numarray** %14, align 8
  %26 = icmp eq %struct.numarray* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %6, align 4
  br label %66

29:                                               ; preds = %5
  %30 = load %struct.numarray*, %struct.numarray** %14, align 8
  %31 = getelementptr inbounds %struct.numarray, %struct.numarray* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %34 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %36 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %39 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %42 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @compare_numarray, align 4
  %45 = call i32 @bdel(i32* %37, i32 %40, i64 %43, i32 4, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = load %struct.ta_buf_numarray*, %struct.ta_buf_numarray** %13, align 8
  %50 = getelementptr inbounds %struct.ta_buf_numarray, %struct.ta_buf_numarray* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %48, i8* %54)
  %56 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %57 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.numarray_cfg*, %struct.numarray_cfg** %12, align 8
  %61 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.table_info*, %struct.table_info** %8, align 8
  %64 = getelementptr inbounds %struct.table_info, %struct.table_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32*, i32** %11, align 8
  store i32 1, i32* %65, align 4
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %29, %27
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.numarray* @numarray_find(%struct.table_info*, i32*) #1

declare dso_local i32 @bdel(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
