; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_AllowModes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_AllowModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32* }

@PHYS_NONE = common dso_local global i32 0, align 4
@PHYS_ALL = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"allow modes: %s: Invalid mode\0A\00", align 1
@modereq = common dso_local global i32 0, align 4
@modeok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AllowModes(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @Nam2mode(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PHYS_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PHYS_ALL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %15
  %32 = load i32, i32* @LogWARN, align 4
  %33 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @log_Printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %45

41:                                               ; preds = %27
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i32, i32* @modereq, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* @modeok, align 4
  ret i32 0
}

declare dso_local i32 @Nam2mode(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
