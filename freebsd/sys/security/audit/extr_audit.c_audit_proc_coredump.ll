; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_proc_coredump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_proc_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_mask = type { i32 }
%struct.thread = type { %struct.TYPE_6__*, %struct.ucred* }
%struct.TYPE_6__ = type { i32 }
%struct.ucred = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.au_mask }
%struct.kaudit_record = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@AU_DEFAUDITID = common dso_local global i64 0, align 8
@audit_nae_mask = common dso_local global %struct.au_mask zeroinitializer, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@AUE_CORE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_AUDITPATH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@ARG_UPATH1 = common dso_local global i32 0, align 4
@ARG_SIGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_proc_coredump(%struct.thread* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kaudit_record*, align 8
  %8 = alloca %struct.au_mask*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.ucred*, %struct.ucred** %16, align 8
  store %struct.ucred* %17, %struct.ucred** %9, align 8
  %18 = load %struct.ucred*, %struct.ucred** %9, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @AU_DEFAUDITID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.au_mask* @audit_nae_mask, %struct.au_mask** %8, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.ucred*, %struct.ucred** %9, align 8
  %28 = getelementptr inbounds %struct.ucred, %struct.ucred* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.au_mask* %29, %struct.au_mask** %8, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @AU_PRS_FAILURE, align 4
  store i32 %34, i32* %12, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @AU_PRS_SUCCESS, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* @AUE_CORE, align 4
  %39 = call i32 @au_event_class(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @AUE_CORE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.au_mask*, %struct.au_mask** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @au_preselect(i32 %40, i32 %41, %struct.au_mask* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* @AUE_CORE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @audit_pipe_preselect(i64 %47, i32 %48, i32 %49, i32 %50, i32 0)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %102

54:                                               ; preds = %46, %37
  %55 = load i32, i32* @AUE_CORE, align 4
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call %struct.kaudit_record* @audit_new(i32 %55, %struct.thread* %56)
  store %struct.kaudit_record* %57, %struct.kaudit_record** %7, align 8
  %58 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %59 = icmp eq %struct.kaudit_record* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %102

61:                                               ; preds = %54
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %66 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i8** %67, i8*** %13, align 8
  %68 = load i32, i32* @MAXPATHLEN, align 4
  %69 = load i32, i32* @M_AUDITPATH, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = call i8* @malloc(i32 %68, i32 %69, i32 %70)
  %72 = load i8**, i8*** %13, align 8
  store i8* %71, i8** %72, align 8
  %73 = load %struct.thread*, %struct.thread** %4, align 8
  %74 = load i32, i32* @AT_FDCWD, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i8**, i8*** %13, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @audit_canon_path(%struct.thread* %73, i32 %74, i8* %75, i8* %77)
  %79 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %80 = load i32, i32* @ARG_UPATH1, align 4
  %81 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %79, i32 %80)
  br label %82

82:                                               ; preds = %64, %61
  %83 = load %struct.thread*, %struct.thread** %4, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %89 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %92 = load i32, i32* @ARG_SIGNUM, align 4
  %93 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @audit_commit(%struct.kaudit_record* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %60, %53
  ret void
}

declare dso_local i32 @au_event_class(i32) #1

declare dso_local i64 @au_preselect(i32, i32, %struct.au_mask*, i32) #1

declare dso_local i64 @audit_pipe_preselect(i64, i32, i32, i32, i32) #1

declare dso_local %struct.kaudit_record* @audit_new(i32, %struct.thread*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @audit_canon_path(%struct.thread*, i32, i8*, i8*) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

declare dso_local i32 @audit_commit(%struct.kaudit_record*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
