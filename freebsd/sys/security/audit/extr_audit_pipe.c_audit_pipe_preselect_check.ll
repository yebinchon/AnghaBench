; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i32, i32, i32 }
%struct.audit_pipe_preselect = type { i32 }

@AU_DEFAUDITID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"audit_pipe_preselect_check: mode %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_pipe*, i32, i32, i32, i32, i32)* @audit_pipe_preselect_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_pipe_preselect_check(%struct.audit_pipe* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.audit_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.audit_pipe_preselect*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %16 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %15)
  %17 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %18 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %53 [
    i32 128, label %20
    i32 129, label %22
  ]

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %7, align 4
  br label %59

22:                                               ; preds = %6
  %23 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.audit_pipe_preselect* @audit_pipe_preselect_find(%struct.audit_pipe* %23, i32 %24)
  store %struct.audit_pipe_preselect* %25, %struct.audit_pipe_preselect** %14, align 8
  %26 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %14, align 8
  %27 = icmp eq %struct.audit_pipe_preselect* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @AU_DEFAUDITID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %36 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %35, i32 0, i32 2
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @au_preselect(i32 %33, i32 %34, i32* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %43 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %42, i32 0, i32 1
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @au_preselect(i32 %40, i32 %41, i32* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %59

46:                                               ; preds = %22
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %14, align 8
  %50 = getelementptr inbounds %struct.audit_pipe_preselect, %struct.audit_pipe_preselect* %49, i32 0, i32 0
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @au_preselect(i32 %47, i32 %48, i32* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %59

53:                                               ; preds = %6
  %54 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %55 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %46, %39, %32, %20
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local %struct.audit_pipe_preselect* @audit_pipe_preselect_find(%struct.audit_pipe*, i32) #1

declare dso_local i32 @au_preselect(i32, i32, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
