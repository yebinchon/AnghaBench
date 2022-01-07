; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_kern_setgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_kern_setgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.ucred = type { i32 }

@ngroups_max = common dso_local global i64 0, align 8
@PRIV_CRED_SETGROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_setgroups(%struct.thread* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @ngroups_max, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp sle i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @AUDIT_ARG_GROUPSET(i32* %21, i64 %22)
  %24 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %24, %struct.ucred** %9, align 8
  %25 = load %struct.ucred*, %struct.ucred** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @crextend(%struct.ucred* %25, i64 %26)
  %28 = load %struct.proc*, %struct.proc** %8, align 8
  %29 = call i32 @PROC_LOCK(%struct.proc* %28)
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = load %struct.ucred*, %struct.ucred** %9, align 8
  %32 = call %struct.ucred* @crcopysafe(%struct.proc* %30, %struct.ucred* %31)
  store %struct.ucred* %32, %struct.ucred** %10, align 8
  %33 = load %struct.ucred*, %struct.ucred** %10, align 8
  %34 = load i32, i32* @PRIV_CRED_SETGROUPS, align 4
  %35 = call i32 @priv_check_cred(%struct.ucred* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %60

39:                                               ; preds = %3
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.ucred*, %struct.ucred** %9, align 8
  %44 = getelementptr inbounds %struct.ucred, %struct.ucred* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load %struct.ucred*, %struct.ucred** %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @crsetgroups_locked(%struct.ucred* %46, i64 %47, i32* %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.proc*, %struct.proc** %8, align 8
  %52 = call i32 @setsugid(%struct.proc* %51)
  %53 = load %struct.proc*, %struct.proc** %8, align 8
  %54 = load %struct.ucred*, %struct.ucred** %9, align 8
  %55 = call i32 @proc_set_cred(%struct.proc* %53, %struct.ucred* %54)
  %56 = load %struct.proc*, %struct.proc** %8, align 8
  %57 = call i32 @PROC_UNLOCK(%struct.proc* %56)
  %58 = load %struct.ucred*, %struct.ucred** %10, align 8
  %59 = call i32 @crfree(%struct.ucred* %58)
  store i32 0, i32* %4, align 4
  br label %66

60:                                               ; preds = %38
  %61 = load %struct.proc*, %struct.proc** %8, align 8
  %62 = call i32 @PROC_UNLOCK(%struct.proc* %61)
  %63 = load %struct.ucred*, %struct.ucred** %9, align 8
  %64 = call i32 @crfree(%struct.ucred* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %50
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @AUDIT_ARG_GROUPSET(i32*, i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @crextend(%struct.ucred*, i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @crsetgroups_locked(%struct.ucred*, i64, i32*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
