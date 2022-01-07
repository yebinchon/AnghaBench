; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_init_dinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_init_dinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.siba_core_id }
%struct.siba_core_id = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SIBA_CORE_ADDRSPACE = common dso_local global i64 0, align 8
@SIBA_CFG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_init_dinfo(i32 %0, i32 %1, %struct.siba_devinfo* %2, %struct.siba_core_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.siba_devinfo*, align 8
  %9 = alloca %struct.siba_core_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.siba_devinfo* %2, %struct.siba_devinfo** %8, align 8
  store %struct.siba_core_id* %3, %struct.siba_core_id** %9, align 8
  %13 = load %struct.siba_devinfo*, %struct.siba_devinfo** %8, align 8
  %14 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %13, i32 0, i32 0
  %15 = load %struct.siba_core_id*, %struct.siba_core_id** %9, align 8
  %16 = bitcast %struct.siba_core_id* %14 to i8*
  %17 = bitcast %struct.siba_core_id* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %58, %4
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.siba_core_id*, %struct.siba_core_id** %9, align 8
  %21 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @SIBA_CORE_ADDRSPACE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.siba_core_id*, %struct.siba_core_id** %9, align 8
  %30 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SIBA_CFG_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load %struct.siba_devinfo*, %struct.siba_devinfo** %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.siba_core_id*, %struct.siba_core_id** %9, align 8
  %38 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.siba_core_id*, %struct.siba_core_id** %9, align 8
  %45 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @siba_append_dinfo_region(%struct.siba_devinfo* %35, i64 %36, i32 %43, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %70

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %18

61:                                               ; preds = %18
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.siba_devinfo*, %struct.siba_devinfo** %8, align 8
  %65 = call i32 @siba_register_interrupts(i32 %62, i32 %63, %struct.siba_devinfo* %64)
  store i32 %65, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %67, %55
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @siba_append_dinfo_region(%struct.siba_devinfo*, i64, i32, i32, i32) #2

declare dso_local i32 @siba_register_interrupts(i32, i32, %struct.siba_devinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
