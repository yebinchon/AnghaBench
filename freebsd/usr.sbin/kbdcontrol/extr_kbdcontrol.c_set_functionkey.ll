; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_set_functionkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_set_functionkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@NUM_FKEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"function key number must be between 1 and %d\00", align 1
@MAXFK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"function key string too long (%d > %d)\00", align 1
@SETFKEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"setting function key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @set_functionkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_functionkey(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @load_default_functionkeys()
  br label %55

15:                                               ; preds = %9, %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @atoi(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NUM_FKEYS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %15
  %28 = load i32, i32* @NUM_FKEYS, align 4
  %29 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %55

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @MAXFK, align 4
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAXFK, align 4
  %40 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39)
  br label %55

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @MAXFK, align 4
  %46 = call i32 @strncpy(i32 %43, i8* %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @SETFKEY, align 4
  %51 = call i64 @ioctl(i32 0, i32 %50, %struct.TYPE_3__* %5)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %13, %27, %36, %53, %41
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @load_default_functionkeys(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
