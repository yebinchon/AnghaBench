; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setgid_args = type { i64 }
%struct.ucred = type { i64, i64, i64* }

@PRIV_CRED_SETGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setgid(%struct.thread* %0, %struct.setgid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setgid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setgid_args* %1, %struct.setgid_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %6, align 8
  %14 = load %struct.setgid_args*, %struct.setgid_args** %5, align 8
  %15 = getelementptr inbounds %struct.setgid_args, %struct.setgid_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @AUDIT_ARG_GID(i64 %17)
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
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.ucred*, %struct.ucred** %8, align 8
  %32 = load i32, i32* @PRIV_CRED_SETGID, align 4
  %33 = call i32 @priv_check_cred(%struct.ucred* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %82

36:                                               ; preds = %30, %2
  %37 = load %struct.ucred*, %struct.ucred** %8, align 8
  %38 = getelementptr inbounds %struct.ucred, %struct.ucred* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.ucred*, %struct.ucred** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @change_rgid(%struct.ucred* %43, i64 %44)
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = call i32 @setsugid(%struct.proc* %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.ucred*, %struct.ucred** %8, align 8
  %50 = getelementptr inbounds %struct.ucred, %struct.ucred* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.ucred*, %struct.ucred** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @change_svgid(%struct.ucred* %55, i64 %56)
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = call i32 @setsugid(%struct.proc* %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.ucred*, %struct.ucred** %8, align 8
  %62 = getelementptr inbounds %struct.ucred, %struct.ucred* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.ucred*, %struct.ucred** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @change_egid(%struct.ucred* %69, i64 %70)
  %72 = load %struct.proc*, %struct.proc** %6, align 8
  %73 = call i32 @setsugid(%struct.proc* %72)
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.proc*, %struct.proc** %6, align 8
  %76 = load %struct.ucred*, %struct.ucred** %7, align 8
  %77 = call i32 @proc_set_cred(%struct.proc* %75, %struct.ucred* %76)
  %78 = load %struct.proc*, %struct.proc** %6, align 8
  %79 = call i32 @PROC_UNLOCK(%struct.proc* %78)
  %80 = load %struct.ucred*, %struct.ucred** %8, align 8
  %81 = call i32 @crfree(%struct.ucred* %80)
  store i32 0, i32* %3, align 4
  br label %88

82:                                               ; preds = %35
  %83 = load %struct.proc*, %struct.proc** %6, align 8
  %84 = call i32 @PROC_UNLOCK(%struct.proc* %83)
  %85 = load %struct.ucred*, %struct.ucred** %7, align 8
  %86 = call i32 @crfree(%struct.ucred* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @AUDIT_ARG_GID(i64) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @change_rgid(%struct.ucred*, i64) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @change_svgid(%struct.ucred*, i64) #1

declare dso_local i32 @change_egid(%struct.ucred*, i64) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
