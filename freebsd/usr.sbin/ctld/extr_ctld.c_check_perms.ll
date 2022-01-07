; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_check_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_check_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@S_IWOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s is world-writable\00", align 1
@S_IROTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s is world-readable\00", align 1
@S_IXOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s is world-executable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_perms(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @stat(i8* %5, %struct.stat* %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @log_warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %40

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @S_IWOTH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @log_warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %40

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IROTH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @log_warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %39

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @S_IXOTH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @log_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %26
  br label %40

40:                                               ; preds = %9, %39, %17
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
