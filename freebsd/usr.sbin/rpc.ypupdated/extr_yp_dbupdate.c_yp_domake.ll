; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbupdate.c_yp_domake.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_yp_dbupdate.c_yp_domake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_UPDATE_PATH = common dso_local global i32 0, align 4
@MAP_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"couldn't exec map update process: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fork() failed: %s\00", align 1
@YPERR_YPERR = common dso_local global i32 0, align 4
@children = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @yp_domake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yp_domake(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @fork()
  store i32 %7, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 0, label %8
    i32 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @MAP_UPDATE_PATH, align 4
  %10 = load i32, i32* @MAP_UPDATE, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @execlp(i32 %9, i32 %10, i8* %11, i8* %12, i8* null)
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @yp_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @YPERR_YPERR, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @children, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @children, align 4
  br label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @execlp(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @yp_error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
