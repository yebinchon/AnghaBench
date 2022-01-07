; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* }
%struct.file = type { %struct.TYPE_7__*, %struct.pipe* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pipe = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.stat = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PIPE_NAMED = common dso_local global i32 0, align 4
@vnops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@S_IFIFO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@pipedev_ino = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @pipe_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.pipe*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.pipe*, %struct.pipe** %12, align 8
  store %struct.pipe* %13, %struct.pipe** %10, align 8
  %14 = load %struct.pipe*, %struct.pipe** %10, align 8
  %15 = call i32 @PIPE_LOCK(%struct.pipe* %14)
  %16 = load %struct.pipe*, %struct.pipe** %10, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PIPE_NAMED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.pipe*, %struct.pipe** %10, align 8
  %24 = call i32 @PIPE_UNLOCK(%struct.pipe* %23)
  %25 = load i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)*, i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vnops, i32 0, i32 0), align 8
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load %struct.stat*, %struct.stat** %7, align 8
  %28 = load %struct.ucred*, %struct.ucred** %8, align 8
  %29 = load %struct.thread*, %struct.thread** %9, align 8
  %30 = call i32 %25(%struct.file* %26, %struct.stat* %27, %struct.ucred* %28, %struct.thread* %29)
  store i32 %30, i32* %5, align 4
  br label %108

31:                                               ; preds = %4
  %32 = load %struct.pipe*, %struct.pipe** %10, align 8
  %33 = call i32 @PIPE_UNLOCK(%struct.pipe* %32)
  %34 = load %struct.stat*, %struct.stat** %7, align 8
  %35 = call i32 @bzero(%struct.stat* %34, i32 48)
  %36 = load i32, i32* @S_IFIFO, align 4
  %37 = load %struct.stat*, %struct.stat** %7, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.stat*, %struct.stat** %7, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pipe*, %struct.pipe** %10, align 8
  %43 = getelementptr inbounds %struct.pipe, %struct.pipe* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %31
  %48 = load %struct.pipe*, %struct.pipe** %10, align 8
  %49 = getelementptr inbounds %struct.pipe, %struct.pipe* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stat*, %struct.stat** %7, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %61

54:                                               ; preds = %31
  %55 = load %struct.pipe*, %struct.pipe** %10, align 8
  %56 = getelementptr inbounds %struct.pipe, %struct.pipe* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.stat*, %struct.stat** %7, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.stat*, %struct.stat** %7, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.stat*, %struct.stat** %7, align 8
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @howmany(i64 %64, i32 %67)
  %69 = load %struct.stat*, %struct.stat** %7, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pipe*, %struct.pipe** %10, align 8
  %72 = getelementptr inbounds %struct.pipe, %struct.pipe* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.stat*, %struct.stat** %7, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.pipe*, %struct.pipe** %10, align 8
  %77 = getelementptr inbounds %struct.pipe, %struct.pipe* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stat*, %struct.stat** %7, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.pipe*, %struct.pipe** %10, align 8
  %82 = getelementptr inbounds %struct.pipe, %struct.pipe* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.stat*, %struct.stat** %7, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.file*, %struct.file** %6, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stat*, %struct.stat** %7, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.file*, %struct.file** %6, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.stat*, %struct.stat** %7, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @pipedev_ino, align 4
  %101 = load %struct.stat*, %struct.stat** %7, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.pipe*, %struct.pipe** %10, align 8
  %104 = getelementptr inbounds %struct.pipe, %struct.pipe* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.stat*, %struct.stat** %7, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %61, %22
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @bzero(%struct.stat*, i32) #1

declare dso_local i32 @howmany(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
