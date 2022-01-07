; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_enterlabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_enterlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.labhash = type { i32, i64, %struct.s_command*, %struct.labhash* }
%struct.s_command = type { i64 }

@labels = common dso_local global %struct.labhash** null, align 8
@LHMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%lu: %s: duplicate label '%s'\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_command*)* @enterlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enterlabel(%struct.s_command* %0) #0 {
  %2 = alloca %struct.s_command*, align 8
  %3 = alloca %struct.labhash**, align 8
  %4 = alloca %struct.labhash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_command* %0, %struct.s_command** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.s_command*, %struct.s_command** %2, align 8
  %9 = getelementptr inbounds %struct.s_command, %struct.s_command* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 5
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.labhash**, %struct.labhash*** @labels, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LHMASK, align 4
  %30 = and i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.labhash*, %struct.labhash** %27, i64 %31
  store %struct.labhash** %32, %struct.labhash*** %3, align 8
  %33 = load %struct.labhash**, %struct.labhash*** %3, align 8
  %34 = load %struct.labhash*, %struct.labhash** %33, align 8
  store %struct.labhash* %34, %struct.labhash** %4, align 8
  br label %35

35:                                               ; preds = %63, %26
  %36 = load %struct.labhash*, %struct.labhash** %4, align 8
  %37 = icmp ne %struct.labhash* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load %struct.labhash*, %struct.labhash** %4, align 8
  %40 = getelementptr inbounds %struct.labhash, %struct.labhash* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.s_command*, %struct.s_command** %2, align 8
  %46 = getelementptr inbounds %struct.s_command, %struct.s_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.labhash*, %struct.labhash** %4, align 8
  %49 = getelementptr inbounds %struct.labhash, %struct.labhash* %48, i32 0, i32 2
  %50 = load %struct.s_command*, %struct.s_command** %49, align 8
  %51 = getelementptr inbounds %struct.s_command, %struct.s_command* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @strcmp(i64 %47, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @linenum, align 4
  %57 = load i32, i32* @fname, align 4
  %58 = load %struct.s_command*, %struct.s_command** %2, align 8
  %59 = getelementptr inbounds %struct.s_command, %struct.s_command* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %55, %44, %38
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.labhash*, %struct.labhash** %4, align 8
  %65 = getelementptr inbounds %struct.labhash, %struct.labhash* %64, i32 0, i32 3
  %66 = load %struct.labhash*, %struct.labhash** %65, align 8
  store %struct.labhash* %66, %struct.labhash** %4, align 8
  br label %35

67:                                               ; preds = %35
  %68 = call %struct.labhash* @malloc(i32 32)
  store %struct.labhash* %68, %struct.labhash** %4, align 8
  %69 = icmp eq %struct.labhash* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load %struct.labhash**, %struct.labhash*** %3, align 8
  %74 = load %struct.labhash*, %struct.labhash** %73, align 8
  %75 = load %struct.labhash*, %struct.labhash** %4, align 8
  %76 = getelementptr inbounds %struct.labhash, %struct.labhash* %75, i32 0, i32 3
  store %struct.labhash* %74, %struct.labhash** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.labhash*, %struct.labhash** %4, align 8
  %79 = getelementptr inbounds %struct.labhash, %struct.labhash* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.s_command*, %struct.s_command** %2, align 8
  %81 = load %struct.labhash*, %struct.labhash** %4, align 8
  %82 = getelementptr inbounds %struct.labhash, %struct.labhash* %81, i32 0, i32 2
  store %struct.s_command* %80, %struct.s_command** %82, align 8
  %83 = load %struct.labhash*, %struct.labhash** %4, align 8
  %84 = getelementptr inbounds %struct.labhash, %struct.labhash* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.labhash*, %struct.labhash** %4, align 8
  %86 = load %struct.labhash**, %struct.labhash*** %3, align 8
  store %struct.labhash* %85, %struct.labhash** %86, align 8
  ret void
}

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i64) #1

declare dso_local %struct.labhash* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
