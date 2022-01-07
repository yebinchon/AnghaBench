; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setlogin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setlogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.setlogin_args = type { i32 }

@MAXLOGNAME = common dso_local global i32 0, align 4
@PRIV_PROC_SETLOGIN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setlogin(%struct.thread* %0, %struct.setlogin_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setlogin_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setlogin_args* %1, %struct.setlogin_args** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %6, align 8
  %14 = load i32, i32* @MAXLOGNAME, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = icmp uge i64 4, %15
  %19 = zext i1 %18 to i32
  %20 = call i32 @CTASSERT(i32 %19)
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load i32, i32* @PRIV_PROC_SETLOGIN, align 4
  %23 = call i32 @priv_check(%struct.thread* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.setlogin_args*, %struct.setlogin_args** %5, align 8
  %30 = getelementptr inbounds %struct.setlogin_args, %struct.setlogin_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i64 %15 to i32
  %33 = call i32 @copyinstr(i32 %31, i8* %17, i32 %32, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ENAMETOOLONG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

44:                                               ; preds = %28
  %45 = call i32 @AUDIT_ARG_LOGIN(i8* %17)
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = call i32 @PROC_LOCK(%struct.proc* %46)
  %48 = load %struct.proc*, %struct.proc** %6, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @SESS_LOCK(%struct.TYPE_3__* %50)
  %52 = load %struct.proc*, %struct.proc** %6, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcpy(i32 %56, i8* %17)
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i32 @SESS_UNLOCK(%struct.TYPE_3__* %60)
  %62 = load %struct.proc*, %struct.proc** %6, align 8
  %63 = call i32 @PROC_UNLOCK(%struct.proc* %62)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %44, %42, %26
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CTASSERT(i32) #2

declare dso_local i32 @priv_check(%struct.thread*, i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i32 @AUDIT_ARG_LOGIN(i8*) #2

declare dso_local i32 @PROC_LOCK(%struct.proc*) #2

declare dso_local i32 @SESS_LOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @SESS_UNLOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
