; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_seteuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_seteuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.seteuid_args = type { i64 }
%struct.ucred = type { i64, i64, i64 }
%struct.uidinfo = type { i32 }

@PRIV_CRED_SETEUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_seteuid(%struct.thread* %0, %struct.seteuid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.seteuid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uidinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.seteuid_args* %1, %struct.seteuid_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %6, align 8
  %15 = load %struct.seteuid_args*, %struct.seteuid_args** %5, align 8
  %16 = getelementptr inbounds %struct.seteuid_args, %struct.seteuid_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @AUDIT_ARG_EUID(i64 %18)
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
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.ucred*, %struct.ucred** %8, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.ucred*, %struct.ucred** %8, align 8
  %41 = load i32, i32* @PRIV_CRED_SETEUID, align 4
  %42 = call i32 @priv_check_cred(%struct.ucred* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %67

45:                                               ; preds = %39, %33, %2
  %46 = load %struct.ucred*, %struct.ucred** %8, align 8
  %47 = getelementptr inbounds %struct.ucred, %struct.ucred* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.ucred*, %struct.ucred** %7, align 8
  %53 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %54 = call i32 @change_euid(%struct.ucred* %52, %struct.uidinfo* %53)
  %55 = load %struct.proc*, %struct.proc** %6, align 8
  %56 = call i32 @setsugid(%struct.proc* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = load %struct.ucred*, %struct.ucred** %7, align 8
  %60 = call i32 @proc_set_cred(%struct.proc* %58, %struct.ucred* %59)
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = call i32 @PROC_UNLOCK(%struct.proc* %61)
  %63 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %64 = call i32 @uifree(%struct.uidinfo* %63)
  %65 = load %struct.ucred*, %struct.ucred** %8, align 8
  %66 = call i32 @crfree(%struct.ucred* %65)
  store i32 0, i32* %3, align 4
  br label %75

67:                                               ; preds = %44
  %68 = load %struct.proc*, %struct.proc** %6, align 8
  %69 = call i32 @PROC_UNLOCK(%struct.proc* %68)
  %70 = load %struct.uidinfo*, %struct.uidinfo** %10, align 8
  %71 = call i32 @uifree(%struct.uidinfo* %70)
  %72 = load %struct.ucred*, %struct.ucred** %7, align 8
  %73 = call i32 @crfree(%struct.ucred* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %57
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @AUDIT_ARG_EUID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local %struct.uidinfo* @uifind(i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_euid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

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
