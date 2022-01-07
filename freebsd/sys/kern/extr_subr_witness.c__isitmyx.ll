; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c__isitmyx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c__isitmyx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness = type { i32, i8* }

@w_rmatrix = common dso_local global i8** null, align 8
@WITNESS_RELATED_MASK = common dso_local global i8 0, align 1
@w_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"%s: rmatrix mismatch between %s (index %d) and %s (index %d): w_rmatrix[%d][%d] == %hhx but w_rmatrix[%d][%d] == %hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Witness disabled.\0A\00", align 1
@witness_watch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.witness*, %struct.witness*, i32, i8*)* @_isitmyx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_isitmyx(%struct.witness* %0, %struct.witness* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.witness*, align 8
  %7 = alloca %struct.witness*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.witness* %0, %struct.witness** %6, align 8
  store %struct.witness* %1, %struct.witness** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.witness*, %struct.witness** %6, align 8
  %15 = getelementptr inbounds %struct.witness, %struct.witness* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.witness*, %struct.witness** %7, align 8
  %18 = getelementptr inbounds %struct.witness, %struct.witness* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @WITNESS_INDEX_ASSERT(i32 %20)
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @WITNESS_INDEX_ASSERT(i32 %22)
  %24 = load i8**, i8*** @w_rmatrix, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @WITNESS_RELATED_MASK, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %10, align 1
  %38 = load i8**, i8*** @w_rmatrix, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @WITNESS_RELATED_MASK, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %11, align 1
  %52 = load i8, i8* %10, align 1
  %53 = call zeroext i8 @WITNESS_ATOD(i8 zeroext %52)
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %4
  %59 = load i8, i8* %11, align 1
  %60 = call zeroext i8 @WITNESS_DTOA(i8 zeroext %59)
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %104, label %65

65:                                               ; preds = %58, %4
  %66 = load i8, i8* %10, align 1
  %67 = call zeroext i8 @WITNESS_DTOA(i8 zeroext %66)
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i8, i8* %11, align 1
  %74 = call zeroext i8 @WITNESS_ATOD(i8 zeroext %73)
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %104, label %79

79:                                               ; preds = %72, %65
  %80 = call i32 @mtx_owned(i32* @w_mtx)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %109

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.witness*, %struct.witness** %6, align 8
  %86 = getelementptr inbounds %struct.witness, %struct.witness* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.witness*, %struct.witness** %7, align 8
  %90 = getelementptr inbounds %struct.witness, %struct.witness* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i8* %84, i8* %87, i32 %88, i8* %91, i32 %92, i32 %93, i32 %94, i32 %96, i32 %97, i32 %98, i32 %100)
  %102 = call i32 (...) @kdb_backtrace()
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @witness_watch, align 4
  br label %104

104:                                              ; preds = %83, %72, %58
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %82
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @WITNESS_INDEX_ASSERT(i32) #1

declare dso_local zeroext i8 @WITNESS_ATOD(i8 zeroext) #1

declare dso_local zeroext i8 @WITNESS_DTOA(i8 zeroext) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kdb_backtrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
