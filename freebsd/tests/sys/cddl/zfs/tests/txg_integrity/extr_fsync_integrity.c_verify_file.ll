; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_fsync_integrity.c_verify_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_fsync_integrity.c_verify_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CHUNKS = common dso_local global i32 0, align 4
@NUM_THREADS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"fsync_integrity: miscompare at chunk %i, chunk offset %lx, file offset %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected %016lx, got %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"fsync_integrity: miscompare ends at chunk %i, chunk offset %lx, file offset %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @verify_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_file(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %124, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NUM_CHUNKS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %127

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @get_chunk_range(i32* %21, i32 %22, i32* %9, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32* @malloc(i64 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32* @malloc(i64 %30)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @NUM_THREADS, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @marker_fill(i32* %32, i32 %33, i64 %34, i64 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @read(i32 %38, i32* %39, i64 %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %20
  %44 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %116, %46
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %11, align 8
  %51 = udiv i64 %50, 4
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %119

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %53
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %63
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %91)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %115

93:                                               ; preds = %63, %53
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load i32, i32* @stderr, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %108, %96, %93
  br label %115

115:                                              ; preds = %114, %75
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %47

119:                                              ; preds = %47
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @free(i32* %120)
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @free(i32* %122)
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %16

127:                                              ; preds = %16
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @get_chunk_range(i32*, i32, i32*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @marker_fill(i32*, i32, i64, i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
