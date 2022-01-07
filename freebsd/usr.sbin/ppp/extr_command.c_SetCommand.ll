; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i64, i64, i64, i32, i32, i32 }

@SetCommands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Use `set ?' to get a list or `set ? <var>' for syntax help.\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"set command must have arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @SetCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %3 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %4 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SetCommands, align 4
  %15 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @FindExec(i32 %13, i32 %14, i64 %17, i64 %20, i32 %23, i64 %26, i32 %29)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @prompt_Printf(i64 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @LogWARN, align 4
  %43 = call i32 @log_Printf(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %10
  ret i32 0
}

declare dso_local i32 @FindExec(i32, i32, i64, i64, i32, i64, i32) #1

declare dso_local i32 @prompt_Printf(i64, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
