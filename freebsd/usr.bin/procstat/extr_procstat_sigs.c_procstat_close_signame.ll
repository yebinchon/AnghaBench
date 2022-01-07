; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_sigs.c_procstat_close_signame.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_sigs.c_procstat_close_signame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_SIGNUM = common dso_local global i32 0, align 4
@sys_nsig = common dso_local global i32 0, align 4
@sys_signame = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @procstat_close_signame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procstat_close_signame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [12 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @procstat_opts, align 4
  %6 = load i32, i32* @PS_OPT_SIGNUM, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @sys_nsig, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %15 = load i32*, i32** @sys_signame, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlcpy(i8* %14, i32 %19, i32 12)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %13
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @toupper(i8 signext %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %35
  store i8 %33, i8* %36, align 1
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %21
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %42 = call i32 @xo_close_container(i8* %41)
  br label %47

43:                                               ; preds = %9, %1
  %44 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @snprintf(i8* %44, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %49 = call i32 @xo_close_container(i8* %48)
  ret void
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
