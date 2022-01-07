; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.unlink_args = type { i32 }
%struct.filemon = type { i32, i32 }

@curproc = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"D %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.unlink_args*)* @filemon_wrapper_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filemon_wrapper_unlink(%struct.thread* %0, %struct.unlink_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.unlink_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.filemon*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.unlink_args* %1, %struct.unlink_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.unlink_args*, %struct.unlink_args** %4, align 8
  %10 = call i32 @sys_unlink(%struct.thread* %8, %struct.unlink_args* %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %14 = call %struct.filemon* @filemon_proc_get(%struct.TYPE_3__* %13)
  store %struct.filemon* %14, %struct.filemon** %7, align 8
  %15 = icmp ne %struct.filemon* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.unlink_args*, %struct.unlink_args** %4, align 8
  %18 = getelementptr inbounds %struct.unlink_args, %struct.unlink_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.filemon*, %struct.filemon** %7, align 8
  %21 = getelementptr inbounds %struct.filemon, %struct.filemon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyinstr(i32 %19, i32 %22, i32 4, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.filemon*, %struct.filemon** %7, align 8
  %28 = getelementptr inbounds %struct.filemon, %struct.filemon* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.filemon*, %struct.filemon** %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.filemon*, %struct.filemon** %7, align 8
  %35 = getelementptr inbounds %struct.filemon, %struct.filemon* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @filemon_output_event(%struct.filemon* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  %39 = load %struct.filemon*, %struct.filemon** %7, align 8
  %40 = call i32 @filemon_drop(%struct.filemon* %39)
  br label %41

41:                                               ; preds = %38, %12
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @sys_unlink(%struct.thread*, %struct.unlink_args*) #1

declare dso_local %struct.filemon* @filemon_proc_get(%struct.TYPE_3__*) #1

declare dso_local i32 @copyinstr(i32, i32, i32, i32*) #1

declare dso_local i32 @filemon_output_event(%struct.filemon*, i8*, i32, i32) #1

declare dso_local i32 @filemon_drop(%struct.filemon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
