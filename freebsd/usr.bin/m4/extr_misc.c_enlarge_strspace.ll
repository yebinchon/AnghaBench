; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_enlarge_strspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_enlarge_strspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@strsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"string space overflow\00", align 1
@strspace = common dso_local global i8* null, align 8
@sp = common dso_local global i32 0, align 4
@sstack = common dso_local global i64* null, align 8
@STORAGE_STRSPACE = common dso_local global i64 0, align 8
@mstack = common dso_local global %struct.TYPE_2__* null, align 8
@ep = common dso_local global i8* null, align 8
@endest = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enlarge_strspace() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @strsize, align 4
  %4 = mul nsw i32 %3, 2
  store i32 %4, i32* @strsize, align 4
  %5 = load i32, i32* @strsize, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i8* @malloc(i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i8*, i8** %1, align 8
  %14 = load i8*, i8** @strspace, align 8
  %15 = load i32, i32* @strsize, align 4
  %16 = sdiv i32 %15, 2
  %17 = call i32 @memcpy(i8* %13, i8* %14, i32 %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %49, %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @sp, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i64*, i64** @sstack, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STORAGE_STRSPACE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mstack, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @strspace, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mstack, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %30, %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i8*, i8** @ep, align 8
  %54 = load i8*, i8** @strspace, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i8*, i8** %1, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** @ep, align 8
  %60 = load i8*, i8** @strspace, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %1, align 8
  store i8* %62, i8** @strspace, align 8
  %63 = load i8*, i8** @strspace, align 8
  %64 = load i32, i32* @strsize, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** @endest, align 8
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
