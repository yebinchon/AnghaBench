; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_bootargs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_bootargs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlp_hw_thread_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@boothowto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xlp_bootargs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_bootargs_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @xlp_hw_thread_mask, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %37, %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlcpy(i8* %23, i8* %24, i32 2048)
  %26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  store i8* %26, i8** %5, align 8
  %27 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @kern_setenv(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @kern_setenv(i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %4, align 8
  br label %17

43:                                               ; preds = %17
  %44 = call i64 @getenv_uint(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* @xlp_hw_thread_mask, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i8* @kern_getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlcpy(i8* %53, i8* %54, i32 2048)
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %57 = call i32 @boot_parse_cmdline(i8* %56)
  %58 = load i32, i32* @boothowto, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @boothowto, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @freeenv(i8* %60)
  br label %62

62:                                               ; preds = %11, %52, %48
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kern_setenv(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @getenv_uint(i8*, i32*) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @boot_parse_cmdline(i8*) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
