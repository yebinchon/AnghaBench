; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_cmdkre.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_cmdkre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@s2 = common dso_local global i32 0, align 4
@s1 = common dso_local global i32 0, align 4
@run_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@num_devices = common dso_local global i32 0, align 4
@generation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@MAXDRIVES = common dso_local global i32 0, align 4
@cur_dev = common dso_local global i32 0, align 4
@RUN = common dso_local global i64 0, align 8
@state = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@BOOT = common dso_local global i64 0, align 8
@z = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@TIME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdkre(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @prefix(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %11 = call i32 @copyinfo(i32* @s2, i32* @s1)
  %12 = call i32 @devstat_getdevs(i32* null, %struct.TYPE_5__* @run_dev)
  switch i32 %12, label %30 [
    i32 -1, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %10
  %14 = load i32, i32* @devstat_errbuf, align 4
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @run_dev, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @num_devices, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @run_dev, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @generation, align 4
  %23 = load i32, i32* @MAXDRIVES, align 4
  %24 = call i32 @dscmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %23, i32* @cur_dev)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 (...) @labelkre()
  br label %29

29:                                               ; preds = %27, %16
  br label %31

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %29, %13
  %32 = load i64, i64* @RUN, align 8
  store i64 %32, i64* @state, align 8
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @prefix(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @BOOT, align 8
  store i64 %39, i64* @state, align 8
  %40 = call i32 @copyinfo(i32* @z, i32* @s1)
  store i32 1, i32* %3, align 4
  br label %90

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @prefix(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @TIME, align 8
  store i64 %46, i64* @state, align 8
  store i32 1, i32* %3, align 4
  br label %90

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @prefix(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  %52 = load i64, i64* @state, align 8
  %53 = load i64, i64* @RUN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = call i32 @getinfo(i32* @s1)
  %57 = call i32 @devstat_getdevs(i32* null, %struct.TYPE_5__* @run_dev)
  switch i32 %57, label %75 [
    i32 -1, label %58
    i32 1, label %61
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @devstat_errbuf, align 4
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %76

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @run_dev, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* @num_devices, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @run_dev, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* @generation, align 4
  %68 = load i32, i32* @MAXDRIVES, align 4
  %69 = call i32 @dscmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %68, i32* @cur_dev)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @labelkre()
  br label %74

74:                                               ; preds = %72, %61
  br label %76

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %74, %58
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %90

79:                                               ; preds = %47
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* @MAXDRIVES, align 4
  %83 = call i32 @dscmd(i8* %80, i8* %81, i32 %82, i32* @cur_dev)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 (...) @labelkre()
  br label %88

88:                                               ; preds = %86, %79
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %77, %45, %38, %31
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @copyinfo(i32*, i32*) #1

declare dso_local i32 @devstat_getdevs(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @dscmd(i8*, i8*, i32, i32*) #1

declare dso_local i32 @labelkre(...) #1

declare dso_local i32 @getinfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
