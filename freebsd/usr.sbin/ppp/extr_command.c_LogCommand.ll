; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LogCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LogCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32, i32 }

@LINE_LEN = common dso_local global i32 0, align 4
@MAXARGS = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Truncating log command to %d args\0A\00", align 1
@LogLOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @LogCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LogCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %10 = load i32, i32* @LINE_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %1
  %22 = load i32, i32* @MAXARGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %27 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nuw i64 8, %23
  %35 = udiv i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %21
  %39 = mul nuw i64 8, %23
  %40 = udiv i64 %39, 8
  %41 = sub i64 %40, 1
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @LogWARN, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @log_Printf(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %21
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %49 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %52 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (...) @getpid()
  %59 = call i32 @command_Expand(i8** %25, i32 %47, i32 %54, i32 %57, i32 1, i32 %58)
  %60 = trunc i64 %11 to i32
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @Concatinate(i8* %13, i32 %60, i32 %61, i8** %25)
  %63 = load i32, i32* @LogLOG, align 4
  %64 = call i32 (i32, i8*, ...) @log_Printf(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @command_Free(i32 %65, i8** %25)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %69

68:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #2

declare dso_local i32 @command_Expand(i8**, i32, i32, i32, i32, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @Concatinate(i8*, i32, i32, i8**) #2

declare dso_local i32 @command_Free(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
