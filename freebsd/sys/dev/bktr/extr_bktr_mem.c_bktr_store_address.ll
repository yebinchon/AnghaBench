; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_mem.c_bktr_store_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_mem.c_bktr_store_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@BKTR_MEM_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"bktr_mem: Unit number %d invalid for memory type %d, address %p\0A\00", align 1
@memory_list = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"bktr_mem: Invalid memory type %d for bktr%d, address %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bktr_store_address(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BKTR_MEM_MAX_DEVICES, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i8* %16)
  br label %85

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %80 [
    i32 131, label %20
    i32 130, label %32
    i32 128, label %44
    i32 129, label %56
    i32 132, label %68
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i8* %21, i8** %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %85

32:                                               ; preds = %18
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i8* %33, i8** %38, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %85

44:                                               ; preds = %18
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %45, i8** %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %85

56:                                               ; preds = %18
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %85

68:                                               ; preds = %18
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i8* %69, i8** %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memory_list, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %85

80:                                               ; preds = %18
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %13, %80, %68, %56, %44, %32, %20
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
