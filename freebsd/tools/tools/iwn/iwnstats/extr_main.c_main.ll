; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwnstats = type { i32 }

@IWN_DEFAULT_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hi:\00", align 1
@optarg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: couldn't allocate new stats structure\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: fetch failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iwnstats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @IWN_DEFAULT_IF, align 4
  %14 = call i8* @strdup(i32 %13)
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %31 [
    i32 105, label %22
    i32 63, label %32
    i32 104, label %32
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @free(i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @optarg, align 4
  %30 = call i8* @strdup(i32 %29)
  store i8* %30, i8** %8, align 8
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %20, %20, %31
  %33 = call i32 (...) @usage()
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %28
  br label %15

36:                                               ; preds = %15
  %37 = load i8*, i8** %8, align 8
  %38 = call %struct.iwnstats* @iwnstats_new(i8* %37)
  store %struct.iwnstats* %38, %struct.iwnstats** %6, align 8
  %39 = load %struct.iwnstats*, %struct.iwnstats** %6, align 8
  %40 = icmp eq %struct.iwnstats* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = call i32 @exit(i32 127) #3
  unreachable

48:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %66
  %50 = load %struct.iwnstats*, %struct.iwnstats** %6, align 8
  %51 = call i64 @iwn_collect(%struct.iwnstats* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  ret i32 1

62:                                               ; preds = %53
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.iwnstats*, %struct.iwnstats** %6, align 8
  %65 = call i32 @iwn_print(%struct.iwnstats* %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = call i32 @usleep(i32 100000)
  store i32 0, i32* %9, align 4
  br label %49
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.iwnstats* @iwnstats_new(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @iwn_collect(%struct.iwnstats*) #1

declare dso_local i32 @iwn_print(%struct.iwnstats*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
