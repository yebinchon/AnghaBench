; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_prepend_cpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_prepend_cpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"RPCGEN_CPP\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/usr/bin/cpp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@CPPFLAGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepend_cpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepend_cpp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 1, i32* %1, align 4
  %6 = load i8*, i8** @CPP, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** @CPP, align 8
  %10 = call i32 @insarg(i32 0, i8* %9)
  br label %38

11:                                               ; preds = %0
  %12 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @insarg(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %37

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @xstrdup(i8* %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %33, %16
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @insarg(i32 %29, i8* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %20

34:                                               ; preds = %20
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %34, %14
  br label %38

38:                                               ; preds = %37, %8
  %39 = load i32, i32* %1, align 4
  %40 = load i8*, i8** @CPPFLAGS, align 8
  %41 = call i32 @insarg(i32 %39, i8* %40)
  ret void
}

declare dso_local i32 @insarg(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
