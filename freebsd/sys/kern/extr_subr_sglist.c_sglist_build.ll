; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sglist* @sglist_build(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sglist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sglist*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.sglist* null, %struct.sglist** %4, align 8
  br label %34

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @sglist_count(i8* %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sglist* @sglist_alloc(i32 %17, i32 %18)
  store %struct.sglist* %19, %struct.sglist** %8, align 8
  %20 = load %struct.sglist*, %struct.sglist** %8, align 8
  %21 = icmp eq %struct.sglist* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store %struct.sglist* null, %struct.sglist** %4, align 8
  br label %34

23:                                               ; preds = %13
  %24 = load %struct.sglist*, %struct.sglist** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @sglist_append(%struct.sglist* %24, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.sglist*, %struct.sglist** %8, align 8
  %31 = call i32 @sglist_free(%struct.sglist* %30)
  store %struct.sglist* null, %struct.sglist** %4, align 8
  br label %34

32:                                               ; preds = %23
  %33 = load %struct.sglist*, %struct.sglist** %8, align 8
  store %struct.sglist* %33, %struct.sglist** %4, align 8
  br label %34

34:                                               ; preds = %32, %29, %22, %12
  %35 = load %struct.sglist*, %struct.sglist** %4, align 8
  ret %struct.sglist* %35
}

declare dso_local i32 @sglist_count(i8*, i64) #1

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i64 @sglist_append(%struct.sglist*, i8*, i64) #1

declare dso_local i32 @sglist_free(%struct.sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
