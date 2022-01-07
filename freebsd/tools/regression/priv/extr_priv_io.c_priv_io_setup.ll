; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_io.c_priv_io_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_io.c_priv_io_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }
%struct.stat = type { i32 }

@DEV_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"priv_io_setup: stat(%s)\00", align 1
@ALLPERMS = common dso_local global i32 0, align 4
@saved_perms = common dso_local global i32 0, align 4
@EXPECTED_PERMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"priv_io_setup: perms = 0%o; expected 0%o\00", align 1
@NEW_PERMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"priv_io_setup: chmod(%s, 0%o)\00", align 1
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_io_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  %8 = alloca %struct.stat, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  %9 = load i32, i32* @DEV_IO, align 4
  %10 = call i64 @stat(i32 %9, %struct.stat* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @DEV_IO, align 4
  %14 = call i32 (i8*, i32, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %4, align 4
  br label %37

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ALLPERMS, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* @saved_perms, align 4
  %20 = load i32, i32* @saved_perms, align 4
  %21 = load i32, i32* @EXPECTED_PERMS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @saved_perms, align 4
  %25 = load i32, i32* @EXPECTED_PERMS, align 4
  %26 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  store i32 -1, i32* %4, align 4
  br label %37

27:                                               ; preds = %15
  %28 = load i32, i32* @DEV_IO, align 4
  %29 = load i32, i32* @NEW_PERMS, align 4
  %30 = call i64 @chmod(i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @DEV_IO, align 4
  %34 = load i32, i32* @NEW_PERMS, align 4
  %35 = call i32 (i8*, i32, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  store i32 -1, i32* %4, align 4
  br label %37

36:                                               ; preds = %27
  store i32 1, i32* @initialized, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %32, %23, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i32, ...) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i64 @chmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
