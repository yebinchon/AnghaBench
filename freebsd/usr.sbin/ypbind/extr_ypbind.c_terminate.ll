; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._dom_binding = type { i8*, i32, i64, i32, %struct._dom_binding* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ppid = common dso_local global i64 0, align 8
@ypbindlist = common dso_local global %struct._dom_binding* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/%s.%ld\00", align 1
@BINDINGDIR = common dso_local global i8* null, align 8
@yplockfd = common dso_local global i32 0, align 4
@YPBINDLOCK = common dso_local global i8* null, align 8
@YPBINDPROG = common dso_local global i32 0, align 4
@YPBINDVERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._dom_binding*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MAXPATHLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i64, i64* @ppid, align 8
  %11 = call i64 (...) @getpid()
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @exit(i32 0) #4
  unreachable

15:                                               ; preds = %1
  %16 = load %struct._dom_binding*, %struct._dom_binding** @ypbindlist, align 8
  store %struct._dom_binding* %16, %struct._dom_binding** %3, align 8
  br label %17

17:                                               ; preds = %45, %15
  %18 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %19 = icmp ne %struct._dom_binding* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %22 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  %25 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %26 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %31 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @SIGINT, align 4
  %34 = call i32 @kill(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i8*, i8** @BINDINGDIR, align 8
  %37 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %38 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %41 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39, i32 %42)
  %44 = call i32 @unlink(i8* %9)
  br label %45

45:                                               ; preds = %35
  %46 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %47 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %46, i32 0, i32 4
  %48 = load %struct._dom_binding*, %struct._dom_binding** %47, align 8
  store %struct._dom_binding* %48, %struct._dom_binding** %3, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load i32, i32* @yplockfd, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i8*, i8** @YPBINDLOCK, align 8
  %53 = call i32 @unlink(i8* %52)
  %54 = load i32, i32* @YPBINDPROG, align 4
  %55 = load i32, i32* @YPBINDVERS, align 4
  %56 = call i32 @pmap_unset(i32 %54, i32 %55)
  %57 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getpid(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @close(i32) #2

declare dso_local i32 @kill(i64, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pmap_unset(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
