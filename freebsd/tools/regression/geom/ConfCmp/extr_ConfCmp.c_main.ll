; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mytree = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"_.subs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fsubs = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"usage: %s file1 file2\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"XML parser error on file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mytree*, align 8
  %7 = alloca %struct.mytree*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* @fsubs, align 4
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @setbuf(i32 %10, i32* null)
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @setbuf(i32 %12, i32* null)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct.mytree* @dofile(i8* %24)
  store %struct.mytree* %25, %struct.mytree** %6, align 8
  %26 = load %struct.mytree*, %struct.mytree** %6, align 8
  %27 = icmp eq %struct.mytree* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.mytree*, %struct.mytree** %6, align 8
  %35 = getelementptr inbounds %struct.mytree, %struct.mytree* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sort_node(i32 %36)
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.mytree* @dofile(i8* %40)
  store %struct.mytree* %41, %struct.mytree** %7, align 8
  %42 = load %struct.mytree*, %struct.mytree** %7, align 8
  %43 = icmp eq %struct.mytree* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %44, %33
  %50 = load %struct.mytree*, %struct.mytree** %7, align 8
  %51 = getelementptr inbounds %struct.mytree, %struct.mytree* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sort_node(i32 %52)
  %54 = load %struct.mytree*, %struct.mytree** %6, align 8
  %55 = getelementptr inbounds %struct.mytree, %struct.mytree* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mytree*, %struct.mytree** %7, align 8
  %58 = getelementptr inbounds %struct.mytree, %struct.mytree* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @compare_node(i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.mytree* @dofile(i8*) #1

declare dso_local i32 @sort_node(i32) #1

declare dso_local i32 @compare_node(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
