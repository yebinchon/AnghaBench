; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_default_pager.c_default_pager_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_default_pager.c_default_pager_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.ucred* }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"default_pager_alloc: handle specified\00", align 1
@OBJT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i64, i32, i64, %struct.ucred*)* @default_pager_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @default_pager_alloc(i8* %0, i64 %1, i32 %2, i64 %3, %struct.ucred* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %5
  %18 = load %struct.ucred*, %struct.ucred** %11, align 8
  %19 = icmp ne %struct.ucred* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ucred*, %struct.ucred** %11, align 8
  %23 = call i32 @swap_reserve_by_cred(i64 %21, %struct.ucred* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %48

26:                                               ; preds = %20
  %27 = load %struct.ucred*, %struct.ucred** %11, align 8
  %28 = call i32 @crhold(%struct.ucred* %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* @OBJT_DEFAULT, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @round_page(i64 %33)
  %35 = call i32 @OFF_TO_IDX(i32 %34)
  %36 = call %struct.TYPE_4__* @vm_object_allocate(i32 %30, i32 %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %12, align 8
  %37 = load %struct.ucred*, %struct.ucred** %11, align 8
  %38 = icmp ne %struct.ucred* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.ucred*, %struct.ucred** %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store %struct.ucred* %40, %struct.ucred** %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %29
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %6, align 8
  br label %48

48:                                               ; preds = %46, %25
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %49
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @swap_reserve_by_cred(i64, %struct.ucred*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local %struct.TYPE_4__* @vm_object_allocate(i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @round_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
