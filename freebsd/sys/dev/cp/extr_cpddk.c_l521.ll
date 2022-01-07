; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l521.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_3__*)* @l521 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @l521(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1024
  %11 = inttoptr i64 %10 to i16*
  store volatile i16 255, i16* %11, align 2
  store i32 255, i32* %4, align 4
  br label %12

12:                                               ; preds = %17, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %70

16:                                               ; preds = %12
  br label %20

17:                                               ; preds = %69
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  br label %12

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 32
  %23 = trunc i32 %22 to i16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1028
  %28 = inttoptr i64 %27 to i16*
  store volatile i16 %23, i16* %28, align 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1024
  %33 = inttoptr i64 %32 to i16*
  store volatile i16 255, i16* %33, align 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1028
  %38 = inttoptr i64 %37 to i16*
  %39 = load volatile i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %5, align 2
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, -33
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = and i32 %47, 32
  %49 = or i32 %44, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load i16, i16* %5, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* %6, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %20
  br label %69

57:                                               ; preds = %20
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1028
  %62 = inttoptr i64 %61 to i16*
  store volatile i16 255, i16* %62, align 2
  %63 = load i32, i32* %4, align 4
  %64 = load i16, i16* %5, align 2
  %65 = zext i16 %64 to i32
  %66 = shl i32 %65, 8
  %67 = or i32 %63, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %2, align 2
  br label %76

69:                                               ; preds = %56
  br label %17

70:                                               ; preds = %15
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1028
  %75 = inttoptr i64 %74 to i16*
  store volatile i16 255, i16* %75, align 2
  store i16 0, i16* %2, align 2
  br label %76

76:                                               ; preds = %70, %57
  %77 = load i16, i16* %2, align 2
  ret i16 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
