; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_name.c_NameCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_name.c_NameCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_name = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"send msg\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @NameCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NameCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ngm_name, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %19 [
    i32 3, label %9
  ]

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = getelementptr inbounds %struct.ngm_name, %struct.ngm_name* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %9
  %22 = load i32, i32* @csock, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %25 = load i32, i32* @NGM_NAME, align 4
  %26 = call i64 @NgSendMsg(i32 %22, i8* %23, i32 %24, i32 %25, %struct.ngm_name* %6, i32 4)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_name*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
