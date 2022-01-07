; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_create_mspace.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_create_mspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@mparams = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CMFAIL = common dso_local global i8* null, align 8
@IS_MMAPPED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_mspace(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %10 = call i32 (...) @ensure_initialization()
  %11 = call i64 @pad_request(i32 4)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mparams, i32 0, i32 0), align 8
  %17 = add i64 %15, %16
  %18 = sub i64 0, %17
  %19 = icmp ult i64 %12, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mparams, i32 0, i32 1), align 8
  br label %31

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  br label %31

31:                                               ; preds = %25, %23
  %32 = phi i64 [ %24, %23 ], [ %30, %25 ]
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @granularity_align(i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @CALL_MMAP(i64 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** @CMFAIL, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call %struct.TYPE_7__* @init_user_mstate(i8* %42, i64 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  %45 = load i32, i32* @IS_MMAPPED_BIT, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @set_lock(%struct.TYPE_7__* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %31
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = ptrtoint %struct.TYPE_7__* %54 to i32
  ret i32 %55
}

declare dso_local i32 @ensure_initialization(...) #1

declare dso_local i64 @pad_request(i32) #1

declare dso_local i64 @granularity_align(i64) #1

declare dso_local i64 @CALL_MMAP(i64) #1

declare dso_local %struct.TYPE_7__* @init_user_mstate(i8*, i64) #1

declare dso_local i32 @set_lock(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
