; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/chown/extr_chown.c_chownerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/chown/extr_chown.c_chownerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chownerr.euid = internal global i64 -1, align 8
@chownerr.ngroups = internal global i32 -1, align 4
@chownerr.ngroups_max = internal global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@uid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@gid = common dso_local global i64 0, align 8
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"you are not a member of group %s\00", align 1
@gname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @chownerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chownerr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @errno, align 8
  %5 = load i64, i64* @EPERM, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @uid, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i64, i64* @chownerr.euid, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call i64 (...) @geteuid()
  store i64 %14, i64* @chownerr.euid, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %74

19:                                               ; preds = %13, %10, %7
  %20 = load i64, i64* @gid, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %71

22:                                               ; preds = %19
  %23 = load i32, i32* @chownerr.ngroups, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i64, i64* @chownerr.euid, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = call i64 (...) @geteuid()
  store i64 %29, i64* @chownerr.euid, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %28
  %32 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %33 = call i32 @sysconf(i32 %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* @chownerr.ngroups_max, align 8
  %36 = load i64, i64* @chownerr.ngroups_max, align 8
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64* @malloc(i32 %38)
  store i64* %39, i64** %3, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i64, i64* @chownerr.ngroups_max, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = call i32 @getgroups(i64 %44, i64* %45)
  store i32 %46, i32* @chownerr.ngroups, align 4
  br label %47

47:                                               ; preds = %61, %43
  %48 = load i32, i32* @chownerr.ngroups, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @chownerr.ngroups, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* @gid, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i32, i32* @chownerr.ngroups, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br label %59

59:                                               ; preds = %51, %47
  %60 = phi i1 [ false, %47 ], [ %58, %51 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %47

62:                                               ; preds = %59
  %63 = load i64*, i64** %3, align 8
  %64 = call i32 @free(i64* %63)
  %65 = load i32, i32* @chownerr.ngroups, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @gname, align 4
  %69 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %28, %25, %22, %19
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %67, %16
  ret void
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getgroups(i64, i64*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
