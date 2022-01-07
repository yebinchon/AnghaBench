; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_msync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_msync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MS_ASYNC = common dso_local global i32 0, align 4
@MS_INVALIDATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_msync(%struct.thread* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @round_page(i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MS_ASYNC, align 4
  %36 = load i32, i32* @MS_INVALIDATE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @MS_ASYNC, align 4
  %40 = load i32, i32* @MS_INVALIDATE, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %78

45:                                               ; preds = %33
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MS_ASYNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MS_INVALIDATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @vm_map_sync(i32* %52, i64 %53, i64 %56, i32 %61, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  switch i32 %68, label %76 [
    i32 128, label %69
    i32 130, label %70
    i32 129, label %72
    i32 131, label %74
  ]

69:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %78

70:                                               ; preds = %45
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %45
  %73 = load i32, i32* @EBUSY, align 4
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %45
  %75 = load i32, i32* @EIO, align 4
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %45
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %74, %72, %70, %69, %43, %31
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_sync(i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
