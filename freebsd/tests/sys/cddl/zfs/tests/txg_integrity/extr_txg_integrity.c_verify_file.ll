; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_verify_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/txg_integrity/extr_txg_integrity.c_verify_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NUM_CHUNKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"txg_integrity: miscompare at chunk %i, chunk offset %lx, file offset %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected %16lx, got %16lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"txg_integrity: miscompare ends at chunk %i, chunk offset %lx, file offset %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*)* @verify_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_file(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
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
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %136, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NUM_CHUNKS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %139

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @get_chunk_range(%struct.TYPE_4__* %21, i32 %22, i32* %9, i32* %10)
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
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @marker_fill(i32* %40, i32 %41, i64 %42, i32 1)
  br label %49

44:                                               ; preds = %20
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @marker_fill(i32* %45, i32 %46, i64 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %3, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @read(i32 %50, i32* %51, i64 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %128, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %11, align 8
  %63 = udiv i64 %62, 4
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %131

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %65
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %80, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %75
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %103)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %127

105:                                              ; preds = %75, %65
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %105
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %113, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load i32, i32* @stderr, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  store i32 1, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %108, %105
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %59

131:                                              ; preds = %59
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @free(i32* %132)
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @free(i32* %134)
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %16

139:                                              ; preds = %16
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @get_chunk_range(%struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @marker_fill(i32*, i32, i64, i32) #1

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
