; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_alloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.ucred*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ucred = type { i32 }

@OBJT_SWAP = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, %struct.ucred*, i64, i64)* @swap_pager_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @swap_pager_alloc_init(i8* %0, %struct.ucred* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.ucred*, %struct.ucred** %7, align 8
  %12 = icmp ne %struct.ucred* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.ucred*, %struct.ucred** %7, align 8
  %16 = call i32 @swap_reserve_by_cred(i64 %14, %struct.ucred* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %49

19:                                               ; preds = %13
  %20 = load %struct.ucred*, %struct.ucred** %7, align 8
  %21 = call i32 @crhold(%struct.ucred* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @OBJT_SWAP, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @OFF_TO_IDX(i64 %28)
  %30 = call %struct.TYPE_8__* @vm_object_allocate(i32 %23, i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ucred*, %struct.ucred** %7, align 8
  %39 = icmp ne %struct.ucred* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.ucred*, %struct.ucred** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store %struct.ucred* %41, %struct.ucred** %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %22
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %5, align 8
  br label %49

49:                                               ; preds = %47, %18
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %50
}

declare dso_local i32 @swap_reserve_by_cred(i64, %struct.ucred*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.TYPE_8__* @vm_object_allocate(i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
