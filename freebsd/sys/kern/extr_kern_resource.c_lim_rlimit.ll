; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_rlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__*, %struct.proc* }
%struct.TYPE_3__ = type { %struct.rlimit* }
%struct.rlimit = type { i32 }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rlimit*, i32)* }

@curthread = common dso_local global %struct.thread* null, align 8
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"request for invalid resource limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lim_rlimit(%struct.thread* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit*, align 8
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rlimit* %2, %struct.rlimit** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %7, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  %13 = icmp eq %struct.thread* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RLIM_NLIMITS, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ false, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.rlimit*, %struct.rlimit** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %31, i64 %33
  %35 = bitcast %struct.rlimit* %26 to i8*
  %36 = bitcast %struct.rlimit* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.proc*, %struct.proc** %7, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.rlimit*, i32)*, i32 (%struct.rlimit*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.rlimit*, i32)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %22
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.rlimit*, i32)*, i32 (%struct.rlimit*, i32)** %47, align 8
  %49 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %48(%struct.rlimit* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %22
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
