; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getlogin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getlogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.getlogin_args = type { i32, i32 }

@MAXLOGNAME = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getlogin(%struct.thread* %0, %struct.getlogin_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.getlogin_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.getlogin_args* %1, %struct.getlogin_args** %5, align 8
  %11 = load i32, i32* @MAXLOGNAME, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %8, align 8
  %18 = load %struct.getlogin_args*, %struct.getlogin_args** %5, align 8
  %19 = getelementptr inbounds %struct.getlogin_args, %struct.getlogin_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAXLOGNAME, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @MAXLOGNAME, align 4
  %25 = load %struct.getlogin_args*, %struct.getlogin_args** %5, align 8
  %26 = getelementptr inbounds %struct.getlogin_args, %struct.getlogin_args* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.proc*, %struct.proc** %8, align 8
  %29 = call i32 @PROC_LOCK(%struct.proc* %28)
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @SESS_LOCK(%struct.TYPE_3__* %32)
  %34 = load %struct.proc*, %struct.proc** %8, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.getlogin_args*, %struct.getlogin_args** %5, align 8
  %40 = getelementptr inbounds %struct.getlogin_args, %struct.getlogin_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlcpy(i8* %14, i32 %38, i32 %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load %struct.proc*, %struct.proc** %8, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @SESS_UNLOCK(%struct.TYPE_3__* %47)
  %49 = load %struct.proc*, %struct.proc** %8, align 8
  %50 = call i32 @PROC_UNLOCK(%struct.proc* %49)
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.getlogin_args*, %struct.getlogin_args** %5, align 8
  %53 = getelementptr inbounds %struct.getlogin_args, %struct.getlogin_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %27
  %58 = load i32, i32* @ERANGE, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

59:                                               ; preds = %27
  %60 = load %struct.getlogin_args*, %struct.getlogin_args** %5, align 8
  %61 = getelementptr inbounds %struct.getlogin_args, %struct.getlogin_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @copyout(i8* %14, i32 %62, i64 %63)
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #2

declare dso_local i32 @SESS_LOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @SESS_UNLOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #2

declare dso_local i32 @copyout(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
