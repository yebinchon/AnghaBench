; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_find_pf_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_find_pf_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Config PF.device must be a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @find_pf_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_pf_device(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @ucl_iterate_object(i32* %9, i32** %4, i32 1)
  store i32* %10, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @ucl_object_key(i32* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ucl_object_tostring_safe(i32* %19, i8** %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %2, align 8
  br label %28

26:                                               ; preds = %12
  br label %8

27:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i32* @ucl_iterate_object(i32*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ucl_object_tostring_safe(i32*, i8**) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
