; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_match_jobspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_match_jobspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobqueue = type { i8*, i32 }
%struct.jobspec = type { i32, i32, i32*, i32*, i32, i32* }
%struct.cjobinfo = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"fakeq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jobqueue*, %struct.jobspec*)* @match_jobspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_jobspec(%struct.jobqueue* %0, %struct.jobspec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jobqueue*, align 8
  %5 = alloca %struct.jobspec*, align 8
  %6 = alloca %struct.cjobinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jobqueue* %0, %struct.jobqueue** %4, align 8
  store %struct.jobspec* %1, %struct.jobspec** %5, align 8
  %10 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %11 = icmp eq %struct.jobspec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.jobqueue*, %struct.jobqueue** %4, align 8
  %14 = icmp eq %struct.jobqueue* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %113

16:                                               ; preds = %12
  %17 = load %struct.jobqueue*, %struct.jobqueue** %4, align 8
  %18 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %113

22:                                               ; preds = %16
  %23 = load %struct.jobqueue*, %struct.jobqueue** %4, align 8
  %24 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @calc_jobnum(i8* %25, i8** %7)
  store i32 %26, i32* %8, align 4
  store %struct.cjobinfo* null, %struct.cjobinfo** %6, align 8
  store i32 0, i32* %9, align 4
  %27 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %28 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %30 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %36 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %105

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %43 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %105

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %50 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %55 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @fnmatch(i32* %56, i8* %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %105

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %64 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.jobqueue*, %struct.jobqueue** %4, align 8
  %69 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call %struct.cjobinfo* @ctl_readcf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %70)
  store %struct.cjobinfo* %71, %struct.cjobinfo** %6, align 8
  %72 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %73 = icmp eq %struct.cjobinfo* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %105

75:                                               ; preds = %67
  %76 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %77 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %80 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @fnmatch(i32* %78, i8* %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %105

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %62
  store i32 1, i32* %9, align 4
  %87 = load %struct.jobqueue*, %struct.jobqueue** %4, align 8
  %88 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %90 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %94 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %99 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32* @strdup(i8* %100)
  %102 = load %struct.jobspec*, %struct.jobspec** %5, align 8
  %103 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  br label %104

104:                                              ; preds = %97, %86
  br label %105

105:                                              ; preds = %104, %84, %74, %60, %46, %39
  %106 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %107 = icmp ne %struct.cjobinfo* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %110 = call i32 @ctl_freeinf(%struct.cjobinfo* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %21, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @calc_jobnum(i8*, i8**) #1

declare dso_local i64 @fnmatch(i32*, i8*, i32) #1

declare dso_local %struct.cjobinfo* @ctl_readcf(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @ctl_freeinf(%struct.cjobinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
