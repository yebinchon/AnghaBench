; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32 }
%struct.kldnext_args = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@kld_sx = common dso_local global i32 0, align 4
@linker_files = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@LINKER_FILE_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kldnext(%struct.thread* %0, %struct.kldnext_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.kldnext_args*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.kldnext_args* %1, %struct.kldnext_args** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @sx_xlock(i32* @kld_sx)
  %8 = load %struct.kldnext_args*, %struct.kldnext_args** %4, align 8
  %9 = getelementptr inbounds %struct.kldnext_args, %struct.kldnext_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* @linker_files)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.kldnext_args*, %struct.kldnext_args** %4, align 8
  %16 = getelementptr inbounds %struct.kldnext_args, %struct.kldnext_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.TYPE_6__* @linker_find_file_by_id(i64 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %6, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %5, align 8
  br label %27

27:                                               ; preds = %23, %12
  br label %28

28:                                               ; preds = %41, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LINKER_FILE_LINKED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i1 [ false, %28 ], [ %38, %31 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load i32, i32* @link, align 4
  %44 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %42, i32 %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %5, align 8
  br label %28

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load %struct.thread*, %struct.thread** %3, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %21
  %63 = call i32 @sx_xunlock(i32* @kld_sx)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.TYPE_6__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_6__* @linker_find_file_by_id(i64) #1

declare dso_local %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
