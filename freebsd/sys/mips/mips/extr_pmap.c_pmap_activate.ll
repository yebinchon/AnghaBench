; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }

@curpmap = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@segbase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_activate(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %5, align 8
  %10 = call i32 (...) @critical_enter()
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @vmspace_pmap(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = load i64, i64* @curpmap, align 8
  %16 = call i8* @PCPU_GET(i64 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @PCPU_GET(i64 %18)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = call i32 @CPU_CLR_ATOMIC(i64 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = call i32 @CPU_SET_ATOMIC(i64 %29, i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @pmap_asid_alloc(%struct.TYPE_7__* %33)
  %35 = load %struct.thread*, %struct.thread** %2, align 8
  %36 = load %struct.thread*, %struct.thread** @curthread, align 8
  %37 = icmp eq %struct.thread* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load i64, i64* @segbase, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @PCPU_SET(i64 %39, %struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mips_wr_entryhi(i32 %50)
  br label %52

52:                                               ; preds = %38, %28
  %53 = load i64, i64* @curpmap, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @PCPU_SET(i64 %53, %struct.TYPE_7__* %54)
  %56 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.TYPE_7__* @vmspace_pmap(i32) #1

declare dso_local i8* @PCPU_GET(i64) #1

declare dso_local i32 @CPU_CLR_ATOMIC(i64, i32*) #1

declare dso_local i32 @CPU_SET_ATOMIC(i64, i32*) #1

declare dso_local i32 @pmap_asid_alloc(%struct.TYPE_7__*) #1

declare dso_local i32 @PCPU_SET(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
