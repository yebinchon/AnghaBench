; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"FORTUNE_SAVESTATE\00", align 1
@WriteToDisk = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Match = common dso_local global i64 0, align 8
@Short_only = common dso_local global i64 0, align 8
@SLEN = common dso_local global i64 0, align 8
@Long_only = common dso_local global i64 0, align 8
@Fortfile = common dso_local global %struct.TYPE_3__* null, align 8
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_UN = common dso_local global i32 0, align 4
@Wait = common dso_local global i64 0, align 8
@Fort_len = common dso_local global i32 0, align 4
@CPERS = common dso_local global i32 0, align 4
@MINW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* @WriteToDisk, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @getpath()
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getargs(i32 %14, i8** %15)
  %17 = load i64, i64* @Match, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = call i64 (...) @find_matches()
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %10
  %25 = call i32 (...) @init_prob()
  br label %26

26:                                               ; preds = %44, %24
  %27 = call i32 (...) @get_fort()
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* @Short_only, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i64 (...) @fortlen()
  %33 = load i64, i64* @SLEN, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %31, %28
  %36 = load i64, i64* @Long_only, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i64 (...) @fortlen()
  %40 = load i64, i64* @SLEN, align 8
  %41 = icmp sle i64 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br label %44

44:                                               ; preds = %42, %31
  %45 = phi i1 [ true, %31 ], [ %43, %42 ]
  br i1 %45, label %26, label %46

46:                                               ; preds = %44
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %48 = call i32 @display(%struct.TYPE_3__* %47)
  %49 = load i32, i32* @WriteToDisk, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @creat(i32 %54, i32 438)
  store i32 %55, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @perror(i32 %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LOCK_EX, align 4
  %66 = call i32 @flock(i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @write(i32 %67, i8* %70, i32 4)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %63
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Fortfile, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @chmod(i32 %79, i32 438)
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LOCK_UN, align 4
  %84 = call i32 @flock(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %46
  %86 = load i64, i64* @Wait, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* @Fort_len, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i64 (...) @fortlen()
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* @Fort_len, align 4
  %95 = load i32, i32* @CPERS, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32, i32* @MINW, align 4
  %98 = call i64 @max(i32 %96, i32 %97)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @sleep(i32 %99)
  br label %101

101:                                              ; preds = %93, %85
  %102 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getpath(...) #1

declare dso_local i32 @getargs(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @find_matches(...) #1

declare dso_local i32 @init_prob(...) #1

declare dso_local i32 @get_fort(...) #1

declare dso_local i64 @fortlen(...) #1

declare dso_local i32 @display(%struct.TYPE_3__*) #1

declare dso_local i32 @creat(i32, i32) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
