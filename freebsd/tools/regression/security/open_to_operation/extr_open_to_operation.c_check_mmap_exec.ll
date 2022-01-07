; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"mmap dir failed\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mmap file failed\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mmap dir succeeded\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"mmap file succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*, i32)* @check_mmap_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mmap_exec(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %90, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %93

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @notok_mode(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %90

34:                                               ; preds = %19
  %35 = call i32 (...) @getpagesize()
  %36 = load i32, i32* @PROT_EXEC, align 4
  %37 = load i32, i32* @MAP_SHARED, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @mmap(i32* null, i32 %35, i32 %36, i32 %37, i32 %38, i32 0)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** @MAP_FAILED, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @ok_mode(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %71

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @O_ACCMODE, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @O_ACCMODE, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @O_RDWR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %50
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @notok_mode(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ok_mode(i8* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %46
  br label %87

72:                                               ; preds = %34
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @notok_mode(i8* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ok_mode(i8* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 (...) @getpagesize()
  %86 = call i32 @munmap(i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %71
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %30
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %15

93:                                               ; preds = %15
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @ok_mode(i8*, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
