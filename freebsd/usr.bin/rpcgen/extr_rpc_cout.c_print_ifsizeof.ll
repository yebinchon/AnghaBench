; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_print_ifsizeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_print_ifsizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"sizeof (bool_t), (xdrproc_t) xdr_bool\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sizeof (\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s), (xdrproc_t) xdr_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @print_ifsizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ifsizeof(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* @fout, align 4
  %11 = call i32 (i32, i8*, ...) @f_print(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @fout, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @tabify(i32 %12, i32 %13)
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 (i32, i8*, ...) @f_print(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @streq(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @fout, align 4
  %24 = call i32 (i32, i8*, ...) @f_print(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %43

25:                                               ; preds = %18
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 (i32, i8*, ...) @f_print(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @undefined(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @fout, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @f_print(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %31, %25
  %39 = load i32, i32* @fout, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i32, i8*, ...) @f_print(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @tabify(i32, i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @undefined(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
