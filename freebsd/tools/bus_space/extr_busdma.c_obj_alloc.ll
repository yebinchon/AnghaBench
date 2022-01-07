; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_obj_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_obj_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i32, i32 }

@noids = common dso_local global i32 0, align 4
@oidtbl = common dso_local global %struct.obj** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obj* (i32)* @obj_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obj* @obj_alloc(i32 %0) #0 {
  %2 = alloca %struct.obj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.obj**, align 8
  %5 = alloca %struct.obj*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call %struct.obj* @calloc(i32 1, i32 8)
  store %struct.obj* %7, %struct.obj** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.obj*, %struct.obj** %5, align 8
  %10 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @noids, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.obj**, %struct.obj*** @oidtbl, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.obj*, %struct.obj** %16, i64 %18
  %20 = load %struct.obj*, %struct.obj** %19, align 8
  %21 = icmp eq %struct.obj* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @noids, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.obj**, %struct.obj*** @oidtbl, align 8
  %33 = load i32, i32* @noids, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.obj** @realloc(%struct.obj** %32, i32 %37)
  store %struct.obj** %38, %struct.obj*** %4, align 8
  %39 = load %struct.obj**, %struct.obj*** %4, align 8
  %40 = icmp eq %struct.obj** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.obj*, %struct.obj** %5, align 8
  %43 = call i32 @free(%struct.obj* %42)
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %58

44:                                               ; preds = %31
  %45 = load %struct.obj**, %struct.obj*** %4, align 8
  store %struct.obj** %45, %struct.obj*** @oidtbl, align 8
  %46 = load i32, i32* @noids, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @noids, align 4
  br label %48

48:                                               ; preds = %44, %27
  %49 = load %struct.obj*, %struct.obj** %5, align 8
  %50 = load %struct.obj**, %struct.obj*** @oidtbl, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.obj*, %struct.obj** %50, i64 %52
  store %struct.obj* %49, %struct.obj** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.obj*, %struct.obj** %5, align 8
  %56 = getelementptr inbounds %struct.obj, %struct.obj* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.obj*, %struct.obj** %5, align 8
  store %struct.obj* %57, %struct.obj** %2, align 8
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.obj*, %struct.obj** %2, align 8
  ret %struct.obj* %59
}

declare dso_local %struct.obj* @calloc(i32, i32) #1

declare dso_local %struct.obj** @realloc(%struct.obj**, i32) #1

declare dso_local i32 @free(%struct.obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
