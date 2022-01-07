; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_util.c_ptype.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_util.c_ptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bool_t \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptype(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @streq(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @fout, align 4
  %15 = call i32 (i32, i8*, ...) @f_print(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @fout, align 4
  %18 = call i32 (i32, i8*, ...) @f_print(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @streq(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @fout, align 4
  %26 = call i32 (i32, i8*, ...) @f_print(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %47

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @fout, align 4
  %33 = call i32 (i32, i8*, ...) @f_print(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %46

34:                                               ; preds = %27
  %35 = load i32, i32* @fout, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @fixtype(i8* %39)
  br label %43

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i8* [ %40, %38 ], [ %42, %41 ]
  %45 = call i32 (i32, i8*, ...) @f_print(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %24
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i8* @fixtype(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
