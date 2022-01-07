; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_is_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64 }

@g_raid3_is_zero.zeros = internal constant [16 x i32] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @g_raid3_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_is_zero(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @bcmp(i32* %17, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @g_raid3_is_zero.zeros, i64 0, i64 0), i32 64)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %28

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 64
  store i64 %24, i64* %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 64
  store i32* %26, i32** %4, align 8
  br label %13

27:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
