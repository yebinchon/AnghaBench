; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"audit_arg_text: text == NULL\00", align 1
@ARG_ALL = common dso_local global i32 0, align 4
@ARG_TEXT = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_AUDITTEXT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_text(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %8, %struct.kaudit_record** %3, align 8
  %9 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %10 = icmp eq %struct.kaudit_record* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load i32, i32* @ARG_ALL, align 4
  %14 = load i32, i32* @ARG_TEXT, align 4
  %15 = xor i32 %13, %14
  %16 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %17 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %22 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = load i32, i32* @M_AUDITTEXT, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i32* @malloc(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %32 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %12
  %35 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %36 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = call i32 @strncpy(i32* %38, i8* %39, i32 %40)
  %42 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %43 = load i32, i32* @ARG_TEXT, align 4
  %44 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
