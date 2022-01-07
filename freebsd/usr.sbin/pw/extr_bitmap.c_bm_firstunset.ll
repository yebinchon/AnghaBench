; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_bitmap.c_bm_firstunset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_bitmap.c_bm_firstunset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm_firstunset(%struct.bitmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 8
  %13 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %15, 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 %12, %20
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %56, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  store i8 1, i8* %8, align 1
  br label %35

35:                                               ; preds = %49, %26
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 255
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %40
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 1
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %35

56:                                               ; preds = %35
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
