; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_sys_modnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_sys_modnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.modnext_args = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MOD_SLOCK = common dso_local global i32 0, align 4
@modules = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@MOD_SUNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_modnext(%struct.thread* %0, %struct.modnext_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.modnext_args*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.modnext_args* %1, %struct.modnext_args** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* @MOD_SLOCK, align 4
  %12 = load %struct.modnext_args*, %struct.modnext_args** %4, align 8
  %13 = getelementptr inbounds %struct.modnext_args, %struct.modnext_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* @modules)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %20
  br label %61

31:                                               ; preds = %2
  %32 = load %struct.modnext_args*, %struct.modnext_args** %4, align 8
  %33 = getelementptr inbounds %struct.modnext_args, %struct.modnext_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.TYPE_6__* @module_lookupbyid(i64 %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %6, align 4
  br label %61

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32, i32* @link, align 4
  %43 = call %struct.TYPE_7__* @TAILQ_NEXT(%struct.TYPE_6__* %41, i32 %42)
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = load i32, i32* @link, align 4
  %48 = call %struct.TYPE_7__* @TAILQ_NEXT(%struct.TYPE_6__* %46, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.thread*, %struct.thread** %3, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  br label %60

55:                                               ; preds = %40
  %56 = load %struct.thread*, %struct.thread** %3, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %60, %38, %30
  %62 = load i32, i32* @MOD_SUNLOCK, align 4
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_6__* @module_lookupbyid(i64) #1

declare dso_local %struct.TYPE_7__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
