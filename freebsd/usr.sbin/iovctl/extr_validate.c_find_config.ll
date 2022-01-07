; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_find_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_validate.c_find_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not allocate config nvlist\00", align 1
@DRIVER_CONFIG_NAME = common dso_local global i32 0, align 4
@IOV_CONFIG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @find_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_config(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @dnvlist_take_nvlist(i32* %9, i8* %10, i32* null)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %3, align 8
  br label %47

16:                                               ; preds = %2
  %17 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %18 = call i32* @nvlist_create(i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %25 = call i32* @nvlist_create(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %32 = call i32* @nvlist_create(i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @DRIVER_CONFIG_NAME, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @nvlist_move_nvlist(i32* %38, i32 %39, i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @IOV_CONFIG_NAME, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @nvlist_move_nvlist(i32* %42, i32 %43, i32* %44)
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %37, %14
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32* @dnvlist_take_nvlist(i32*, i8*, i32*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
