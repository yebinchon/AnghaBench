; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_numeric_hlpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_numeric_hlpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voistatdata_numeric = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.voistatspec = type { i32, i32, i32*, i32 }
%struct.vss_numeric_hlpr_info = type { i32 }

@numeric_limits = common dso_local global %struct.voistatdata_numeric** null, align 8
@LIM_MAX = common dso_local global i64 0, align 8
@LIM_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vsd_dtype2size = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_vss_numeric_hlpr(i32 %0, %struct.voistatspec* %1, %struct.vss_numeric_hlpr_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.voistatspec*, align 8
  %7 = alloca %struct.vss_numeric_hlpr_info*, align 8
  %8 = alloca %struct.voistatdata_numeric, align 8
  %9 = alloca %struct.voistatdata_numeric, align 8
  store i32 %0, i32* %5, align 4
  store %struct.voistatspec* %1, %struct.voistatspec** %6, align 8
  store %struct.vss_numeric_hlpr_info* %2, %struct.vss_numeric_hlpr_info** %7, align 8
  %10 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %11 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %36 [
    i32 128, label %13
    i32 129, label %16
    i32 130, label %26
  ]

13:                                               ; preds = %3
  call void @stats_ctor_vsd_numeric(%struct.voistatdata_numeric* sret %9, i32 0)
  %14 = bitcast %struct.voistatdata_numeric* %8 to i8*
  %15 = bitcast %struct.voistatdata_numeric* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 48, i1 false)
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.voistatdata_numeric**, %struct.voistatdata_numeric*** @numeric_limits, align 8
  %18 = load i64, i64* @LIM_MAX, align 8
  %19 = getelementptr inbounds %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %17, i64 %18
  %20 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %20, i64 %22
  %24 = bitcast %struct.voistatdata_numeric* %8 to i8*
  %25 = bitcast %struct.voistatdata_numeric* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 48, i1 false)
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.voistatdata_numeric**, %struct.voistatdata_numeric*** @numeric_limits, align 8
  %28 = load i64, i64* @LIM_MIN, align 8
  %29 = getelementptr inbounds %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %27, i64 %28
  %30 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %30, i64 %32
  %34 = bitcast %struct.voistatdata_numeric* %8 to i8*
  %35 = bitcast %struct.voistatdata_numeric* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 48, i1 false)
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %163

38:                                               ; preds = %26, %16, %13
  %39 = load i32*, i32** @vsd_dtype2size, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @stats_realloc(i32* null, i32 0, i32 %43, i32 0)
  %45 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %46 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %48 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %4, align 4
  br label %163

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %56 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** @vsd_dtype2size, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %63 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  switch i32 %64, label %161 [
    i32 140, label %65
    i32 137, label %72
    i32 139, label %79
    i32 136, label %86
    i32 138, label %93
    i32 135, label %101
    i32 134, label %109
    i32 132, label %122
    i32 133, label %135
    i32 131, label %148
  ]

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %70 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  store i32 %68, i32* %71, align 4
  br label %162

72:                                               ; preds = %53
  %73 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %77 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32 %75, i32* %78, align 4
  br label %162

79:                                               ; preds = %53
  %80 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %84 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  store i32 %82, i32* %85, align 4
  br label %162

86:                                               ; preds = %53
  %87 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %91 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  store i32 %89, i32* %92, align 4
  br label %162

93:                                               ; preds = %53
  %94 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %98 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to i64*
  store i64 %96, i64* %100, align 8
  br label %162

101:                                              ; preds = %53
  %102 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %106 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = bitcast i32* %107 to i64*
  store i64 %104, i64* %108, align 8
  br label %162

109:                                              ; preds = %53
  %110 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vss_numeric_hlpr_info*, %struct.vss_numeric_hlpr_info** %7, align 8
  %114 = getelementptr inbounds %struct.vss_numeric_hlpr_info, %struct.vss_numeric_hlpr_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @Q_CTRLINI(i32 %115)
  %117 = call i8* @Q_SCVAL(i32 %112, i32 %116)
  %118 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %119 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to i8**
  store i8* %117, i8** %121, align 8
  br label %162

122:                                              ; preds = %53
  %123 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.vss_numeric_hlpr_info*, %struct.vss_numeric_hlpr_info** %7, align 8
  %127 = getelementptr inbounds %struct.vss_numeric_hlpr_info, %struct.vss_numeric_hlpr_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @Q_CTRLINI(i32 %128)
  %130 = call i8* @Q_SCVAL(i32 %125, i32 %129)
  %131 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %132 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8**
  store i8* %130, i8** %134, align 8
  br label %162

135:                                              ; preds = %53
  %136 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vss_numeric_hlpr_info*, %struct.vss_numeric_hlpr_info** %7, align 8
  %140 = getelementptr inbounds %struct.vss_numeric_hlpr_info, %struct.vss_numeric_hlpr_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @Q_CTRLINI(i32 %141)
  %143 = call i8* @Q_SCVAL(i32 %138, i32 %142)
  %144 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %145 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to i8**
  store i8* %143, i8** %147, align 8
  br label %162

148:                                              ; preds = %53
  %149 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %8, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.vss_numeric_hlpr_info*, %struct.vss_numeric_hlpr_info** %7, align 8
  %153 = getelementptr inbounds %struct.vss_numeric_hlpr_info, %struct.vss_numeric_hlpr_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Q_CTRLINI(i32 %154)
  %156 = call i8* @Q_SCVAL(i32 %151, i32 %155)
  %157 = load %struct.voistatspec*, %struct.voistatspec** %6, align 8
  %158 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = bitcast i32* %159 to i8**
  store i8* %156, i8** %160, align 8
  br label %162

161:                                              ; preds = %53
  br label %162

162:                                              ; preds = %161, %148, %135, %122, %109, %101, %93, %86, %79, %72, %65
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %51, %36
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local void @stats_ctor_vsd_numeric(%struct.voistatdata_numeric* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @stats_realloc(i32*, i32, i32, i32) #1

declare dso_local i8* @Q_SCVAL(i32, i32) #1

declare dso_local i32 @Q_CTRLINI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
