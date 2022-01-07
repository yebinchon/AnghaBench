; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldfirstmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldfirstmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32 }
%struct.kldfirstmod_args = type { i32 }
%struct.TYPE_3__ = type { i32 }

@kld_sx = common dso_local global i32 0, align 4
@MOD_SLOCK = common dso_local global i32 0, align 4
@MOD_SUNLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kldfirstmod(%struct.thread* %0, %struct.kldfirstmod_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.kldfirstmod_args*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.kldfirstmod_args* %1, %struct.kldfirstmod_args** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @sx_xlock(i32* @kld_sx)
  %9 = load %struct.kldfirstmod_args*, %struct.kldfirstmod_args** %4, align 8
  %10 = getelementptr inbounds %struct.kldfirstmod_args, %struct.kldfirstmod_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_3__* @linker_find_file_by_id(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @MOD_SLOCK, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32* @TAILQ_FIRST(i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @module_getid(i32* %23)
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  br label %34

29:                                               ; preds = %15
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32, i32* @MOD_SUNLOCK, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = call i32 @sx_xunlock(i32* @kld_sx)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.TYPE_3__* @linker_find_file_by_id(i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @module_getid(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
