; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pirtool/extr_pirtool.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pirtool/extr_pirtool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_FAILED = common dso_local global i8* null, align 8
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@optind = common dso_local global i64 0, align 8
@_PATH_DEVMEM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PIR_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@PIR_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"PIR table signature not found.\0D\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @basename(i8* %16)
  store i32 %17, i32* @progname, align 4
  br label %18

18:                                               ; preds = %28, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %26 [
    i32 104, label %25
  ]

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %23, %25
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26
  br label %18

29:                                               ; preds = %18
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %29
  %43 = call i32 (...) @banner()
  %44 = load i32, i32* @_PATH_DEVMEM, align 4
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = call i32 @open(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %74

50:                                               ; preds = %42
  %51 = load i32, i32* @PIR_SIZE, align 4
  %52 = load i32, i32* @PROT_READ, align 4
  %53 = load i32, i32* @MAP_SHARED, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @PIR_BASE, align 4
  %56 = call i8* @mmap(i32* null, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** @MAP_FAILED, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %74

62:                                               ; preds = %50
  %63 = load i8*, i8** %11, align 8
  %64 = call i32* @find_pir_table(i8* %63)
  store i32* %64, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @dump_pir_table(i32* %70, i8* %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %60, %48
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** @MAP_FAILED, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @PIR_SIZE, align 4
  %81 = call i32 @munmap(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @close(i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @exit(i32 %96) #3
  unreachable
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @banner(...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @find_pir_table(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dump_pir_table(i32*, i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
