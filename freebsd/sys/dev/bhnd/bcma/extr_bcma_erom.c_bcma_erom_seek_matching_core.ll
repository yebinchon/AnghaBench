; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_seek_matching_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_seek_matching_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bhnd_core_match = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bhnd_core_info = type { i64, i64, i32 }
%struct.bcma_erom_core = type { i64, i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@BCMA_EROM_ENTRY_TYPE_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, %struct.bhnd_core_match*, %struct.bhnd_core_info*)* @bcma_erom_seek_matching_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_seek_matching_core(%struct.bcma_erom* %0, %struct.bhnd_core_match* %1, %struct.bhnd_core_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_erom*, align 8
  %6 = alloca %struct.bhnd_core_match*, align 8
  %7 = alloca %struct.bhnd_core_info*, align 8
  %8 = alloca %struct.bhnd_core_match, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.bcma_erom_core, align 8
  %14 = alloca %struct.bhnd_core_info, align 8
  %15 = alloca i64, align 8
  store %struct.bcma_erom* %0, %struct.bcma_erom** %5, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %6, align 8
  store %struct.bhnd_core_info* %2, %struct.bhnd_core_info** %7, align 8
  %16 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %17 = call i32 @bcma_erom_reset(%struct.bcma_erom* %16)
  %18 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %6, align 8
  %19 = bitcast %struct.bhnd_core_match* %8 to i8*
  %20 = bitcast %struct.bhnd_core_match* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.bhnd_core_match, %struct.bhnd_core_match* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %112, %3
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @UINT_MAX, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %115

28:                                               ; preds = %24
  %29 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %30 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %31 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %117

36:                                               ; preds = %28
  %37 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %38 = call i32 @bcma_erom_tell(%struct.bcma_erom* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %40 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %39, %struct.bcma_erom_core* %13)
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %36
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @bcma_erom_to_core_info(%struct.bcma_erom_core* %13, i64 %45, i32 0, %struct.bhnd_core_info* %14)
  %47 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %14, %struct.bhnd_core_match* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %112

50:                                               ; preds = %44
  %51 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %52 = call i32 @bcma_erom_tell(%struct.bcma_erom* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %54 = call i32 @bcma_erom_reset(%struct.bcma_erom* %53)
  store i64 0, i64* %15, align 8
  br label %55

55:                                               ; preds = %90, %50
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %61 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %62 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %117

67:                                               ; preds = %59
  %68 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %69 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %68, %struct.bcma_erom_core* %13)
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %117

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %14, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %13, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %14, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %14, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %85, %79, %73
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %15, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %15, align 8
  br label %55

93:                                               ; preds = %55
  %94 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %6, align 8
  %95 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %14, %struct.bhnd_core_match* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @bcma_erom_seek(%struct.bcma_erom* %98, i32 %99)
  br label %112

101:                                              ; preds = %93
  %102 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @bcma_erom_seek(%struct.bcma_erom* %102, i32 %103)
  %105 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %106 = icmp ne %struct.bhnd_core_info* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %109 = bitcast %struct.bhnd_core_info* %108 to i8*
  %110 = bitcast %struct.bhnd_core_info* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 24, i1 false)
  br label %111

111:                                              ; preds = %107, %101
  store i32 0, i32* %4, align 4
  br label %117

112:                                              ; preds = %97, %49
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %24

115:                                              ; preds = %24
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %111, %71, %65, %42, %34
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @bcma_erom_reset(%struct.bcma_erom*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcma_erom_seek_next(%struct.bcma_erom*, i32) #1

declare dso_local i32 @bcma_erom_tell(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_parse_core(%struct.bcma_erom*, %struct.bcma_erom_core*) #1

declare dso_local i32 @bcma_erom_to_core_info(%struct.bcma_erom_core*, i64, i32, %struct.bhnd_core_info*) #1

declare dso_local i32 @bhnd_core_matches(%struct.bhnd_core_info*, %struct.bhnd_core_match*) #1

declare dso_local i32 @bcma_erom_seek(%struct.bcma_erom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
