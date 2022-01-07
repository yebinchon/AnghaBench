; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_groupset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_groupset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@ngroups_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"audit_arg_groupset: gidset_size > (kern.ngroups + 1)\00", align 1
@M_AUDITGIDSET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ARG_GROUPSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_groupset(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kaudit_record*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ngroups_max, align 8
  %9 = add nsw i64 %8, 1
  %10 = icmp sle i64 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %13, %struct.kaudit_record** %6, align 8
  %14 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %15 = icmp eq %struct.kaudit_record* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %19 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i64, i64* %4, align 8
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_AUDITGIDSET, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i32* @malloc(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %32 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* %30, i32** %34, align 8
  br label %35

35:                                               ; preds = %24, %17
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %46 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %58 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.kaudit_record*, %struct.kaudit_record** %6, align 8
  %62 = load i32, i32* @ARG_GROUPSET, align 4
  %63 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %16
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
