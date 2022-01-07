; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_dir_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_dir_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@srcdirs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dir_search(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @srcdirs, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  br label %14

14:                                               ; preds = %34, %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @snprintf(i8* %12, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = call i32 @is_dir(i8* %12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %34

27:                                               ; preds = %17
  %28 = call i8* @strdup(i8* %12)
  store i8* %28, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @out_of_memory()
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %6, align 8
  br label %14

38:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @is_dir(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @out_of_memory(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
