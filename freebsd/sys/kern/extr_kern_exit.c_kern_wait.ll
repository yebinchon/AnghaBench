; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_kern_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_kern_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.rusage = type { i32 }
%struct.__wrusage = type { %struct.rusage }

@WAIT_ANY = common dso_local global i64 0, align 8
@P_ALL = common dso_local global i32 0, align 4
@P_PGID = common dso_local global i32 0, align 4
@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WTRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_wait(%struct.thread* %0, i64 %1, i32* %2, i32 %3, %struct.rusage* %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rusage*, align 8
  %11 = alloca %struct.__wrusage, align 4
  %12 = alloca %struct.__wrusage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rusage* %4, %struct.rusage** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @WAIT_ANY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @P_ALL, align 4
  store i32 %20, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %32

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @P_PGID, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %14, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @P_PID, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.rusage*, %struct.rusage** %10, align 8
  %34 = icmp ne %struct.rusage* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store %struct.__wrusage* %11, %struct.__wrusage** %12, align 8
  br label %37

36:                                               ; preds = %32
  store %struct.__wrusage* null, %struct.__wrusage** %12, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* @WEXITED, align 4
  %39 = load i32, i32* @WTRAPPED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.thread*, %struct.thread** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i64, i64* %14, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.__wrusage*, %struct.__wrusage** %12, align 8
  %49 = call i32 @kern_wait6(%struct.thread* %43, i32 %44, i64 %45, i32* %46, i32 %47, %struct.__wrusage* %48, i32* null)
  store i32 %49, i32* %15, align 4
  %50 = load %struct.rusage*, %struct.rusage** %10, align 8
  %51 = icmp ne %struct.rusage* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.rusage*, %struct.rusage** %10, align 8
  %54 = getelementptr inbounds %struct.__wrusage, %struct.__wrusage* %11, i32 0, i32 0
  %55 = bitcast %struct.rusage* %53 to i8*
  %56 = bitcast %struct.rusage* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %15, align 4
  ret i32 %58
}

declare dso_local i32 @kern_wait6(%struct.thread*, i32, i64, i32*, i32, %struct.__wrusage*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
