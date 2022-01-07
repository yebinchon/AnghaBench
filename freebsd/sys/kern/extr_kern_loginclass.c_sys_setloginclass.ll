; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_sys_setloginclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_sys_setloginclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.setloginclass_args = type { i32 }
%struct.loginclass = type { i32 }
%struct.ucred = type { %struct.loginclass* }

@MAXLOGNAME = common dso_local global i32 0, align 4
@PRIV_PROC_SETLOGINCLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setloginclass(%struct.thread* %0, %struct.setloginclass_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setloginclass_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.loginclass*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setloginclass_args* %1, %struct.setloginclass_args** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %6, align 8
  %17 = load i32, i32* @MAXLOGNAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load i32, i32* @PRIV_PROC_SETLOGINCLASS, align 4
  %23 = call i32 @priv_check(%struct.thread* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.setloginclass_args*, %struct.setloginclass_args** %5, align 8
  %30 = getelementptr inbounds %struct.setloginclass_args, %struct.setloginclass_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i64 %18 to i32
  %33 = call i32 @copyinstr(i32 %31, i8* %20, i32 %32, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

38:                                               ; preds = %28
  %39 = call %struct.loginclass* @loginclass_find(i8* %20)
  store %struct.loginclass* %39, %struct.loginclass** %10, align 8
  %40 = load %struct.loginclass*, %struct.loginclass** %10, align 8
  %41 = icmp eq %struct.loginclass* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

44:                                               ; preds = %38
  %45 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %45, %struct.ucred** %11, align 8
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = call i32 @PROC_LOCK(%struct.proc* %46)
  %48 = load %struct.proc*, %struct.proc** %6, align 8
  %49 = load %struct.ucred*, %struct.ucred** %11, align 8
  %50 = call %struct.ucred* @crcopysafe(%struct.proc* %48, %struct.ucred* %49)
  store %struct.ucred* %50, %struct.ucred** %12, align 8
  %51 = load %struct.loginclass*, %struct.loginclass** %10, align 8
  %52 = load %struct.ucred*, %struct.ucred** %11, align 8
  %53 = getelementptr inbounds %struct.ucred, %struct.ucred* %52, i32 0, i32 0
  store %struct.loginclass* %51, %struct.loginclass** %53, align 8
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = load %struct.ucred*, %struct.ucred** %11, align 8
  %56 = call i32 @proc_set_cred(%struct.proc* %54, %struct.ucred* %55)
  %57 = load %struct.proc*, %struct.proc** %6, align 8
  %58 = call i32 @PROC_UNLOCK(%struct.proc* %57)
  %59 = load %struct.ucred*, %struct.ucred** %12, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 0
  %61 = load %struct.loginclass*, %struct.loginclass** %60, align 8
  %62 = call i32 @loginclass_free(%struct.loginclass* %61)
  %63 = load %struct.ucred*, %struct.ucred** %12, align 8
  %64 = call i32 @crfree(%struct.ucred* %63)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %44, %42, %36, %26
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local %struct.loginclass* @loginclass_find(i8*) #2

declare dso_local %struct.ucred* @crget(...) #2

declare dso_local i32 @PROC_LOCK(%struct.proc*) #2

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #2

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #2

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #2

declare dso_local i32 @loginclass_free(%struct.loginclass*) #2

declare dso_local i32 @crfree(%struct.ucred*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
