; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_syscall_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_syscall_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_mask = type { i32 }
%struct.thread = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.au_mask }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i16, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"audit_syscall_enter: td->td_ar != NULL\00", align 1
@TDP_AUDITREC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"audit_syscall_enter: TDP_AUDITREC set\00", align 1
@AUE_NULL = common dso_local global i64 0, align 8
@AU_DEFAUDITID = common dso_local global i64 0, align 8
@audit_nae_mask = common dso_local global %struct.au_mask zeroinitializer, align 4
@AU_PRS_BOTH = common dso_local global i32 0, align 4
@audit_in_failure = common dso_local global i64 0, align 8
@PRIV_AUDIT_FAILSTOP = common dso_local global i32 0, align 4
@audit_fail_cv = common dso_local global i32 0, align 4
@audit_mtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"audit_failing_stop: thread continued\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_syscall_enter(i16 zeroext %0, %struct.thread* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.au_mask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store %struct.thread* %1, %struct.thread** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TDP_AUDITREC, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = icmp sge i32 %25, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %124

36:                                               ; preds = %2
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i16, i16* %3, align 2
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @AUE_NULL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %124

53:                                               ; preds = %36
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @AU_DEFAUDITID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store %struct.au_mask* @audit_nae_mask, %struct.au_mask** %5, align 8
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store %struct.au_mask* %69, %struct.au_mask** %5, align 8
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @au_event_class(i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.au_mask*, %struct.au_mask** %5, align 8
  %76 = load i32, i32* @AU_PRS_BOTH, align 4
  %77 = call i64 @au_preselect(i64 %73, i32 %74, %struct.au_mask* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load i64, i64* @audit_in_failure, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.thread*, %struct.thread** %4, align 8
  %84 = load i32, i32* @PRIV_AUDIT_FAILSTOP, align 4
  %85 = call i64 @priv_check(%struct.thread* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call i32 @cv_wait(i32* @audit_fail_cv, i32* @audit_mtx)
  %89 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82, %79
  store i32 1, i32* %9, align 4
  br label %101

91:                                               ; preds = %70
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @AU_PRS_BOTH, align 4
  %96 = call i64 @audit_pipe_preselect(i64 %92, i64 %93, i32 %94, i32 %95, i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %101

101:                                              ; preds = %100, %90
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.thread*, %struct.thread** %4, align 8
  %107 = call %struct.TYPE_12__* @audit_new(i64 %105, %struct.thread* %106)
  %108 = load %struct.thread*, %struct.thread** %4, align 8
  %109 = getelementptr inbounds %struct.thread, %struct.thread* %108, i32 0, i32 1
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %109, align 8
  %110 = load %struct.thread*, %struct.thread** %4, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = icmp ne %struct.TYPE_12__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load i32, i32* @TDP_AUDITREC, align 4
  %116 = load %struct.thread*, %struct.thread** %4, align 8
  %117 = getelementptr inbounds %struct.thread, %struct.thread* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %104
  br label %124

121:                                              ; preds = %101
  %122 = load %struct.thread*, %struct.thread** %4, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %123, align 8
  br label %124

124:                                              ; preds = %35, %52, %121, %120
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @au_event_class(i64) #1

declare dso_local i64 @au_preselect(i64, i32, %struct.au_mask*, i32) #1

declare dso_local i64 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @audit_pipe_preselect(i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @audit_new(i64, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
