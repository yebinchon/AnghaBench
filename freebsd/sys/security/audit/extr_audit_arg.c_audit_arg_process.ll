; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.ucred* }
%struct.ucred = type { %struct.TYPE_3__, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.kaudit_record = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"audit_arg_process: p == NULL\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@ARG_AUID = common dso_local global i32 0, align 4
@ARG_EUID = common dso_local global i32 0, align 4
@ARG_EGID = common dso_local global i32 0, align 4
@ARG_RUID = common dso_local global i32 0, align 4
@ARG_RGID = common dso_local global i32 0, align 4
@ARG_ASID = common dso_local global i32 0, align 4
@ARG_TERMID_ADDR = common dso_local global i32 0, align 4
@ARG_PID = common dso_local global i32 0, align 4
@ARG_PROCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_process(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  %4 = alloca %struct.ucred*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = icmp ne %struct.proc* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.proc*, %struct.proc** %2, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %12, %struct.kaudit_record** %3, align 8
  %13 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %14 = icmp eq %struct.kaudit_record* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.proc*, %struct.proc** %2, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load %struct.ucred*, %struct.ucred** %18, align 8
  store %struct.ucred* %19, %struct.ucred** %4, align 8
  %20 = load %struct.ucred*, %struct.ucred** %4, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %25 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 7
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ucred*, %struct.ucred** %4, align 8
  %28 = getelementptr inbounds %struct.ucred, %struct.ucred* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %31 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ucred*, %struct.ucred** %4, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %39 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ucred*, %struct.ucred** %4, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %45 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ucred*, %struct.ucred** %4, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %51 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ucred*, %struct.ucred** %4, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %58 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ucred*, %struct.ucred** %4, align 8
  %61 = getelementptr inbounds %struct.ucred, %struct.ucred* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %65 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.proc*, %struct.proc** %2, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %71 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %74 = load i32, i32* @ARG_AUID, align 4
  %75 = load i32, i32* @ARG_EUID, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ARG_EGID, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @ARG_RUID, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ARG_RGID, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ARG_ASID, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ARG_TERMID_ADDR, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ARG_PID, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @ARG_PROCESS, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %73, i32 %90)
  br label %92

92:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
