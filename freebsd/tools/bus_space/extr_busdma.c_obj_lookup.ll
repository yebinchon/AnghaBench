; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_obj_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_obj_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i64, i64 }

@noids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@oidtbl = common dso_local global %struct.obj** null, align 8
@ENXIO = common dso_local global i32 0, align 4
@OBJ_TYPE_NONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obj* (i32, i64)* @obj_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obj* @obj_lookup(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.obj*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @noids, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store %struct.obj* null, %struct.obj** %3, align 8
  br label %41

15:                                               ; preds = %9
  %16 = load %struct.obj**, %struct.obj*** @oidtbl, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.obj*, %struct.obj** %16, i64 %18
  %20 = load %struct.obj*, %struct.obj** %19, align 8
  store %struct.obj* %20, %struct.obj** %6, align 8
  %21 = load %struct.obj*, %struct.obj** %6, align 8
  %22 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* @errno, align 4
  store %struct.obj* null, %struct.obj** %3, align 8
  br label %41

27:                                               ; preds = %15
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @OBJ_TYPE_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.obj*, %struct.obj** %6, align 8
  %33 = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* @errno, align 4
  store %struct.obj* null, %struct.obj** %3, align 8
  br label %41

39:                                               ; preds = %31, %27
  %40 = load %struct.obj*, %struct.obj** %6, align 8
  store %struct.obj* %40, %struct.obj** %3, align 8
  br label %41

41:                                               ; preds = %39, %37, %25, %13
  %42 = load %struct.obj*, %struct.obj** %3, align 8
  ret %struct.obj* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
