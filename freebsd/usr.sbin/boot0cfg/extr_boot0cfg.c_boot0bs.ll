; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_boot0bs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_boot0bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.byte_pattern = type { i32, i32, i32*, i32, i64, i32 }

@boot0bs.id0 = internal global [12 x i32] [i32 252, i32 49, i32 192, i32 142, i32 192, i32 142, i32 216, i32 142, i32 208, i32 188, i32 0, i32 124], align 16
@boot0bs.id1 = internal global [6 x i32] [i32 68, i32 114, i32 105, i32 118, i32 101, i32 32], align 16
@boot0bs.patterns = internal global [7 x %struct.byte_pattern] [%struct.byte_pattern { i32 0, i32 48, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @boot0bs.id0, i32 0, i32 0), i32 0, i64 0, i32 0 }, %struct.byte_pattern { i32 434, i32 24, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @boot0bs.id1, i32 0, i32 0), i32 0, i64 0, i32 0 }, %struct.byte_pattern { i32 1, i32 0, i32* null, i32 0, i64 0, i32 0 }, %struct.byte_pattern { i32 0, i32 48, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @boot0bs.id0, i32 0, i32 0), i32 0, i64 0, i32 0 }, %struct.byte_pattern { i32 430, i32 24, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @boot0bs.id1, i32 0, i32 0), i32 0, i64 0, i32 0 }, %struct.byte_pattern { i32 2, i32 0, i32* null, i32 0, i64 0, i32 0 }, %struct.byte_pattern zeroinitializer], align 16
@b0_ver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @boot0bs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot0bs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.byte_pattern*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.byte_pattern* getelementptr inbounds ([7 x %struct.byte_pattern], [7 x %struct.byte_pattern]* @boot0bs.patterns, i64 0, i64 0), %struct.byte_pattern** %3, align 8
  br label %4

4:                                                ; preds = %48, %1
  %5 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %6 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %11 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ true, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %51

16:                                               ; preds = %14
  %17 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %18 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %51

22:                                               ; preds = %16
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %25 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %30 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %33 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memcmp(i32* %28, i32 %31, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  br label %48

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %41 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %46 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %45, i32 1
  store %struct.byte_pattern* %46, %struct.byte_pattern** %3, align 8
  br label %39

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %37
  %49 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %50 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %49, i32 1
  store %struct.byte_pattern* %50, %struct.byte_pattern** %3, align 8
  br label %4

51:                                               ; preds = %21, %14
  %52 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %53 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @b0_ver, align 4
  %55 = load %struct.byte_pattern*, %struct.byte_pattern** %3, align 8
  %56 = getelementptr inbounds %struct.byte_pattern, %struct.byte_pattern* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  ret i32 %57
}

declare dso_local i32 @memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
