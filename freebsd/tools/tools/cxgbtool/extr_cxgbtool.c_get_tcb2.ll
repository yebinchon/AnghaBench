; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_tcb2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_tcb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_mem_range = type { i32, i32, i64, i32 }

@TCB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"get TCB\00", align 1
@MEM_CM = common dso_local global i32 0, align 4
@CHELSIO_GET_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%2u:\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" %08x %08x %08x %08x\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @get_tcb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tcb2(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ch_mem_range, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %105

19:                                               ; preds = %4
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @get_int_arg(i8* %24, i32* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load i32, i32* @TCB_SIZE, align 4
  %30 = call i64 @calloc(i32 1, i32 %29)
  %31 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* @MEM_CM, align 4
  %39 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @TCB_SIZE, align 4
  %42 = mul i32 %40, %41
  %43 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @TCB_SIZE, align 4
  %45 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @CHELSIO_GET_MEM, align 4
  %48 = call i64 @doit(i8* %46, i32 %47, %struct.ch_mem_range* %13)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  %53 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %98, %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @TCB_SIZE, align 4
  %59 = udiv i32 %58, 32
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 32
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 32
  %78 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %70, i32 %73, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 32
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 32
  %95 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %87, i32 %90, i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32* %97, i32** %10, align 8
  br label %98

98:                                               ; preds = %61
  %99 = load i32, i32* %11, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %56

101:                                              ; preds = %56
  %102 = getelementptr inbounds %struct.ch_mem_range, %struct.ch_mem_range* %13, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @free(i64 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %27, %18
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @get_int_arg(i8*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_mem_range*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
