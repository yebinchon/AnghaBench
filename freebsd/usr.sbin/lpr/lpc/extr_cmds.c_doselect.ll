; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_doselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_doselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@cln_foundcore = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"errs.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*)* @doselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doselect(%struct.dirent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  %5 = load %struct.dirent*, %struct.dirent** %3, align 8
  %6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 99
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 100
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 114
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 116
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %15, %12, %1
  %22 = load %struct.dirent*, %struct.dirent** %3, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 102
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %54

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 99
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.dirent*, %struct.dirent** %3, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to float*
  %37 = call i32 @strcmp(float* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 1, i32* @cln_foundcore, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 101
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.dirent*, %struct.dirent** %3, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to float*
  %49 = call i32 @strncmp(float* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %54

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %28
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @strcmp(float*, i8*) #1

declare dso_local i32 @strncmp(float*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
