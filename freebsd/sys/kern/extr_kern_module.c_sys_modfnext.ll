; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_sys_modfnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_sys_modfnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.modfnext_args = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MOD_SLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@flink = common dso_local global i32 0, align 4
@MOD_SUNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_modfnext(%struct.thread* %0, %struct.modfnext_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.modfnext_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.modfnext_args* %1, %struct.modfnext_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* @MOD_SLOCK, align 4
  %12 = load %struct.modfnext_args*, %struct.modfnext_args** %4, align 8
  %13 = getelementptr inbounds %struct.modfnext_args, %struct.modfnext_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @module_lookupbyid(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %6, align 4
  br label %41

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @flink, align 4
  %23 = call %struct.TYPE_2__* @TAILQ_NEXT(i32* %21, i32 %22)
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @flink, align 4
  %28 = call %struct.TYPE_2__* @TAILQ_NEXT(i32* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  br label %40

35:                                               ; preds = %20
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %25
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* @MOD_SUNLOCK, align 4
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32* @module_lookupbyid(i32) #1

declare dso_local %struct.TYPE_2__* @TAILQ_NEXT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
