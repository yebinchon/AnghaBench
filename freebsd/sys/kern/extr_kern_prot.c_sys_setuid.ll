; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setuid_args = type { i64 }
%struct.ucred = type { i64, i64, i64 }
%struct.uidinfo = type { i32 }

@PRIV_CRED_SETUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setuid(%struct.thread* %0, %struct.setuid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setuid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uidinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setuid_args* %1, %struct.setuid_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %6, align 8
  %15 = load %struct.setuid_args*, %struct.setuid_args** %5, align 8
  %16 = getelementptr inbounds %struct.setuid_args, %struct.setuid_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @AUDIT_ARG_UID(i64 %18)
  %20 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %20, %struct.ucred** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.uidinfo* @uifind(i64 %21)
  store %struct.uidinfo* %22, %struct.uidinfo** %10, align 8
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = call i32 @PROC_LOCK(%struct.proc* %23)
  %25 = load %struct.proc*, %struct.proc** %6, align 8
  %26 = load %struct.ucred*, %struct.ucred** %7, align 8
  %27 = call %struct.ucred* @crcopysafe(%struct.proc* %25, %struct.ucred* %26)
  store %struct.ucred* %27, %struct.ucred** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.ucred*, %struct.ucred** %8, align 8
  %30 = getelementptr inbounds %struct.ucred, %struct.ucred* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.ucred*, %struct.ucred** %8, align 8
  %35 = load i32, i32* @PRIV_CRED_SETUID, align 4
  %36 = call i32 @priv_check_cred(%struct.ucred* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %85

39:                                               ; preds = %33, %2
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ucred*, %struct.ucred** %8, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.ucred*, %struct.ucred** %7, align 8
  %47 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %48 = call i32 @change_ruid(%struct.ucred* %46, %struct.uidinfo* %47)
  %49 = load %struct.proc*, %struct.proc** %6, align 8
  %50 = call i32 @setsugid(%struct.proc* %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.ucred*, %struct.ucred** %8, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.ucred*, %struct.ucred** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @change_svuid(%struct.ucred* %58, i64 %59)
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = call i32 @setsugid(%struct.proc* %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.ucred*, %struct.ucred** %8, align 8
  %66 = getelementptr inbounds %struct.ucred, %struct.ucred* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.ucred*, %struct.ucred** %7, align 8
  %71 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %72 = call i32 @change_euid(%struct.ucred* %70, %struct.uidinfo* %71)
  %73 = load %struct.proc*, %struct.proc** %6, align 8
  %74 = call i32 @setsugid(%struct.proc* %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.proc*, %struct.proc** %6, align 8
  %77 = load %struct.ucred*, %struct.ucred** %7, align 8
  %78 = call i32 @proc_set_cred(%struct.proc* %76, %struct.ucred* %77)
  %79 = load %struct.proc*, %struct.proc** %6, align 8
  %80 = call i32 @PROC_UNLOCK(%struct.proc* %79)
  %81 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %82 = call i32 @uifree(%struct.uidinfo* %81)
  %83 = load %struct.ucred*, %struct.ucred** %8, align 8
  %84 = call i32 @crfree(%struct.ucred* %83)
  store i32 0, i32* %3, align 4
  br label %93

85:                                               ; preds = %38
  %86 = load %struct.proc*, %struct.proc** %6, align 8
  %87 = call i32 @PROC_UNLOCK(%struct.proc* %86)
  %88 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %89 = call i32 @uifree(%struct.uidinfo* %88)
  %90 = load %struct.ucred*, %struct.ucred** %7, align 8
  %91 = call i32 @crfree(%struct.ucred* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %75
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @AUDIT_ARG_UID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local %struct.uidinfo* @uifind(i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_ruid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @change_svuid(%struct.ucred*, i64) #1

declare dso_local i32 @change_euid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @uifree(%struct.uidinfo*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
