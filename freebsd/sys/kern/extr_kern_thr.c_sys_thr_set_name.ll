; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_sys_thr_set_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_sys_thr_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.thr_set_name_args = type { i64, i32* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PMC_FN_THR_CREATE_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_thr_set_name(%struct.thread* %0, %struct.thr_set_name_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thr_set_name_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thr_set_name_args* %1, %struct.thr_set_name_args** %5, align 8
  %12 = load i32, i32* @MAXCOMLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 16
  %18 = load %struct.thr_set_name_args*, %struct.thr_set_name_args** %5, align 8
  %19 = getelementptr inbounds %struct.thr_set_name_args, %struct.thr_set_name_args* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.thr_set_name_args*, %struct.thr_set_name_args** %5, align 8
  %24 = getelementptr inbounds %struct.thr_set_name_args, %struct.thr_set_name_args* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = trunc i64 %14 to i32
  %27 = call i32 @copyinstr(i32* %25, i8* %16, i32 %26, i32* null)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ENAMETOOLONG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.thr_set_name_args*, %struct.thr_set_name_args** %5, align 8
  %33 = getelementptr inbounds %struct.thr_set_name_args, %struct.thr_set_name_args* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = sub i64 %14, 1
  %36 = trunc i64 %35 to i32
  %37 = call i32 @copyin(i32* %34, i8* %16, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = sub i64 %14, 1
  %39 = getelementptr inbounds i8, i8* %16, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 1
  %49 = load %struct.proc*, %struct.proc** %48, align 8
  store %struct.proc* %49, %struct.proc** %6, align 8
  %50 = load %struct.thr_set_name_args*, %struct.thr_set_name_args** %5, align 8
  %51 = getelementptr inbounds %struct.thr_set_name_args, %struct.thr_set_name_args* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.thread* @tdfind(i32 %53, i32 %56)
  store %struct.thread* %57, %struct.thread** %9, align 8
  %58 = load %struct.thread*, %struct.thread** %9, align 8
  %59 = icmp eq %struct.thread* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @ESRCH, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

62:                                               ; preds = %46
  %63 = load %struct.thread*, %struct.thread** %9, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strcpy(i32 %65, i8* %16)
  %67 = load %struct.proc*, %struct.proc** %6, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %62, %60, %43
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyinstr(i32*, i8*, i32, i32*) #2

declare dso_local i32 @copyin(i32*, i8*, i32) #2

declare dso_local %struct.thread* @tdfind(i32, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

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
