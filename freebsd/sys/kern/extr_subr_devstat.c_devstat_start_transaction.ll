; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_start_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_start_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstat = type { i64, i64, i32, %struct.bintime, i32 }
%struct.bintime = type { i32 }

@devstat_mutex = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devstat_start_transaction(%struct.devstat* %0, %struct.bintime* %1) #0 {
  %3 = alloca %struct.devstat*, align 8
  %4 = alloca %struct.bintime*, align 8
  store %struct.devstat* %0, %struct.devstat** %3, align 8
  store %struct.bintime* %1, %struct.bintime** %4, align 8
  %5 = load i32, i32* @MA_NOTOWNED, align 4
  %6 = call i32 @mtx_assert(i32* @devstat_mutex, i32 %5)
  %7 = load %struct.devstat*, %struct.devstat** %3, align 8
  %8 = icmp eq %struct.devstat* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.devstat*, %struct.devstat** %3, align 8
  %12 = getelementptr inbounds %struct.devstat, %struct.devstat* %11, i32 0, i32 4
  %13 = call i32 @atomic_add_acq_int(i32* %12, i32 1)
  %14 = load %struct.devstat*, %struct.devstat** %3, align 8
  %15 = getelementptr inbounds %struct.devstat, %struct.devstat* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.devstat*, %struct.devstat** %3, align 8
  %18 = getelementptr inbounds %struct.devstat, %struct.devstat* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %10
  %22 = load %struct.bintime*, %struct.bintime** %4, align 8
  %23 = icmp ne %struct.bintime* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.devstat*, %struct.devstat** %3, align 8
  %26 = getelementptr inbounds %struct.devstat, %struct.devstat* %25, i32 0, i32 3
  %27 = load %struct.bintime*, %struct.bintime** %4, align 8
  %28 = bitcast %struct.bintime* %26 to i8*
  %29 = bitcast %struct.bintime* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.devstat*, %struct.devstat** %3, align 8
  %32 = getelementptr inbounds %struct.devstat, %struct.devstat* %31, i32 0, i32 3
  %33 = call i32 @binuptime(%struct.bintime* %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.devstat*, %struct.devstat** %3, align 8
  %37 = getelementptr inbounds %struct.devstat, %struct.devstat* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.devstat*, %struct.devstat** %3, align 8
  %41 = getelementptr inbounds %struct.devstat, %struct.devstat* %40, i32 0, i32 2
  %42 = call i32 @atomic_add_rel_int(i32* %41, i32 1)
  %43 = call i32 (...) @DTRACE_DEVSTAT_START()
  br label %44

44:                                               ; preds = %35, %9
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @atomic_add_acq_int(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @binuptime(%struct.bintime*) #1

declare dso_local i32 @atomic_add_rel_int(i32*, i32) #1

declare dso_local i32 @DTRACE_DEVSTAT_START(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
