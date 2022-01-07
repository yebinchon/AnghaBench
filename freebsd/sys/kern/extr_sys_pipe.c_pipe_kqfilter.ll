; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.pipe* }
%struct.pipe = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.knote = type { i32, %struct.pipe*, i32* }

@FREAD = common dso_local global i32 0, align 4
@pipe_nfiltops = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@pipe_rfiltops = common dso_local global i32 0, align 4
@pipe_wfiltops = common dso_local global i32 0, align 4
@PIPE_ACTIVE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.knote*)* @pipe_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.pipe*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %7 = load %struct.knote*, %struct.knote** %5, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 129
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.knote*, %struct.knote** %5, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 2
  store i32* @pipe_nfiltops, i32** %20, align 8
  store i32 0, i32* %3, align 4
  br label %80

21:                                               ; preds = %11, %2
  %22 = load %struct.knote*, %struct.knote** %5, align 8
  %23 = getelementptr inbounds %struct.knote, %struct.knote* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FWRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.knote*, %struct.knote** %5, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 2
  store i32* @pipe_nfiltops, i32** %35, align 8
  store i32 0, i32* %3, align 4
  br label %80

36:                                               ; preds = %26, %21
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = load %struct.pipe*, %struct.pipe** %38, align 8
  store %struct.pipe* %39, %struct.pipe** %6, align 8
  %40 = load %struct.pipe*, %struct.pipe** %6, align 8
  %41 = call i32 @PIPE_LOCK(%struct.pipe* %40)
  %42 = load %struct.knote*, %struct.knote** %5, align 8
  %43 = getelementptr inbounds %struct.knote, %struct.knote* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %65 [
    i32 129, label %45
    i32 128, label %48
  ]

45:                                               ; preds = %36
  %46 = load %struct.knote*, %struct.knote** %5, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 2
  store i32* @pipe_rfiltops, i32** %47, align 8
  br label %69

48:                                               ; preds = %36
  %49 = load %struct.knote*, %struct.knote** %5, align 8
  %50 = getelementptr inbounds %struct.knote, %struct.knote* %49, i32 0, i32 2
  store i32* @pipe_wfiltops, i32** %50, align 8
  %51 = load %struct.pipe*, %struct.pipe** %6, align 8
  %52 = getelementptr inbounds %struct.pipe, %struct.pipe* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PIPE_ACTIVE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.pipe*, %struct.pipe** %6, align 8
  %60 = call i32 @PIPE_UNLOCK(%struct.pipe* %59)
  %61 = load i32, i32* @EPIPE, align 4
  store i32 %61, i32* %3, align 4
  br label %80

62:                                               ; preds = %48
  %63 = load %struct.pipe*, %struct.pipe** %6, align 8
  %64 = call %struct.pipe* @PIPE_PEER(%struct.pipe* %63)
  store %struct.pipe* %64, %struct.pipe** %6, align 8
  br label %69

65:                                               ; preds = %36
  %66 = load %struct.pipe*, %struct.pipe** %6, align 8
  %67 = call i32 @PIPE_UNLOCK(%struct.pipe* %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %3, align 4
  br label %80

69:                                               ; preds = %62, %45
  %70 = load %struct.pipe*, %struct.pipe** %6, align 8
  %71 = load %struct.knote*, %struct.knote** %5, align 8
  %72 = getelementptr inbounds %struct.knote, %struct.knote* %71, i32 0, i32 1
  store %struct.pipe* %70, %struct.pipe** %72, align 8
  %73 = load %struct.pipe*, %struct.pipe** %6, align 8
  %74 = getelementptr inbounds %struct.pipe, %struct.pipe* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.knote*, %struct.knote** %5, align 8
  %77 = call i32 @knlist_add(i32* %75, %struct.knote* %76, i32 1)
  %78 = load %struct.pipe*, %struct.pipe** %6, align 8
  %79 = call i32 @PIPE_UNLOCK(%struct.pipe* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %65, %58, %33, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local %struct.pipe* @PIPE_PEER(%struct.pipe*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
