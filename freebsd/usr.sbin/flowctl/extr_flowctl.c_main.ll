; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/flowctl/extr_flowctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/flowctl/extr_flowctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NG_NODESIZ = common dso_local global i32 0, align 4
@SORCVBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"d:\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ng_path = common dso_local global i8* null, align 8
@NG_PATHSIZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"flowctl%i\00", align 1
@cs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NgMkSockNode\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"setsockopt(SOL_SOCKET, SO_RCVBUF)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @NG_NODESIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @SORCVBUF_SIZE, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %26, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %26 [
    i32 100, label %22
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @atoi(i32 %23)
  %25 = call i32 @NgSetDebug(i32 %24)
  br label %26

26:                                               ; preds = %20, %22
  br label %15

27:                                               ; preds = %15
  %28 = load i64, i64* @optind, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* @optind, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8** %35, i8*** %5, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** @ng_path, align 8
  %39 = load i8*, i8** @ng_path, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load i8*, i8** @ng_path, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* @NG_PATHSIZ, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %27
  %47 = call i32 (...) @help()
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  %53 = trunc i64 %11 to i32
  %54 = call i32 (...) @getpid()
  %55 = call i32 @snprintf(i8* %13, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @NgMkSockNode(i8* %13, i32* @cs, i32* null)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %48
  %61 = load i32, i32* @cs, align 4
  %62 = load i32, i32* @SOL_SOCKET, align 4
  %63 = load i32, i32* @SO_RCVBUF, align 4
  %64 = call i32 @setsockopt(i32 %61, i32 %62, i32 %63, i32* %9, i32 4)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = call i32 @execute_command(i32 %69, i8** %70)
  %72 = load i32, i32* @cs, align 4
  %73 = call i32 @close(i32 %72)
  %74 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @NgSetDebug(i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @help(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @NgMkSockNode(i8*, i32*, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @execute_command(i32, i8**) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
