; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_alloc_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_alloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32, i8*, i8* }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* ()* @alloc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @alloc_block() #0 {
  %1 = alloca %struct.block*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @BLOCK_SIZE, align 4
  %4 = mul nsw i32 2, %3
  %5 = sext i32 %4 to i64
  %6 = add i64 24, %5
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.block* @malloc(i64 %7)
  store %struct.block* %8, %struct.block** %1, align 8
  %9 = load %struct.block*, %struct.block** %1, align 8
  %10 = icmp eq %struct.block* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @EX_SOFTWARE, align 4
  %13 = call i32 @errx(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = load %struct.block*, %struct.block** %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @memset(%struct.block* %15, i32 0, i64 %16)
  %18 = load %struct.block*, %struct.block** %1, align 8
  %19 = getelementptr inbounds %struct.block, %struct.block* %18, i64 1
  %20 = bitcast %struct.block* %19 to i8*
  %21 = load %struct.block*, %struct.block** %1, align 8
  %22 = getelementptr inbounds %struct.block, %struct.block* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.block*, %struct.block** %1, align 8
  %24 = getelementptr inbounds %struct.block, %struct.block* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @BLOCK_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = load %struct.block*, %struct.block** %1, align 8
  %30 = getelementptr inbounds %struct.block, %struct.block* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @BLOCK_SIZE, align 4
  %32 = load %struct.block*, %struct.block** %1, align 8
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.block*, %struct.block** %1, align 8
  ret %struct.block* %34
}

declare dso_local %struct.block* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.block*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
