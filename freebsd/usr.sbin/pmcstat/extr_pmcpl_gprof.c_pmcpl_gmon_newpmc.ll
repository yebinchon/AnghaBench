; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcpl_gmon_newpmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_gprof.c_pmcpl_gmon_newpmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.pmcstat_pmcrecord = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Cannot create directory \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_gmon_newpmc(i32 %0, %struct.pmcstat_pmcrecord* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmcstat_pmcrecord*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %4, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %14 = trunc i64 %10 to i32
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @pmcstat_string_unintern(i32 %16)
  %18 = call i32 @snprintf(i8* %12, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %17)
  %19 = call i64 @stat(i8* %12, %struct.stat* %5)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %43

27:                                               ; preds = %21, %2
  %28 = load i32, i32* @S_IRWXU, align 4
  %29 = load i32, i32* @S_IRGRP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IXGRP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IROTH, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @S_IXOTH, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @mkdir(i8* %12, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EX_OSERR, align 4
  %41 = call i32 @err(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %42

42:                                               ; preds = %39, %27
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
    i32 1, label %46
  ]

46:                                               ; preds = %43, %43
  ret void

47:                                               ; preds = %43
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @pmcstat_string_unintern(i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
