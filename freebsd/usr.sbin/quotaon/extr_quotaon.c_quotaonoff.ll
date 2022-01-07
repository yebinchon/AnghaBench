; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quotaon/extr_quotaon.c_quotaonoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quotaon/extr_quotaon.c_quotaonoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32 }
%struct.quotafile = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@vflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: quotas turned off\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"using %s on %s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: %s quotas turned on with data file %s\0A\00", align 1
@qfextension = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fstab*, i32, i32)* @quotaonoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaonoff(%struct.fstab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fstab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.quotafile*, align 8
  store %struct.fstab* %0, %struct.fstab** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fstab*, %struct.fstab** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call %struct.quotafile* @quota_open(%struct.fstab* %9, i32 %10, i32 %11)
  store %struct.quotafile* %12, %struct.quotafile** %8, align 8
  %13 = icmp eq %struct.quotafile* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %20 = call i64 @quota_off(%struct.quotafile* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %24 = call i8* @quota_fsname(%struct.quotafile* %23)
  %25 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 1, i32* %4, align 4
  br label %63

26:                                               ; preds = %18
  %27 = load i64, i64* @vflag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %31 = call i8* @quota_fsname(%struct.quotafile* %30)
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %35 = call i32 @quota_close(%struct.quotafile* %34)
  store i32 0, i32* %4, align 4
  br label %63

36:                                               ; preds = %15
  %37 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %38 = call i64 @quota_on(%struct.quotafile* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %42 = call i8* @quota_qfname(%struct.quotafile* %41)
  %43 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %44 = call i8* @quota_fsname(%struct.quotafile* %43)
  %45 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %44)
  store i32 1, i32* %4, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load i64, i64* @vflag, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %51 = call i8* @quota_fsname(%struct.quotafile* %50)
  %52 = load i8**, i8*** @qfextension, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %58 = call i8* @quota_qfname(%struct.quotafile* %57)
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %56, i8* %58)
  br label %60

60:                                               ; preds = %49, %46
  %61 = load %struct.quotafile*, %struct.quotafile** %8, align 8
  %62 = call i32 @quota_close(%struct.quotafile* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %40, %33, %22, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.quotafile* @quota_open(%struct.fstab*, i32, i32) #1

declare dso_local i64 @quota_off(%struct.quotafile*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i8* @quota_fsname(%struct.quotafile*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @quota_close(%struct.quotafile*) #1

declare dso_local i64 @quota_on(%struct.quotafile*) #1

declare dso_local i8* @quota_qfname(%struct.quotafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
