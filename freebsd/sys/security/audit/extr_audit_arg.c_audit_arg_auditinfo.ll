; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_auditinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_auditinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo = type { %struct.TYPE_10__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kaudit_record = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ARG_AUID = common dso_local global i32 0, align 4
@ARG_ASID = common dso_local global i32 0, align 4
@ARG_AMASK = common dso_local global i32 0, align 4
@ARG_TERMID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_auditinfo(%struct.auditinfo* %0) #0 {
  %2 = alloca %struct.auditinfo*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  store %struct.auditinfo* %0, %struct.auditinfo** %2, align 8
  %4 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %4, %struct.kaudit_record** %3, align 8
  %5 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %6 = icmp eq %struct.kaudit_record* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %62

8:                                                ; preds = %1
  %9 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %10 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %13 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %16 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %19 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %22 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %26 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %30 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %34 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %38 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %42 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.auditinfo*, %struct.auditinfo** %2, align 8
  %46 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %50 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %54 = load i32, i32* @ARG_AUID, align 4
  %55 = load i32, i32* @ARG_ASID, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ARG_AMASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ARG_TERMID, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %53, i32 %60)
  br label %62

62:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
