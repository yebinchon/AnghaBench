; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_3__*, i8)* @u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @u(%struct.TYPE_3__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %8, 65280
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = or i32 %9, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %5, align 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1024
  %20 = inttoptr i64 %19 to i16*
  store volatile i16 255, i16* %20, align 2
  %21 = load i16, i16* %5, align 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1028
  %26 = inttoptr i64 %25 to i16*
  store volatile i16 %21, i16* %26, align 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1024
  %31 = inttoptr i64 %30 to i16*
  store volatile i16 255, i16* %31, align 2
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = xor i32 %33, 128
  %35 = trunc i32 %34 to i16
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1028
  %40 = inttoptr i64 %39 to i16*
  store volatile i16 %35, i16* %40, align 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1024
  %45 = inttoptr i64 %44 to i16*
  store volatile i16 255, i16* %45, align 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1028
  %50 = inttoptr i64 %49 to i16*
  %51 = load volatile i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = ashr i32 %52, 8
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  %55 = load i16, i16* %5, align 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1028
  %60 = inttoptr i64 %59 to i16*
  store volatile i16 %55, i16* %60, align 2
  %61 = load i8, i8* %6, align 1
  ret i8 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
