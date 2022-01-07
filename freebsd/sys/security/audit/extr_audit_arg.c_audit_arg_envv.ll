; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_envv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_envv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@audit_arge = common dso_local global i64 0, align 8
@M_AUDITTEXT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ARG_ENVV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_envv(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kaudit_record*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @audit_arge, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %38

11:                                               ; preds = %3
  %12 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %12, %struct.kaudit_record** %7, align 8
  %13 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %14 = icmp eq %struct.kaudit_record* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %38

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @M_AUDITTEXT, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i32 @malloc(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %22 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %26 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bcopy(i8* %24, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %33 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %36 = load i32, i32* @ARG_ENVV, align 4
  %37 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %35, i32 %36)
  br label %38

38:                                               ; preds = %16, %15, %10
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
