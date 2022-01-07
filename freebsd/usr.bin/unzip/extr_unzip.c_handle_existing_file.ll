; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_handle_existing_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_handle_existing_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"replace %s? [y]es, [n]o, [A]ll, [N]one, [r]ename: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"NULL\0A(EOF or read error, treating as \22[N]one\22...)\0A\00", align 1
@n_opt = common dso_local global i32 0, align 4
@o_opt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"New name: \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @handle_existing_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_existing_file(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store i8** %0, i8*** %3, align 8
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %13 = load i32, i32* @stdin, align 4
  %14 = call i32* @fgets(i8* %12, i32 4, i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load i32, i32* @stdin, align 4
  %18 = call i32 @clearerr(i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @n_opt, align 4
  store i32 -1, i32* %2, align 4
  br label %61

20:                                               ; preds = %7
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %59 [
    i32 65, label %24
    i32 121, label %25
    i32 89, label %25
    i32 78, label %29
    i32 110, label %30
    i32 114, label %31
    i32 82, label %31
  ]

24:                                               ; preds = %20
  store i32 1, i32* @o_opt, align 4
  br label %25

25:                                               ; preds = %20, %20, %24
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @unlink(i8* %27)
  store i32 1, i32* %2, align 4
  br label %61

29:                                               ; preds = %20
  store i32 1, i32* @n_opt, align 4
  br label %30

30:                                               ; preds = %20, %29
  store i32 -1, i32* %2, align 4
  br label %61

31:                                               ; preds = %20, %20
  %32 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load i8**, i8*** %3, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i8**, i8*** %3, align 8
  store i8* null, i8** %38, align 8
  store i64 0, i64* %4, align 8
  %39 = load i8**, i8*** %3, align 8
  %40 = load i32, i32* @stdin, align 4
  %41 = call i32 @getdelim(i8** %39, i64* %4, i8 signext 10, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %58

51:                                               ; preds = %31
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %51, %31
  store i32 0, i32* %2, align 4
  br label %61

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %59
  br label %7

61:                                               ; preds = %58, %30, %25, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @clearerr(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getdelim(i8**, i64*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
