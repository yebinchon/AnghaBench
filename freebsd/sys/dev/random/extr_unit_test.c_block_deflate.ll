; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_block_deflate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_block_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32*, i32*, i32*, i32, i32 }

@myalloc = common dso_local global i32 0, align 4
@myfree = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"deflate(..., Z_NO_FLUSH)\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"deflate(..., Z_STREAM_END)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @block_deflate(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %69

13:                                               ; preds = %3
  %14 = load i32, i32* @myalloc, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @myfree, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %20 = call i32 @deflateInit(%struct.TYPE_5__* %8, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @check_err(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i32* %23, i32** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 %29, 2
  %31 = add i64 %30, 512
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %47, %13
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = mul i64 %41, 2
  %43 = add i64 %42, 512
  %44 = icmp ult i64 %40, %43
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i1 [ false, %33 ], [ %44, %38 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i32, i32* @Z_NO_FLUSH, align 4
  %49 = call i32 @deflate(%struct.TYPE_5__* %8, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @check_err(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %33

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %60, %52
  %54 = load i32, i32* @Z_FINISH, align 4
  %55 = call i32 @deflate(%struct.TYPE_5__* %8, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @Z_STREAM_END, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @check_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %53

63:                                               ; preds = %59
  %64 = call i32 @deflateEnd(%struct.TYPE_5__* %8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @check_err(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %63, %12
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i32 @deflateInit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @check_err(i32, i8*) #1

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
