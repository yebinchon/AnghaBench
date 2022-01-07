; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_lookup_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_lookup_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_match = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bhnd_core_info = type { i64, i64, i32 }
%struct.siba_erom = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.siba_core_id = type { %struct.bhnd_core_info }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_core_match*, %struct.bhnd_core_info*)* @siba_erom_lookup_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_erom_lookup_core(i32* %0, %struct.bhnd_core_match* %1, %struct.bhnd_core_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bhnd_core_match*, align 8
  %7 = alloca %struct.bhnd_core_info*, align 8
  %8 = alloca %struct.siba_erom*, align 8
  %9 = alloca %struct.bhnd_core_match, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.siba_core_id, align 8
  %13 = alloca %struct.bhnd_core_info, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %6, align 8
  store %struct.bhnd_core_info* %2, %struct.bhnd_core_info** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.siba_erom*
  store %struct.siba_erom* %16, %struct.siba_erom** %8, align 8
  %17 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %6, align 8
  %18 = bitcast %struct.bhnd_core_match* %9 to i8*
  %19 = bitcast %struct.bhnd_core_match* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %struct.bhnd_core_match, %struct.bhnd_core_match* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %90, %3
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %26 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %23
  %31 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %32 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @siba_eio_read_core_id(%struct.TYPE_6__* %32, i64 %33, i32 0, %struct.siba_core_id* %12)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %12, i32 0, i32 0
  %40 = bitcast %struct.bhnd_core_info* %13 to i8*
  %41 = bitcast %struct.bhnd_core_info* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %13, %struct.bhnd_core_match* %9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %90

45:                                               ; preds = %38
  store i64 0, i64* %14, align 8
  br label %46

46:                                               ; preds = %78, %45
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load %struct.siba_erom*, %struct.siba_erom** %8, align 8
  %52 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %51, i32 0, i32 0
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @siba_eio_read_core_id(%struct.TYPE_6__* %52, i64 %53, i32 0, %struct.siba_core_id* %12)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %95

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %12, i32 0, i32 0
  %61 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %13, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %12, i32 0, i32 0
  %68 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %13, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %73, %66, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %46

81:                                               ; preds = %46
  %82 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %6, align 8
  %83 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %13, %struct.bhnd_core_match* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81
  %87 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %88 = bitcast %struct.bhnd_core_info* %87 to i8*
  %89 = bitcast %struct.bhnd_core_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %95

90:                                               ; preds = %85, %44
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %23

93:                                               ; preds = %23
  %94 = load i32, i32* @ENOENT, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %86, %57, %36
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @siba_eio_read_core_id(%struct.TYPE_6__*, i64, i32, %struct.siba_core_id*) #2

declare dso_local i32 @bhnd_core_matches(%struct.bhnd_core_info*, %struct.bhnd_core_match*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
