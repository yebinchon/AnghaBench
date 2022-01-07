; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_first_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_first_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.obj** }

@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@BUSDMA_MD_BUS = common dso_local global i32 0, align 4
@BUSDMA_MD_PHYS = common dso_local global i32 0, align 4
@BUSDMA_MD_VIRT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_md_first_seg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.obj*, align 8
  %7 = alloca %struct.obj*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @OBJ_TYPE_MD, align 4
  %10 = call %struct.obj* @obj_lookup(i32 %8, i32 %9)
  store %struct.obj* %10, %struct.obj** %6, align 8
  %11 = load %struct.obj*, %struct.obj** %6, align 8
  %12 = icmp eq %struct.obj* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BUSDMA_MD_BUS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BUSDMA_MD_PHYS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BUSDMA_MD_VIRT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %46

28:                                               ; preds = %22, %18, %14
  %29 = load %struct.obj*, %struct.obj** %6, align 8
  %30 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.obj**, %struct.obj*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.obj*, %struct.obj** %33, i64 %35
  %37 = load %struct.obj*, %struct.obj** %36, align 8
  store %struct.obj* %37, %struct.obj** %7, align 8
  %38 = load %struct.obj*, %struct.obj** %7, align 8
  %39 = icmp eq %struct.obj* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.obj*, %struct.obj** %7, align 8
  %44 = getelementptr inbounds %struct.obj, %struct.obj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %40, %26, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
