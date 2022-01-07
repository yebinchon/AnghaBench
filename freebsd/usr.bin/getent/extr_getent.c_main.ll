; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getentdb = type { i32 (i32, i8**)*, i32* }

@databases = common dso_local global %struct.getentdb* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown database: %s\0A\00", align 1
@RV_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.getentdb*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @setprogname(i8* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.getentdb*, %struct.getentdb** @databases, align 8
  store %struct.getentdb* %16, %struct.getentdb** %6, align 8
  br label %17

17:                                               ; preds = %40, %15
  %18 = load %struct.getentdb*, %struct.getentdb** %6, align 8
  %19 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load %struct.getentdb*, %struct.getentdb** %6, align 8
  %24 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i32* %25, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.getentdb*, %struct.getentdb** %6, align 8
  %33 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %32, i32 0, i32 0
  %34 = load i32 (i32, i8**)*, i32 (i32, i8**)** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 %34(i32 %35, i8** %36)
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.getentdb*, %struct.getentdb** %6, align 8
  %42 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %41, i32 1
  store %struct.getentdb* %42, %struct.getentdb** %6, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 (...) @usage()
  %50 = load i32, i32* @RV_USAGE, align 4
  ret i32 %50
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
