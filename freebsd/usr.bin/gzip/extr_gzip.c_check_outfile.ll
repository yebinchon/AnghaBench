; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_check_outfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_check_outfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@lflag = common dso_local global i64 0, align 8
@fflag = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@__const.check_outfile.ans = private unnamed_addr constant <{ i8, [9 x i8] }> <{ i8 110, [9 x i8] zeroinitializer }>, align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s already exists -- do you wish to overwrite (y or n)? \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\09not overwriting\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s already exists -- skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_outfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_outfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load i64, i64* @lflag, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load i64, i64* @fflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @unlink(i8* %16)
  br label %50

18:                                               ; preds = %12
  %19 = load i32, i32* @STDIN_FILENO, align 4
  %20 = call i64 @isatty(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds (<{ i8, [9 x i8] }>, <{ i8, [9 x i8] }>* @__const.check_outfile.ans, i32 0, i32 0), i64 10, i1 false)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* @stdin, align 4
  %29 = call i32 @fgets(i8* %27, i32 9, i32 %28)
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 121
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 89
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

42:                                               ; preds = %34, %22
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @unlink(i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %49

46:                                               ; preds = %18
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @maybe_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %15
  br label %51

51:                                               ; preds = %50, %8, %1
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @isatty(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @maybe_warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
