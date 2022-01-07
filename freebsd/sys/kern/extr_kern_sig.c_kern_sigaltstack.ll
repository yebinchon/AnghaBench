; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_6__, %struct.proc* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.proc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SS_ONSTACK = common dso_local global i32 0, align 4
@SS_DISABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sigaltstack(%struct.thread* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %8, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = call i32 @cpu_getstack(%struct.thread* %13)
  %15 = call i32 @sigonstack(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_6__* %19 to i8*
  %23 = bitcast %struct.TYPE_6__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TDP_ALTSTACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @SS_ONSTACK, align 4
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  br label %40

38:                                               ; preds = %18
  %39 = load i32, i32* @SS_DISABLE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %4, align 4
  br label %101

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SS_DISABLE, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %52
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SS_DISABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.proc*, %struct.proc** %8, align 8
  %74 = getelementptr inbounds %struct.proc, %struct.proc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %69
  %82 = load %struct.thread*, %struct.thread** %5, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = bitcast %struct.TYPE_6__* %83 to i8*
  %86 = bitcast %struct.TYPE_6__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load i32, i32* @TDP_ALTSTACK, align 4
  %88 = load %struct.thread*, %struct.thread** %5, align 8
  %89 = getelementptr inbounds %struct.thread, %struct.thread* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %99

92:                                               ; preds = %62
  %93 = load i32, i32* @TDP_ALTSTACK, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.thread*, %struct.thread** %5, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %81
  br label %100

100:                                              ; preds = %99, %44
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %79, %60, %50
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @cpu_getstack(%struct.thread*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
