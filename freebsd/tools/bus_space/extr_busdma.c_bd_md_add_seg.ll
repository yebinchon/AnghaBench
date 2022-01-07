; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_add_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_add_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i32, %struct.TYPE_6__, %struct.obj* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, %struct.obj** }
%struct.TYPE_4__ = type { i8*, i8* }

@OBJ_TYPE_SEG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obj*, i32, i8*, i8*)* @bd_md_add_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_md_add_seg(%struct.obj* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @OBJ_TYPE_SEG, align 4
  %12 = call %struct.obj* @obj_alloc(i32 %11)
  store %struct.obj* %12, %struct.obj** %10, align 8
  %13 = load %struct.obj*, %struct.obj** %10, align 8
  %14 = icmp eq %struct.obj* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %5, align 4
  br label %50

17:                                               ; preds = %4
  %18 = load %struct.obj*, %struct.obj** %10, align 8
  %19 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.obj*, %struct.obj** %6, align 8
  %21 = load %struct.obj*, %struct.obj** %10, align 8
  %22 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  store %struct.obj* %20, %struct.obj** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.obj*, %struct.obj** %10, align 8
  %25 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.obj*, %struct.obj** %10, align 8
  %30 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load %struct.obj*, %struct.obj** %10, align 8
  %34 = load %struct.obj*, %struct.obj** %6, align 8
  %35 = getelementptr inbounds %struct.obj, %struct.obj* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.obj**, %struct.obj*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.obj*, %struct.obj** %38, i64 %40
  store %struct.obj* %33, %struct.obj** %41, align 8
  %42 = load %struct.obj*, %struct.obj** %6, align 8
  %43 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 1, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %17, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.obj* @obj_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
