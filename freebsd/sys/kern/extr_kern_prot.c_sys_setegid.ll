; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setegid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setegid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setegid_args = type { i64 }
%struct.ucred = type { i64, i64, i64* }

@PRIV_CRED_SETEGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setegid(%struct.thread* %0, %struct.setegid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setegid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setegid_args* %1, %struct.setegid_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %6, align 8
  %14 = load %struct.setegid_args*, %struct.setegid_args** %5, align 8
  %15 = getelementptr inbounds %struct.setegid_args, %struct.setegid_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @AUDIT_ARG_EGID(i64 %17)
  %19 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %19, %struct.ucred** %7, align 8
  %20 = load %struct.proc*, %struct.proc** %6, align 8
  %21 = call i32 @PROC_LOCK(%struct.proc* %20)
  %22 = load %struct.proc*, %struct.proc** %6, align 8
  %23 = load %struct.ucred*, %struct.ucred** %7, align 8
  %24 = call %struct.ucred* @crcopysafe(%struct.proc* %22, %struct.ucred* %23)
  store %struct.ucred* %24, %struct.ucred** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.ucred*, %struct.ucred** %8, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ucred*, %struct.ucred** %8, align 8
  %33 = getelementptr inbounds %struct.ucred, %struct.ucred* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.ucred*, %struct.ucred** %8, align 8
  %38 = load i32, i32* @PRIV_CRED_SETEGID, align 4
  %39 = call i32 @priv_check_cred(%struct.ucred* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %64

42:                                               ; preds = %36, %30, %2
  %43 = load %struct.ucred*, %struct.ucred** %8, align 8
  %44 = getelementptr inbounds %struct.ucred, %struct.ucred* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.ucred*, %struct.ucred** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @change_egid(%struct.ucred* %51, i64 %52)
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = call i32 @setsugid(%struct.proc* %54)
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.proc*, %struct.proc** %6, align 8
  %58 = load %struct.ucred*, %struct.ucred** %7, align 8
  %59 = call i32 @proc_set_cred(%struct.proc* %57, %struct.ucred* %58)
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = call i32 @PROC_UNLOCK(%struct.proc* %60)
  %62 = load %struct.ucred*, %struct.ucred** %8, align 8
  %63 = call i32 @crfree(%struct.ucred* %62)
  store i32 0, i32* %3, align 4
  br label %70

64:                                               ; preds = %41
  %65 = load %struct.proc*, %struct.proc** %6, align 8
  %66 = call i32 @PROC_UNLOCK(%struct.proc* %65)
  %67 = load %struct.ucred*, %struct.ucred** %7, align 8
  %68 = call i32 @crfree(%struct.ucred* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @AUDIT_ARG_EGID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_egid(%struct.ucred*, i64) #1

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
