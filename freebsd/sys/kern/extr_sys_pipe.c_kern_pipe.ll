; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_kern_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_kern_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.filecaps = type { i32 }
%struct.file = type { i32 }
%struct.pipe = type { i32 }
%struct.pipepair = type { %struct.pipe, %struct.pipe }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@DTYPE_PIPE = common dso_local global i32 0, align 4
@pipeops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_pipe(%struct.thread* %0, i32* %1, i32 %2, %struct.filecaps* %3, %struct.filecaps* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.filecaps*, align 8
  %11 = alloca %struct.filecaps*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.pipe*, align 8
  %15 = alloca %struct.pipe*, align 8
  %16 = alloca %struct.pipepair*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.filecaps* %3, %struct.filecaps** %10, align 8
  store %struct.filecaps* %4, %struct.filecaps** %11, align 8
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = call i32 @pipe_paircreate(%struct.thread* %20, %struct.pipepair** %16)
  %22 = load %struct.pipepair*, %struct.pipepair** %16, align 8
  %23 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %22, i32 0, i32 1
  store %struct.pipe* %23, %struct.pipe** %14, align 8
  %24 = load %struct.pipepair*, %struct.pipepair** %16, align 8
  %25 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %24, i32 0, i32 0
  store %struct.pipe* %25, %struct.pipe** %15, align 8
  %26 = load %struct.thread*, %struct.thread** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.filecaps*, %struct.filecaps** %10, align 8
  %29 = call i32 @falloc_caps(%struct.thread* %26, %struct.file** %12, i32* %17, i32 %27, %struct.filecaps* %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.pipe*, %struct.pipe** %14, align 8
  %34 = call i32 @pipeclose(%struct.pipe* %33)
  %35 = load %struct.pipe*, %struct.pipe** %15, align 8
  %36 = call i32 @pipeclose(%struct.pipe* %35)
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %6, align 4
  br label %93

38:                                               ; preds = %5
  %39 = load i32, i32* %17, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @FREAD, align 4
  %43 = load i32, i32* @FWRITE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @FNONBLOCK, align 4
  %51 = load i32, i32* %18, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %49, %38
  %54 = load %struct.file*, %struct.file** %12, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @DTYPE_PIPE, align 4
  %57 = load %struct.pipe*, %struct.pipe** %14, align 8
  %58 = call i32 @finit(%struct.file* %54, i32 %55, i32 %56, %struct.pipe* %57, i32* @pipeops)
  %59 = load %struct.thread*, %struct.thread** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.filecaps*, %struct.filecaps** %11, align 8
  %62 = call i32 @falloc_caps(%struct.thread* %59, %struct.file** %13, i32* %17, i32 %60, %struct.filecaps* %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %53
  %66 = load %struct.thread*, %struct.thread** %7, align 8
  %67 = load %struct.file*, %struct.file** %12, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fdclose(%struct.thread* %66, %struct.file* %67, i32 %70)
  %72 = load %struct.file*, %struct.file** %12, align 8
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = call i32 @fdrop(%struct.file* %72, %struct.thread* %73)
  %75 = load %struct.pipe*, %struct.pipe** %15, align 8
  %76 = call i32 @pipeclose(%struct.pipe* %75)
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %6, align 4
  br label %93

78:                                               ; preds = %53
  %79 = load %struct.file*, %struct.file** %13, align 8
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @DTYPE_PIPE, align 4
  %82 = load %struct.pipe*, %struct.pipe** %15, align 8
  %83 = call i32 @finit(%struct.file* %79, i32 %80, i32 %81, %struct.pipe* %82, i32* @pipeops)
  %84 = load %struct.file*, %struct.file** %13, align 8
  %85 = load %struct.thread*, %struct.thread** %7, align 8
  %86 = call i32 @fdrop(%struct.file* %84, %struct.thread* %85)
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.file*, %struct.file** %12, align 8
  %91 = load %struct.thread*, %struct.thread** %7, align 8
  %92 = call i32 @fdrop(%struct.file* %90, %struct.thread* %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %78, %65, %32
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @pipe_paircreate(%struct.thread*, %struct.pipepair**) #1

declare dso_local i32 @falloc_caps(%struct.thread*, %struct.file**, i32*, i32, %struct.filecaps*) #1

declare dso_local i32 @pipeclose(%struct.pipe*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.pipe*, i32*) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
