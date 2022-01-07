; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rufetchtd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rufetchtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.rusage, i32, i32, %struct.proc* }
%struct.rusage = type { i32, i32 }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@switchtime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rufetchtd(%struct.thread* %0, %struct.rusage* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.rusage*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.rusage* %1, %struct.rusage** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 4
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %5, align 8
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PROC_STATLOCK_ASSERT(%struct.proc* %11, i32 %12)
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %14, i32 %15)
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  %19 = icmp eq %struct.thread* %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = call i64 (...) @cpu_ticks()
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @switchtime, align 4
  %24 = call i64 @PCPU_GET(i32 %23)
  %25 = sub nsw i64 %22, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load i32, i32* @switchtime, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @PCPU_SET(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %20, %2
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = load %struct.thread*, %struct.thread** %3, align 8
  %46 = call i32 @ruxagg(%struct.proc* %44, %struct.thread* %45)
  %47 = load %struct.rusage*, %struct.rusage** %4, align 8
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = bitcast %struct.rusage* %47 to i8*
  %51 = bitcast %struct.rusage* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load %struct.proc*, %struct.proc** %5, align 8
  %53 = load %struct.thread*, %struct.thread** %3, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load %struct.rusage*, %struct.rusage** %4, align 8
  %56 = getelementptr inbounds %struct.rusage, %struct.rusage* %55, i32 0, i32 1
  %57 = load %struct.rusage*, %struct.rusage** %4, align 8
  %58 = getelementptr inbounds %struct.rusage, %struct.rusage* %57, i32 0, i32 0
  %59 = call i32 @calcru1(%struct.proc* %52, i32* %54, i32* %56, i32* %58)
  ret void
}

declare dso_local i32 @PROC_STATLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i64 @cpu_ticks(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, i64) #1

declare dso_local i32 @ruxagg(%struct.proc*, %struct.thread*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @calcru1(%struct.proc*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
