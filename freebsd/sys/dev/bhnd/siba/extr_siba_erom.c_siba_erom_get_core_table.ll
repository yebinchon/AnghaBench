; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_get_core_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_get_core_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_info = type { i64, i64, i32 }
%struct.siba_erom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.siba_core_id = type { %struct.bhnd_core_info }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_core_info**, i64*)* @siba_erom_get_core_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_erom_get_core_table(i32* %0, %struct.bhnd_core_info** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bhnd_core_info**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.siba_erom*, align 8
  %9 = alloca %struct.bhnd_core_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.siba_core_id, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bhnd_core_info** %1, %struct.bhnd_core_info*** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.siba_erom*
  store %struct.siba_erom* %15, %struct.siba_erom** %8, align 8
  %16 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %17 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @M_BHND, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call %struct.bhnd_core_info* @mallocarray(i64 %19, i32 24, i32 %20, i32 %21)
  store %struct.bhnd_core_info* %22, %struct.bhnd_core_info** %9, align 8
  %23 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %24 = icmp eq %struct.bhnd_core_info* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %3
  %28 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %29 = load %struct.bhnd_core_info**, %struct.bhnd_core_info*** %6, align 8
  store %struct.bhnd_core_info* %28, %struct.bhnd_core_info** %29, align 8
  %30 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %31 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %97, %27
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %38 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %35
  %43 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %44 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @siba_eio_read_core_id(%struct.TYPE_2__* %44, i64 %45, i32 0, %struct.siba_core_id* %12)
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %101

50:                                               ; preds = %42
  %51 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %51, i64 %52
  %54 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %12, i32 0, i32 0
  %55 = bitcast %struct.bhnd_core_info* %53 to i8*
  %56 = bitcast %struct.bhnd_core_info* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %93, %50
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %62, i64 %63
  %65 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %67, i64 %68
  %70 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %61
  %74 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %74, i64 %75
  %77 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %79, i64 %80
  %82 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %9, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %86, i64 %87
  %89 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %73, %61
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %57

96:                                               ; preds = %57
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %35

100:                                              ; preds = %35
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %48, %25
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.bhnd_core_info* @mallocarray(i64, i32, i32, i32) #1

declare dso_local i32 @siba_eio_read_core_id(%struct.TYPE_2__*, i64, i32, %struct.siba_core_id*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
