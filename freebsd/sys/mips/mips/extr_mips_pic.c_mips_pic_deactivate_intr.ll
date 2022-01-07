; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_deactivate_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_deactivate_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mips_pic_intr = type { i32 }

@mips_pic_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"refcount overrelease\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_pic_deactivate_intr(i32 %0, %struct.resource* %1) #0 {
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
  %14 = call i32 @intr_deactivate_irq(i32 %12, %struct.resource* %13)
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  %17 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %18 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %24 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i32 @intr_deactivate_irq(i32 %28, %struct.resource* %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %6, align 8
  %38 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %32, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mips_pic_intr* @mips_pic_find_intr(%struct.resource*) #1

declare dso_local i32 @intr_deactivate_irq(i32, %struct.resource*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
