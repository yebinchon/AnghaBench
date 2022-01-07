; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_alloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_alloc = type { i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_init(%struct.mthca_alloc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_alloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mthca_alloc* %0, %struct.mthca_alloc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ffs(i32 %12)
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  %16 = icmp ne i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %70

20:                                               ; preds = %4
  %21 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %22 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %24 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %27 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %30 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %32 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BITS_TO_LONGS(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %42 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %44 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %20
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %70

50:                                               ; preds = %20
  %51 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %52 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @bitmap_zero(i32 %53, i32 %54)
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %66, %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.mthca_alloc*, %struct.mthca_alloc** %6, align 8
  %63 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @set_bit(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %56

69:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %47, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
