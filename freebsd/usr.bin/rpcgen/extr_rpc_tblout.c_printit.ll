; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_tblout.c_printit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_tblout.c_printit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09xdr_%s,\00", align 1
@TABSIZE = common dso_local global i32 0, align 4
@TABSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tabstr = common dso_local global i32* null, align 8
@TABCOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sizeof ( \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @printit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @fout, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @stringfix(i8* %8)
  %10 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @TABSIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @TABSTOP, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* @TABSIZE, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @TABSIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @fout, align 4
  %24 = load i32*, i32** @tabstr, align 8
  %25 = load i32, i32* @TABCOUNT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = call i32 (i32, i8*, ...) @f_print(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @streq(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @fout, align 4
  %36 = call i32 (i32, i8*, ...) @f_print(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %45

37:                                               ; preds = %2
  %38 = load i32, i32* @fout, align 4
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @ptype(i8* %40, i8* %41, i32 0)
  %43 = load i32, i32* @fout, align 4
  %44 = call i32 (i32, i8*, ...) @f_print(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32, i32* @fout, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @stringfix(i8*) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @ptype(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
