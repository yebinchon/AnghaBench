; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.procdesc = type { %struct.proc* }
%struct.file = type { i64, %struct.procdesc* }

@DTYPE_PROCDESC = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procdesc_find(%struct.thread* %0, i32 %1, i32* %2, %struct.proc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.proc**, align 8
  %10 = alloca %struct.procdesc*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.proc** %3, %struct.proc*** %9, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @fget(%struct.thread* %13, i32 %14, i32* %15, %struct.file** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %11, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DTYPE_PROCDESC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EBADF, align 4
  store i32 %28, i32* %12, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load %struct.file*, %struct.file** %11, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = load %struct.procdesc*, %struct.procdesc** %31, align 8
  store %struct.procdesc* %32, %struct.procdesc** %10, align 8
  %33 = call i32 @sx_slock(i32* @proctree_lock)
  %34 = load %struct.procdesc*, %struct.procdesc** %10, align 8
  %35 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %34, i32 0, i32 0
  %36 = load %struct.proc*, %struct.proc** %35, align 8
  %37 = icmp ne %struct.proc* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.procdesc*, %struct.procdesc** %10, align 8
  %40 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %39, i32 0, i32 0
  %41 = load %struct.proc*, %struct.proc** %40, align 8
  %42 = load %struct.proc**, %struct.proc*** %9, align 8
  store %struct.proc* %41, %struct.proc** %42, align 8
  %43 = load %struct.proc**, %struct.proc*** %9, align 8
  %44 = load %struct.proc*, %struct.proc** %43, align 8
  %45 = call i32 @PROC_LOCK(%struct.proc* %44)
  br label %48

46:                                               ; preds = %29
  %47 = load i32, i32* @ESRCH, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = call i32 @sx_sunlock(i32* @proctree_lock)
  br label %50

50:                                               ; preds = %48, %27
  %51 = load %struct.file*, %struct.file** %11, align 8
  %52 = load %struct.thread*, %struct.thread** %6, align 8
  %53 = call i32 @fdrop(%struct.file* %51, %struct.thread* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
