; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"process lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@MTX_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"process slock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pstatl\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pitiml\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pprofl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ppwait\00", align 1
@process_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.proc*
  store %struct.proc* %9, %struct.proc** %7, align 8
  %10 = load %struct.proc*, %struct.proc** %7, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 8
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = load i32, i32* @MTX_DUPOK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MTX_NEW, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 7
  %20 = load i32, i32* @MTX_SPIN, align 4
  %21 = load i32, i32* @MTX_NEW, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mtx_init(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.proc*, %struct.proc** %7, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 6
  %26 = load i32, i32* @MTX_SPIN, align 4
  %27 = load i32, i32* @MTX_NEW, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mtx_init(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %28)
  %30 = load %struct.proc*, %struct.proc** %7, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 5
  %32 = load i32, i32* @MTX_SPIN, align 4
  %33 = load i32, i32* @MTX_NEW, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mtx_init(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %34)
  %36 = load %struct.proc*, %struct.proc** %7, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 4
  %38 = load i32, i32* @MTX_SPIN, align 4
  %39 = load i32, i32* @MTX_NEW, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @mtx_init(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %40)
  %42 = load %struct.proc*, %struct.proc** %7, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 3
  %44 = call i32 @cv_init(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.proc*, %struct.proc** %7, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 2
  %47 = call i32 @TAILQ_INIT(i32* %46)
  %48 = load i32, i32* @process_init, align 4
  %49 = load %struct.proc*, %struct.proc** %7, align 8
  %50 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %48, %struct.proc* %49)
  %51 = call i32 (...) @pstats_alloc()
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.proc*, %struct.proc** %7, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  ret i32 0
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32, %struct.proc*) #1

declare dso_local i32 @pstats_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
