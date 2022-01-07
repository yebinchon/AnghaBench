; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_find_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_find_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pmcstat_target = type { i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@pmcstat_find_targets.kp = internal global %struct.kinfo_proc* null, align 8
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pt_next = common dso_local global i32 0, align 4
@pmcstat_kvm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: Cannot open kernel \22%s\22\00", align 1
@KERN_PROC_PROC = common dso_local global i32 0, align 4
@pmcstat_plist = common dso_local global %struct.kinfo_proc* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: Cannot get process list: %s\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"ERROR: Failed to compile regex \22%s\22: %s\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"ERROR: Regex evalation failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_find_targets(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmcstat_target*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strtol(i8* %18, i8** %10, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = call %struct.pmcstat_target* @malloc(i32 4)
  store %struct.pmcstat_target* %27, %struct.pmcstat_target** %7, align 8
  %28 = icmp eq %struct.pmcstat_target* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %118

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.pmcstat_target*, %struct.pmcstat_target** %7, align 8
  %33 = getelementptr inbounds %struct.pmcstat_target, %struct.pmcstat_target* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pmcstat_target*, %struct.pmcstat_target** %7, align 8
  %35 = load i32, i32* @pt_next, align 4
  %36 = call i32 @SLIST_INSERT_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), %struct.pmcstat_target* %34, i32 %35)
  store i32 1, i32* %13, align 4
  br label %121

37:                                               ; preds = %23, %1
  %38 = load i32*, i32** @pmcstat_kvm, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = call i32* @kvm_openfiles(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i8* %17)
  store i32* %41, i32** @pmcstat_kvm, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EX_OSERR, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** @pmcstat_kvm, align 8
  %48 = load i32, i32* @KERN_PROC_PROC, align 4
  %49 = call %struct.kinfo_proc* @kvm_getprocs(i32* %47, i32 %48, i32 0, i32* %4)
  store %struct.kinfo_proc* %49, %struct.kinfo_proc** @pmcstat_plist, align 8
  %50 = icmp eq %struct.kinfo_proc* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @EX_OSERR, align 4
  %53 = load i32*, i32** @pmcstat_kvm, align 8
  %54 = call i32 @kvm_geterr(i32* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i32, i8*, i8*, ...) @err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %51, %46
  br label %60

59:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i8*, i8** %2, align 8
  %62 = load i32, i32* @REG_EXTENDED, align 4
  %63 = load i32, i32* @REG_NOSUB, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @regcomp(i32* %11, i8* %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = trunc i64 %15 to i32
  %70 = call i32 @regerror(i32 %68, i32* %11, i8* %17, i32 %69)
  %71 = load i32, i32* @EX_DATAERR, align 4
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 (i32, i8*, i8*, ...) @err(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %17)
  br label %74

74:                                               ; preds = %67, %60
  store i32 0, i32* %3, align 4
  %75 = load %struct.kinfo_proc*, %struct.kinfo_proc** @pmcstat_plist, align 8
  store %struct.kinfo_proc* %75, %struct.kinfo_proc** @pmcstat_find_targets.kp, align 8
  br label %76

76:                                               ; preds = %111, %74
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = load %struct.kinfo_proc*, %struct.kinfo_proc** @pmcstat_find_targets.kp, align 8
  %82 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regexec(i32* %11, i32 %83, i32 1, i32* %12, i32 0)
  store i32 %84, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = call %struct.pmcstat_target* @malloc(i32 4)
  store %struct.pmcstat_target* %87, %struct.pmcstat_target** %7, align 8
  %88 = icmp eq %struct.pmcstat_target* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %118

90:                                               ; preds = %86
  %91 = load %struct.kinfo_proc*, %struct.kinfo_proc** @pmcstat_find_targets.kp, align 8
  %92 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pmcstat_target*, %struct.pmcstat_target** %7, align 8
  %95 = getelementptr inbounds %struct.pmcstat_target, %struct.pmcstat_target* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.pmcstat_target*, %struct.pmcstat_target** %7, align 8
  %97 = load i32, i32* @pt_next, align 4
  %98 = call i32 @SLIST_INSERT_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), %struct.pmcstat_target* %96, i32 %97)
  br label %110

99:                                               ; preds = %80
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @REG_NOMATCH, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = trunc i64 %15 to i32
  %106 = call i32 @regerror(i32 %104, i32* %11, i8* %17, i32 %105)
  %107 = load i32, i32* @EX_SOFTWARE, align 4
  %108 = call i32 (i32, i8*, ...) @errx(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %109

109:                                              ; preds = %103, %99
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  %114 = load %struct.kinfo_proc*, %struct.kinfo_proc** @pmcstat_find_targets.kp, align 8
  %115 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %114, i32 1
  store %struct.kinfo_proc* %115, %struct.kinfo_proc** @pmcstat_find_targets.kp, align 8
  br label %76

116:                                              ; preds = %76
  %117 = call i32 @regfree(i32* %11)
  store i32 1, i32* %13, align 4
  br label %121

118:                                              ; preds = %89, %29
  %119 = load i32, i32* @EX_SOFTWARE, align 4
  %120 = call i32 (i32, i8*, ...) @errx(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %116, %30
  %122 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %13, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local %struct.pmcstat_target* @malloc(i32) #2

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pmcstat_target*, i32) #2

declare dso_local i32* @kvm_openfiles(i32*, i8*, i32*, i32, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i32, i32*) #2

declare dso_local i32 @kvm_geterr(i32*) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @regexec(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @regfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
