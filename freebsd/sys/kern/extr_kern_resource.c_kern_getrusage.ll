; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_kern_getrusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_kern_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rusage }
%struct.rusage = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_getrusage(%struct.thread* %0, i32 %1, %struct.rusage* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rusage*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rusage* %2, %struct.rusage** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %7, align 8
  %12 = load %struct.proc*, %struct.proc** %7, align 8
  %13 = call i32 @PROC_LOCK(%struct.proc* %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %49 [
    i32 129, label %15
    i32 130, label %23
    i32 128, label %37
  ]

15:                                               ; preds = %3
  %16 = load %struct.proc*, %struct.proc** %7, align 8
  %17 = load %struct.rusage*, %struct.rusage** %6, align 8
  %18 = load %struct.rusage*, %struct.rusage** %6, align 8
  %19 = getelementptr inbounds %struct.rusage, %struct.rusage* %18, i32 0, i32 1
  %20 = load %struct.rusage*, %struct.rusage** %6, align 8
  %21 = getelementptr inbounds %struct.rusage, %struct.rusage* %20, i32 0, i32 0
  %22 = call i32 @rufetchcalc(%struct.proc* %16, %struct.rusage* %17, i32* %19, i32* %21)
  br label %51

23:                                               ; preds = %3
  %24 = load %struct.rusage*, %struct.rusage** %6, align 8
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast %struct.rusage* %24 to i8*
  %30 = bitcast %struct.rusage* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 8, i1 false)
  %31 = load %struct.proc*, %struct.proc** %7, align 8
  %32 = load %struct.rusage*, %struct.rusage** %6, align 8
  %33 = getelementptr inbounds %struct.rusage, %struct.rusage* %32, i32 0, i32 1
  %34 = load %struct.rusage*, %struct.rusage** %6, align 8
  %35 = getelementptr inbounds %struct.rusage, %struct.rusage* %34, i32 0, i32 0
  %36 = call i32 @calccru(%struct.proc* %31, i32* %33, i32* %35)
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.proc*, %struct.proc** %7, align 8
  %39 = call i32 @PROC_STATLOCK(%struct.proc* %38)
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = call i32 @thread_lock(%struct.thread* %40)
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load %struct.rusage*, %struct.rusage** %6, align 8
  %44 = call i32 @rufetchtd(%struct.thread* %42, %struct.rusage* %43)
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = call i32 @thread_unlock(%struct.thread* %45)
  %47 = load %struct.proc*, %struct.proc** %7, align 8
  %48 = call i32 @PROC_STATUNLOCK(%struct.proc* %47)
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %37, %23, %15
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = call i32 @PROC_UNLOCK(%struct.proc* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @rufetchcalc(%struct.proc*, %struct.rusage*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @calccru(%struct.proc*, i32*, i32*) #1

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @rufetchtd(%struct.thread*, %struct.rusage*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
