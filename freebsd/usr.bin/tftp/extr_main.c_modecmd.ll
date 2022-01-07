; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_modecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_modecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modes = type { i32*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Using %s mode to transfer files.\0A\00", align 1
@mode = common dso_local global i8* null, align 8
@modes = common dso_local global %struct.modes* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: unknown mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"usage: %s [\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @modecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modecmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.modes*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** @mode, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load %struct.modes*, %struct.modes** @modes, align 8
  store %struct.modes* %16, %struct.modes** %5, align 8
  br label %17

17:                                               ; preds = %33, %15
  %18 = load %struct.modes*, %struct.modes** %5, align 8
  %19 = getelementptr inbounds %struct.modes, %struct.modes* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.modes*, %struct.modes** %5, align 8
  %27 = getelementptr inbounds %struct.modes, %struct.modes* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @strcmp(i8* %25, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.modes*, %struct.modes** %5, align 8
  %35 = getelementptr inbounds %struct.modes, %struct.modes* %34, i32 1
  store %struct.modes* %35, %struct.modes** %5, align 8
  br label %17

36:                                               ; preds = %31, %17
  %37 = load %struct.modes*, %struct.modes** %5, align 8
  %38 = getelementptr inbounds %struct.modes, %struct.modes* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.modes*, %struct.modes** %5, align 8
  %43 = getelementptr inbounds %struct.modes, %struct.modes* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @settftpmode(i32 %44)
  br label %79

46:                                               ; preds = %36
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %12
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %56 = load %struct.modes*, %struct.modes** @modes, align 8
  store %struct.modes* %56, %struct.modes** %5, align 8
  br label %57

57:                                               ; preds = %74, %51
  %58 = load %struct.modes*, %struct.modes** %5, align 8
  %59 = getelementptr inbounds %struct.modes, %struct.modes* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.modes*, %struct.modes** %5, align 8
  %65 = getelementptr inbounds %struct.modes, %struct.modes* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %63, i32* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.modes*, %struct.modes** %5, align 8
  %76 = getelementptr inbounds %struct.modes, %struct.modes* %75, i32 1
  store %struct.modes* %76, %struct.modes** %5, align 8
  br label %57

77:                                               ; preds = %57
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %41, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @settftpmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
