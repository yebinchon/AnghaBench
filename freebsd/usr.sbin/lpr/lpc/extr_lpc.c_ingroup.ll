; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_ingroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_ingroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64 }

@ingroup.gptr = internal global %struct.group* null, align 8
@ingroup.ngroups = internal global i32 0, align 4
@ingroup.ngroups_max = internal global i64 0, align 8
@ingroup.groups = internal global i64* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"warning: unknown group '%s'\00", align 1
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getgroups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ingroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingroup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.group*, %struct.group** @ingroup.gptr, align 8
  %7 = icmp eq %struct.group* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.group* @getgrnam(i8* %9)
  store %struct.group* %10, %struct.group** @ingroup.gptr, align 8
  %11 = icmp eq %struct.group* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %8
  %16 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %17 = call i64 @sysconf(i32 %16)
  store i64 %17, i64* @ingroup.ngroups_max, align 8
  %18 = load i64, i64* @ingroup.ngroups_max, align 8
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64* @malloc(i32 %20)
  store i64* %21, i64** @ingroup.groups, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i64, i64* @ingroup.ngroups_max, align 8
  %27 = load i64*, i64** @ingroup.groups, align 8
  %28 = call i32 @getgroups(i64 %26, i64* %27)
  store i32 %28, i32* @ingroup.ngroups, align 4
  %29 = load i32, i32* @ingroup.ngroups, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.group*, %struct.group** @ingroup.gptr, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %52, %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ingroup.ngroups, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64*, i64** @ingroup.groups, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %56

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %38

55:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getgroups(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
