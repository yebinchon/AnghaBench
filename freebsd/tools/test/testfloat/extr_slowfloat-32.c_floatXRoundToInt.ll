; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-32.c_floatXRoundToInt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-32.c_floatXRoundToInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @floatXRoundToInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floatXRoundToInt(%struct.TYPE_8__* noalias sret %0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = bitcast %struct.TYPE_8__* %0 to i8*
  %16 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 48, i1 false)
  br label %85

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 52, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = bitcast %struct.TYPE_8__* %0 to i8*
  %25 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 48, i1 false)
  br label %85

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 55, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 52, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %66

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %44, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %47 = bitcast %struct.TYPE_9__* %46 to { i32, i64 }*
  %48 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call { i32, i64 } @shortShift64RightJamming(i32 %49, i64 %51, i32 1)
  %53 = bitcast %struct.TYPE_9__* %5 to { i32, i64 }*
  %54 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i32, i64 } %52, 0
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i32, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = bitcast %struct.TYPE_9__* %45 to i8*
  %59 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %3, align 4
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32, i32* @FALSE, align 4
  call void @roundFloatXTo53(%struct.TYPE_8__* sret %6, i32 %67, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1)
  %68 = bitcast %struct.TYPE_8__* %1 to i8*
  %69 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 48, i1 false)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @TRUE, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %74, %66
  %83 = bitcast %struct.TYPE_8__* %0 to i8*
  %84 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 48, i1 false)
  br label %85

85:                                               ; preds = %82, %23, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i32, i64 } @shortShift64RightJamming(i32, i64, i32) #2

declare dso_local void @roundFloatXTo53(%struct.TYPE_8__* sret, i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
