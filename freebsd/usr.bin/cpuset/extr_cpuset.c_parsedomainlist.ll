; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_parsedomainlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_parsedomainlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numa_policy = type { i32, i32* }
%struct.bitset = type { i32 }

@CPU_LEVEL_ROOT = common dso_local global i32 0, align 4
@CPU_WHICH_PID = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getdomain\00", align 1
@policies = common dso_local global %struct.numa_policy* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Malformed list %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@DOMAINSET_SETSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @parsedomainlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsedomainlist(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.numa_policy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @CPU_LEVEL_ROOT, align 4
  %12 = load i32, i32* @CPU_WHICH_PID, align 4
  %13 = call i64 @cpuset_getdomain(i32 %11, i32 %12, i32 -1, i32 4, i32* %7, i32* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @err(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.numa_policy*, %struct.numa_policy** @policies, align 8
  %21 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %20, i64 0
  store %struct.numa_policy* %21, %struct.numa_policy** %8, align 8
  br label %22

22:                                               ; preds = %72, %18
  %23 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %24 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %30 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %33 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @strlen(i32* %34)
  %36 = call i64 @strncasecmp(i8* %28, i32* %31, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %27
  %39 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %40 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %43 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @strlen(i32* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 58
  br i1 %52, label %53, label %62

53:                                               ; preds = %38
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %53, %38
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %67, %62
  br label %75

71:                                               ; preds = %27
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.numa_policy*, %struct.numa_policy** %8, align 8
  %74 = getelementptr inbounds %struct.numa_policy, %struct.numa_policy* %73, i32 1
  store %struct.numa_policy* %74, %struct.numa_policy** %8, align 8
  br label %22

75:                                               ; preds = %70, %22
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @strcasecmp(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %75
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @DOMAINSET_COPY(i32* %7, i32* %87)
  br label %95

89:                                               ; preds = %81
  %90 = load i8*, i8** %9, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = bitcast i32* %91 to %struct.bitset*
  %93 = load i32, i32* @DOMAINSET_SETSIZE, align 4
  %94 = call i32 @parselist(i8* %90, %struct.bitset* %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %86
  ret void
}

declare dso_local i64 @cpuset_getdomain(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @DOMAINSET_COPY(i32*, i32*) #1

declare dso_local i32 @parselist(i8*, %struct.bitset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
