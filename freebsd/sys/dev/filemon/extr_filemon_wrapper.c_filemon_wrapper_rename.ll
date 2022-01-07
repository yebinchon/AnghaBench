; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c_filemon_wrapper_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.rename_args = type { i32, i32 }
%struct.filemon = type { i32, i32, i32 }

@curproc = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"M %d '%s' '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.rename_args*)* @filemon_wrapper_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filemon_wrapper_rename(%struct.thread* %0, %struct.rename_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.rename_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.filemon*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.rename_args* %1, %struct.rename_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.rename_args*, %struct.rename_args** %4, align 8
  %10 = call i32 @sys_rename(%struct.thread* %8, %struct.rename_args* %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %14 = call %struct.filemon* @filemon_proc_get(%struct.TYPE_3__* %13)
  store %struct.filemon* %14, %struct.filemon** %7, align 8
  %15 = icmp ne %struct.filemon* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.rename_args*, %struct.rename_args** %4, align 8
  %18 = getelementptr inbounds %struct.rename_args, %struct.rename_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.filemon*, %struct.filemon** %7, align 8
  %21 = getelementptr inbounds %struct.filemon, %struct.filemon* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyinstr(i32 %19, i32 %22, i32 4, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load %struct.rename_args*, %struct.rename_args** %4, align 8
  %27 = getelementptr inbounds %struct.rename_args, %struct.rename_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.filemon*, %struct.filemon** %7, align 8
  %30 = getelementptr inbounds %struct.filemon, %struct.filemon* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @copyinstr(i32 %28, i32 %31, i32 4, i32* null)
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.filemon*, %struct.filemon** %7, align 8
  %37 = getelementptr inbounds %struct.filemon, %struct.filemon* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %50

38:                                               ; preds = %25
  %39 = load %struct.filemon*, %struct.filemon** %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.filemon*, %struct.filemon** %7, align 8
  %44 = getelementptr inbounds %struct.filemon, %struct.filemon* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.filemon*, %struct.filemon** %7, align 8
  %47 = getelementptr inbounds %struct.filemon, %struct.filemon* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @filemon_output_event(%struct.filemon* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %34
  %51 = load %struct.filemon*, %struct.filemon** %7, align 8
  %52 = call i32 @filemon_drop(%struct.filemon* %51)
  br label %53

53:                                               ; preds = %50, %12
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @sys_rename(%struct.thread*, %struct.rename_args*) #1

declare dso_local %struct.filemon* @filemon_proc_get(%struct.TYPE_3__*) #1

declare dso_local i32 @copyinstr(i32, i32, i32, i32*) #1

declare dso_local i32 @filemon_output_event(%struct.filemon*, i8*, i32, i32, i32) #1

declare dso_local i32 @filemon_drop(%struct.filemon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
