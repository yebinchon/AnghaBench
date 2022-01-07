; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_activate_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_activate_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mips_pic_intr = type { i64 }

@mips_pic_mtx = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_pic_activate_intr(i32 %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mips_pic_intr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.resource* %1, %struct.resource** %5, align 8
  %8 = load %struct.resource*, %struct.resource** %5, align 8
  %9 = call %struct.mips_pic_intr* @mips_pic_find_intr(%struct.resource* %8)
  store %struct.mips_pic_intr* %9, %struct.mips_pic_intr** %6, align 8
  %10 = icmp eq %struct.mips_pic_intr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = call i32 @intr_activate_irq(i32 %12, %struct.resource* %13)
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  %17 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %18 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UINT_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %15
  %26 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %27 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @intr_activate_irq(i32 %31, %struct.resource* %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %41 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %35, %22, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.mips_pic_intr* @mips_pic_find_intr(%struct.resource*) #1

declare dso_local i32 @intr_activate_irq(i32, %struct.resource*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
