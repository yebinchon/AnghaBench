; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_core_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_core_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_desc = type { i64, i64, i32* }

@bhnd_core_descs = common dso_local global %struct.bhnd_core_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhnd_core_desc* (i64, i64)* @bhnd_find_core_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhnd_core_desc* @bhnd_find_core_desc(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.bhnd_core_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %36, %2
  %8 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** @bhnd_core_descs, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %8, i64 %9
  %11 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** @bhnd_core_descs, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %15, i64 %16
  %18 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** @bhnd_core_descs, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %24, i64 %25
  %27 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** @bhnd_core_descs, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %33, i64 %34
  store %struct.bhnd_core_desc* %35, %struct.bhnd_core_desc** %3, align 8
  br label %40

36:                                               ; preds = %31, %22
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %7

39:                                               ; preds = %7
  store %struct.bhnd_core_desc* null, %struct.bhnd_core_desc** %3, align 8
  br label %40

40:                                               ; preds = %39, %32
  %41 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** %3, align 8
  ret %struct.bhnd_core_desc* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
