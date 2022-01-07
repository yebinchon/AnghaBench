; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.timeval = type { i64, i32 }
%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@tc_precexp = common dso_local global i32 0, align 4
@tc_tick_sbt = common dso_local global i64 0, align 8
@SBT_MAX = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selsocket(%struct.socket* %0, i32 %1, %struct.timeval* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timeval* %2, %struct.timeval** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.timeval*, %struct.timeval** %8, align 8
  %16 = icmp ne %struct.timeval* %15, null
  br i1 %16, label %17, label %78

17:                                               ; preds = %4
  %18 = load %struct.timeval*, %struct.timeval** %8, align 8
  %19 = bitcast %struct.timeval* %10 to i8*
  %20 = bitcast %struct.timeval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 1000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24, %17
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %110

34:                                               ; preds = %28
  %35 = call i32 @timevalisset(%struct.timeval* %10)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %77

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INT32_MAX, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = bitcast %struct.timeval* %10 to { i64, i32 }*
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @tvtosbt(i64 %46, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @tc_precexp, align 4
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @TIMESEL(i32* %11, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load i64, i64* @tc_tick_sbt, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %57, %43
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @SBT_MAX, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp sle i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %74

73:                                               ; preds = %63
  store i32 -1, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %76

75:                                               ; preds = %38
  store i32 -1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %37
  br label %79

78:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.thread*, %struct.thread** %9, align 8
  %81 = call i32 @seltdinit(%struct.thread* %80)
  br label %82

82:                                               ; preds = %100, %79
  %83 = load %struct.thread*, %struct.thread** %9, align 8
  %84 = call i32 @selfdalloc(%struct.thread* %83, i32* null)
  %85 = load %struct.socket*, %struct.socket** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.thread*, %struct.thread** %9, align 8
  %88 = call i32 @sopoll(%struct.socket* %85, i32 %86, i32* null, %struct.thread* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %110

92:                                               ; preds = %82
  %93 = load %struct.thread*, %struct.thread** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @seltdwait(%struct.thread* %93, i32 %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %101

100:                                              ; preds = %92
  br label %82

101:                                              ; preds = %99
  %102 = load %struct.thread*, %struct.thread** %9, align 8
  %103 = call i32 @seltdclear(%struct.thread* %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @ERESTART, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %101
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %91, %32
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @timevalisset(%struct.timeval*) #2

declare dso_local i32 @tvtosbt(i64, i32) #2

declare dso_local i64 @TIMESEL(i32*, i32) #2

declare dso_local i32 @seltdinit(%struct.thread*) #2

declare dso_local i32 @selfdalloc(%struct.thread*, i32*) #2

declare dso_local i32 @sopoll(%struct.socket*, i32, i32*, %struct.thread*) #2

declare dso_local i32 @seltdwait(%struct.thread*, i32, i32) #2

declare dso_local i32 @seltdclear(%struct.thread*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
