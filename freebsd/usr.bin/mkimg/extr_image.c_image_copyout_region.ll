; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyout_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@secsz = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_copyout_region(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.chunk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @secsz, align 8
  %12 = load i64, i64* %6, align 8
  %13 = mul nsw i64 %12, %11
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %87, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %96

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.chunk* @image_chunk_find(i64 %23)
  store %struct.chunk* %24, %struct.chunk** %7, align 8
  %25 = load %struct.chunk*, %struct.chunk** %7, align 8
  %26 = icmp eq %struct.chunk* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %10, align 4
  br label %96

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.chunk*, %struct.chunk** %7, align 8
  %32 = getelementptr inbounds %struct.chunk, %struct.chunk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load i64, i64* @secsz, align 8
  %36 = mul nsw i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.chunk*, %struct.chunk** %7, align 8
  %38 = getelementptr inbounds %struct.chunk, %struct.chunk* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i64, i64* %9, align 8
  br label %49

47:                                               ; preds = %29
  %48 = load i64, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %9, align 8
  %51 = load %struct.chunk*, %struct.chunk** %7, align 8
  %52 = getelementptr inbounds %struct.chunk, %struct.chunk* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %85 [
    i32 128, label %54
    i32 130, label %58
    i32 129, label %76
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @image_copyout_zeroes(i32 %55, i64 %56)
  store i32 %57, i32* %10, align 4
  br label %87

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.chunk*, %struct.chunk** %7, align 8
  %62 = getelementptr inbounds %struct.chunk, %struct.chunk* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.chunk*, %struct.chunk** %7, align 8
  %67 = getelementptr inbounds %struct.chunk, %struct.chunk* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @image_copyout_file(i32 %59, i64 %60, i32 %65, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %87

76:                                               ; preds = %49
  %77 = load i32, i32* %4, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.chunk*, %struct.chunk** %7, align 8
  %80 = getelementptr inbounds %struct.chunk, %struct.chunk* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @image_copyout_memory(i32 %77, i64 %78, i32 %83)
  store i32 %84, i32* %10, align 4
  br label %87

85:                                               ; preds = %49
  %86 = call i32 @assert(i32 0)
  br label %87

87:                                               ; preds = %85, %76, %58, %54
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @secsz, align 8
  %93 = udiv i64 %91, %92
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %5, align 8
  br label %14

96:                                               ; preds = %27, %20
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local %struct.chunk* @image_chunk_find(i64) #1

declare dso_local i32 @image_copyout_zeroes(i32, i64) #1

declare dso_local i32 @image_copyout_file(i32, i64, i32, i32) #1

declare dso_local i32 @image_copyout_memory(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
