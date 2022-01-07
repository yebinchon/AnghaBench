; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunched_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunched_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub = type { i32 (i32, i8**, i8**)*, i32* }

@entry_points = common dso_local global %struct.stub* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: %s not compiled in\0A\00", align 1
@EXECNAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stub*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %3
  %23 = call i32 (...) @crunched_usage()
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  br label %38

34:                                               ; preds = %24
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i8* [ %33, %31 ], [ %37, %34 ]
  store i8* %39, i8** %9, align 8
  %40 = load %struct.stub*, %struct.stub** @entry_points, align 8
  store %struct.stub* %40, %struct.stub** %10, align 8
  br label %41

41:                                               ; preds = %55, %38
  %42 = load %struct.stub*, %struct.stub** %10, align 8
  %43 = getelementptr inbounds %struct.stub, %struct.stub* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.stub*, %struct.stub** %10, align 8
  %49 = getelementptr inbounds %struct.stub, %struct.stub* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @strcmp(i8* %47, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.stub*, %struct.stub** %10, align 8
  %57 = getelementptr inbounds %struct.stub, %struct.stub* %56, i32 1
  store %struct.stub* %57, %struct.stub** %10, align 8
  br label %41

58:                                               ; preds = %53, %41
  %59 = load %struct.stub*, %struct.stub** %10, align 8
  %60 = getelementptr inbounds %struct.stub, %struct.stub* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.stub*, %struct.stub** %10, align 8
  %65 = getelementptr inbounds %struct.stub, %struct.stub* %64, i32 0, i32 0
  %66 = load i32 (i32, i8**, i8**)*, i32 (i32, i8**, i8**)** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = call i32 %66(i32 %67, i8** %68, i8** %69)
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** @EXECNAME, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74)
  %76 = call i32 (...) @crunched_usage()
  br label %77

77:                                               ; preds = %63, %71
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @crunched_usage(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
