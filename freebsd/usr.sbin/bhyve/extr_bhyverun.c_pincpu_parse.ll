; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_pincpu_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_pincpu_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid format: %s\0A\00", align 1
@VM_MAXCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"vcpu '%d' outside valid range from 0 to %d\0A\00", align 1
@CPU_SETSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"hostcpu '%d' outside valid range from 0 to %d\0A\00", align 1
@vcpumap = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pincpu_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pincpu_parse(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5)
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32 -1, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VM_MAXCPU, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VM_MAXCPU, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %24)
  store i32 -1, i32* %2, align 4
  br label %70

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CPU_SETSIZE, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CPU_SETSIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %37)
  store i32 -1, i32* %2, align 4
  br label %70

39:                                               ; preds = %29
  %40 = load i32**, i32*** @vcpumap, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = call i32* @malloc(i32 4)
  %48 = load i32**, i32*** @vcpumap, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* %47, i32** %51, align 8
  %52 = icmp eq i32* %47, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

55:                                               ; preds = %46
  %56 = load i32**, i32*** @vcpumap, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @CPU_ZERO(i32* %60)
  br label %62

62:                                               ; preds = %55, %39
  %63 = load i32, i32* %5, align 4
  %64 = load i32**, i32*** @vcpumap, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @CPU_SET(i32 %63, i32* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %53, %33, %20, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
