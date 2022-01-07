; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sharedpage.c_exec_sysvec_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sharedpage.c_exec_sysvec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sysentvec = type { i32, i64, i64, i32, i32*, i64, i32 }

@SV_SHP = common dso_local global i32 0, align 4
@shared_page_obj = common dso_local global i32 0, align 4
@SV_ABI_MASK = common dso_local global i32 0, align 4
@SV_ABI_FREEBSD = common dso_local global i32 0, align 4
@SV_TIMEKEEP = common dso_local global i32 0, align 4
@host_svtk = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Host already registered\00", align 1
@SV_ILP32 = common dso_local global i32 0, align 4
@compat32_svtk = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_sysvec_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sysentvec*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sysentvec*
  store %struct.sysentvec* %5, %struct.sysentvec** %3, align 8
  %6 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %7 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SV_SHP, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = load i32, i32* @shared_page_obj, align 4
  %15 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %16 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %18 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %21 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %25 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @shared_page_fill(i32 %23, i32 16, i32 %26)
  %28 = add nsw i64 %19, %27
  %29 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %30 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %29, i32 0, i32 5
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %32 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SV_ABI_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SV_ABI_FREEBSD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %61

39:                                               ; preds = %13
  %40 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %41 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SV_TIMEKEEP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @host_svtk, align 8
  %48 = icmp eq %struct.TYPE_5__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = call %struct.TYPE_5__* (...) @alloc_sv_tk()
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** @host_svtk, align 8
  %52 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %53 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @host_svtk, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.sysentvec*, %struct.sysentvec** %3, align 8
  %60 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %12, %38, %46, %39
  ret void
}

declare dso_local i64 @shared_page_fill(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @alloc_sv_tk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
