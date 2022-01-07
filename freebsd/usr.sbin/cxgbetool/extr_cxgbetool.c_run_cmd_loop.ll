; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_run_cmd_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_run_cmd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ARGS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"stdin error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_cmd_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @MAX_ARGS, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8*, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  br label %12

12:                                               ; preds = %71, %59, %0
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %18 = load i32, i32* @stdin, align 4
  %19 = call i8* @fgets(i8* %17, i32 128, i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load i32, i32* @stdin, align 4
  %24 = call i64 @ferror(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %22
  br label %74

30:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %11, i64 %34
  store i8* %32, i8** %35, align 8
  %36 = icmp ne i8* %32, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %11, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @MAX_ARGS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46, %37
  br label %31

53:                                               ; preds = %51, %31
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %11, i64 %55
  store i8* null, i8** %56, align 8
  %57 = load i32, i32* %1, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %12

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8*, i8** %11, i64 0
  %62 = load i8*, i8** %61, align 16
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8*, i8** %11, i64 0
  %67 = load i8*, i8** %66, align 16
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %60
  br label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @run_cmd(i32 %72, i8** %11)
  store i32 %73, i32* %2, align 4
  br label %12

74:                                               ; preds = %70, %29
  %75 = load i32, i32* %2, align 4
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i8* @fgets(i8*, i32, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @run_cmd(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
