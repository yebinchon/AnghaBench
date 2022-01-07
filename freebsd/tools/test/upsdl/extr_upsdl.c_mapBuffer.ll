; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/upsdl/extr_upsdl.c_mapBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/upsdl/extr_upsdl.c_mapBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pagesize = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Mmap failed\00", align 1
@MAP_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Mmap2 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mapBuffer(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @pagesize, align 4
  %11 = mul nsw i32 %10, 2
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_SHARED, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @mmap(i8* null, i32 %11, i32 %14, i32 %15, i32 %16, i32 0)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** @MAP_FAILED, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @pagesize, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* @pagesize, align 4
  %30 = load i32, i32* @PROT_READ, align 4
  %31 = load i32, i32* @PROT_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAP_FIXED, align 4
  %34 = load i32, i32* @MAP_SHARED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @mmap(i8* %28, i32 %29, i32 %32, i32 %35, i32 %36, i32 0)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** @MAP_FAILED, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %46

43:                                               ; preds = %23
  %44 = load i8*, i8** %9, align 8
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %41, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
