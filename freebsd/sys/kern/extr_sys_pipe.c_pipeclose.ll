; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipeclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipeclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i64, %struct.pipepair*, %struct.TYPE_2__, i32, %struct.pipe*, i64 }
%struct.pipepair = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pipeclose: cpipe == NULL\00", align 1
@PIPE_EOF = common dso_local global i32 0, align 4
@PIPE_WANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pipecl\00", align 1
@PIPE_ACTIVE = common dso_local global i64 0, align 8
@PIPE_CLOSING = common dso_local global i64 0, align 8
@PIPE_FINALIZED = common dso_local global i64 0, align 8
@pipe_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*)* @pipeclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipeclose(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  %3 = alloca %struct.pipepair*, align 8
  %4 = alloca %struct.pipe*, align 8
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %5 = load %struct.pipe*, %struct.pipe** %2, align 8
  %6 = icmp ne %struct.pipe* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.pipe*, %struct.pipe** %2, align 8
  %10 = call i32 @PIPE_LOCK(%struct.pipe* %9)
  %11 = load %struct.pipe*, %struct.pipe** %2, align 8
  %12 = call i32 @pipelock(%struct.pipe* %11, i32 0)
  %13 = load %struct.pipe*, %struct.pipe** %2, align 8
  %14 = getelementptr inbounds %struct.pipe, %struct.pipe* %13, i32 0, i32 1
  %15 = load %struct.pipepair*, %struct.pipepair** %14, align 8
  store %struct.pipepair* %15, %struct.pipepair** %3, align 8
  %16 = load %struct.pipe*, %struct.pipe** %2, align 8
  %17 = call i32 @pipeselwakeup(%struct.pipe* %16)
  %18 = load i32, i32* @PIPE_EOF, align 4
  %19 = load %struct.pipe*, %struct.pipe** %2, align 8
  %20 = getelementptr inbounds %struct.pipe, %struct.pipe* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %28, %1
  %24 = load %struct.pipe*, %struct.pipe** %2, align 8
  %25 = getelementptr inbounds %struct.pipe, %struct.pipe* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.pipe*, %struct.pipe** %2, align 8
  %30 = call i32 @wakeup(%struct.pipe* %29)
  %31 = load i32, i32* @PIPE_WANT, align 4
  %32 = load %struct.pipe*, %struct.pipe** %2, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.pipe*, %struct.pipe** %2, align 8
  %37 = call i32 @pipeunlock(%struct.pipe* %36)
  %38 = load %struct.pipe*, %struct.pipe** %2, align 8
  %39 = load %struct.pipe*, %struct.pipe** %2, align 8
  %40 = call i32 @PIPE_MTX(%struct.pipe* %39)
  %41 = load i32, i32* @PRIBIO, align 4
  %42 = call i32 @msleep(%struct.pipe* %38, i32 %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %43 = load %struct.pipe*, %struct.pipe** %2, align 8
  %44 = call i32 @pipelock(%struct.pipe* %43, i32 0)
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.pipe*, %struct.pipe** %2, align 8
  %47 = getelementptr inbounds %struct.pipe, %struct.pipe* %46, i32 0, i32 4
  %48 = load %struct.pipe*, %struct.pipe** %47, align 8
  store %struct.pipe* %48, %struct.pipe** %4, align 8
  %49 = load %struct.pipe*, %struct.pipe** %4, align 8
  %50 = getelementptr inbounds %struct.pipe, %struct.pipe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PIPE_ACTIVE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %45
  %55 = load %struct.pipe*, %struct.pipe** %4, align 8
  %56 = call i32 @pipeselwakeup(%struct.pipe* %55)
  %57 = load i32, i32* @PIPE_EOF, align 4
  %58 = load %struct.pipe*, %struct.pipe** %4, align 8
  %59 = getelementptr inbounds %struct.pipe, %struct.pipe* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.pipe*, %struct.pipe** %4, align 8
  %63 = call i32 @wakeup(%struct.pipe* %62)
  %64 = load %struct.pipe*, %struct.pipe** %4, align 8
  %65 = getelementptr inbounds %struct.pipe, %struct.pipe* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @KNOTE_LOCKED(i32* %66, i32 0)
  br label %68

68:                                               ; preds = %54, %45
  %69 = load %struct.pipe*, %struct.pipe** %2, align 8
  %70 = call i32 @PIPE_UNLOCK(%struct.pipe* %69)
  %71 = load %struct.pipe*, %struct.pipe** %2, align 8
  %72 = call i32 @pipe_free_kmem(%struct.pipe* %71)
  %73 = load %struct.pipe*, %struct.pipe** %2, align 8
  %74 = call i32 @PIPE_LOCK(%struct.pipe* %73)
  %75 = load i64, i64* @PIPE_CLOSING, align 8
  %76 = load %struct.pipe*, %struct.pipe** %2, align 8
  %77 = getelementptr inbounds %struct.pipe, %struct.pipe* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.pipe*, %struct.pipe** %2, align 8
  %79 = call i32 @pipeunlock(%struct.pipe* %78)
  %80 = load %struct.pipe*, %struct.pipe** %2, align 8
  %81 = getelementptr inbounds %struct.pipe, %struct.pipe* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @knlist_clear(i32* %82, i32 1)
  %84 = load i64, i64* @PIPE_FINALIZED, align 8
  %85 = load %struct.pipe*, %struct.pipe** %2, align 8
  %86 = getelementptr inbounds %struct.pipe, %struct.pipe* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.pipe*, %struct.pipe** %2, align 8
  %88 = getelementptr inbounds %struct.pipe, %struct.pipe* %87, i32 0, i32 2
  %89 = call i32 @seldrain(%struct.TYPE_2__* %88)
  %90 = load %struct.pipe*, %struct.pipe** %2, align 8
  %91 = getelementptr inbounds %struct.pipe, %struct.pipe* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @knlist_destroy(i32* %92)
  %94 = load %struct.pipe*, %struct.pipe** %4, align 8
  %95 = getelementptr inbounds %struct.pipe, %struct.pipe* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PIPE_FINALIZED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %68
  %100 = load %struct.pipe*, %struct.pipe** %2, align 8
  %101 = call i32 @PIPE_UNLOCK(%struct.pipe* %100)
  %102 = load i32, i32* @pipe_zone, align 4
  %103 = load %struct.pipe*, %struct.pipe** %2, align 8
  %104 = getelementptr inbounds %struct.pipe, %struct.pipe* %103, i32 0, i32 1
  %105 = load %struct.pipepair*, %struct.pipepair** %104, align 8
  %106 = call i32 @uma_zfree(i32 %102, %struct.pipepair* %105)
  br label %110

107:                                              ; preds = %68
  %108 = load %struct.pipe*, %struct.pipe** %2, align 8
  %109 = call i32 @PIPE_UNLOCK(%struct.pipe* %108)
  br label %110

110:                                              ; preds = %107, %99
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @pipelock(%struct.pipe*, i32) #1

declare dso_local i32 @pipeselwakeup(%struct.pipe*) #1

declare dso_local i32 @wakeup(%struct.pipe*) #1

declare dso_local i32 @pipeunlock(%struct.pipe*) #1

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @pipe_free_kmem(%struct.pipe*) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.pipepair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
