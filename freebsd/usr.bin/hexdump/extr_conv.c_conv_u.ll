; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_conv.c_conv_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_conv.c_conv_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@conv_u.list = internal global [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"soh\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"stx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"etx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"eot\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"enq\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bel\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ht\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"vt\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dle\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dc1\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dc2\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dc3\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"dc4\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"nak\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"etb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"esc\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"gs\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@odmode = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" sp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_u(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 31
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8 115, i8* %11, align 1
  %12 = load i64, i64* @odmode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %33

23:                                               ; preds = %14, %8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32 x i8*], [32 x i8*]* @conv_u.list, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* %26, i8* %31)
  br label %33

33:                                               ; preds = %23, %18
  br label %89

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 127
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8 115, i8* %41, align 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  br label %88

46:                                               ; preds = %34
  %47 = load i64, i64* @odmode, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8 115, i8* %56, align 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  br label %87

61:                                               ; preds = %49, %46
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @isprint(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8 99, i8* %69, align 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* %72, i32 %74)
  br label %86

76:                                               ; preds = %61
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8 120, i8* %79, align 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printf(i8* %82, i32 %84)
  br label %86

86:                                               ; preds = %76, %66
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %38
  br label %89

89:                                               ; preds = %88, %33
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
