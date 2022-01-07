; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_find_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_find_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_pic_intr = type { i64 }
%struct.resource = type { i32 }

@mips_pic_mtx = common dso_local global i32 0, align 4
@mips_pic_intrs = common dso_local global %struct.mips_pic_intr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_pic_intr* (%struct.resource*)* @mips_pic_find_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_pic_intr* @mips_pic_find_intr(%struct.resource* %0) #0 {
  %2 = alloca %struct.mips_pic_intr*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.mips_pic_intr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = call i64 @rman_get_start(%struct.resource* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.resource*, %struct.resource** %3, align 8
  %11 = call i64 @rman_get_end(%struct.resource* %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = call i32 @rman_get_size(%struct.resource* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  store %struct.mips_pic_intr* null, %struct.mips_pic_intr** %2, align 8
  br label %43

18:                                               ; preds = %13
  %19 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %38, %18
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** @mips_pic_intrs, align 8
  %23 = call i64 @nitems(%struct.mips_pic_intr* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** @mips_pic_intrs, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %26, i64 %27
  store %struct.mips_pic_intr* %28, %struct.mips_pic_intr** %4, align 8
  %29 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  %30 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %38

35:                                               ; preds = %25
  %36 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %37 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  store %struct.mips_pic_intr* %37, %struct.mips_pic_intr** %2, align 8
  br label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %20

41:                                               ; preds = %20
  %42 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  store %struct.mips_pic_intr* null, %struct.mips_pic_intr** %2, align 8
  br label %43

43:                                               ; preds = %41, %35, %17
  %44 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %2, align 8
  ret %struct.mips_pic_intr* %44
}

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @nitems(%struct.mips_pic_intr*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
