; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rwall/extr_rwall.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rwall/extr_rwall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@WALLPROG = common dso_local global i32 0, align 4
@WALLVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WALLPROC_WALL = common dso_local global i32 0, align 4
@xdr_wrapstring = common dso_local global i64 0, align 8
@mbuf = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = call i32 (...) @usage()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @makemsg(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @WALLPROG, align 4
  %27 = load i32, i32* @WALLVERS, align 4
  %28 = call i32* @clnt_create(i8* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @clnt_spcreateerror(i8* %32)
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %17
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 15, i32* %36, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @WALLPROC_WALL, align 4
  %40 = load i64, i64* @xdr_wrapstring, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* @xdr_void, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @clnt_call(i32* %38, i32 %39, i32 %41, i32* @mbuf, i32 %43, i8* %7, %struct.timeval* byval(%struct.timeval) align 8 %9)
  %45 = load i64, i64* @RPC_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @clnt_sperror(i32* %48, i8* %49)
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %35
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @makemsg(i8*) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
