; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_get_core_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_get_core_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_erom = type { i32 }
%struct.siba_core_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_erom_get_core_id(%struct.siba_erom* %0, i64 %1, %struct.siba_core_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siba_erom*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.siba_core_id*, align 8
  %8 = alloca %struct.siba_core_id, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.siba_core_id, align 8
  store %struct.siba_erom* %0, %struct.siba_erom** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.siba_core_id* %2, %struct.siba_core_id** %7, align 8
  %12 = load %struct.siba_erom*, %struct.siba_erom** %5, align 8
  %13 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @siba_eio_read_core_id(i32* %13, i64 %14, i32 0, %struct.siba_core_id* %8)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load %struct.siba_erom*, %struct.siba_erom** %5, align 8
  %26 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @siba_eio_read_core_id(i32* %26, i64 %27, i32 0, %struct.siba_core_id* %11)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %11, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %40, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.siba_core_id*, %struct.siba_core_id** %7, align 8
  %59 = bitcast %struct.siba_core_id* %58 to i8*
  %60 = bitcast %struct.siba_core_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %30, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @siba_eio_read_core_id(i32*, i64, i32, %struct.siba_core_id*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
