; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_decoder = type { i32, i32, i32*, i32, i32*, i32, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_decoder*, i32, i32, i32)* @lz_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_create(%struct.lz_decoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lz_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lz_decoder* %0, %struct.lz_decoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %11 = call i32 @memset(%struct.lz_decoder* %10, i32 0, i32 72)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dup(i32 %12)
  %14 = call i8* @fdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %17 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %19 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %68

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dup(i32 %24)
  %26 = call i8* @fdopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %29 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %28, i32 0, i32 9
  store i32* %27, i32** %29, align 8
  %30 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %31 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %68

35:                                               ; preds = %23
  %36 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %37 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %39 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %41 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %43 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %42, i32 0, i32 5
  store i32 -1, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %46 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %48 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32* @malloc(i32 %49)
  %51 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %52 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %54 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  br label %68

58:                                               ; preds = %35
  %59 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %60 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %59, i32 0, i32 3
  %61 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %62 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @lz_rd_create(i32* %60, i32* %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %71

68:                                               ; preds = %66, %57, %34, %22
  %69 = load %struct.lz_decoder*, %struct.lz_decoder** %6, align 8
  %70 = call i32 @lz_destroy(%struct.lz_decoder* %69)
  store i32 -1, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.lz_decoder*, i32, i32) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @lz_rd_create(i32*, i32*) #1

declare dso_local i32 @lz_destroy(%struct.lz_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
