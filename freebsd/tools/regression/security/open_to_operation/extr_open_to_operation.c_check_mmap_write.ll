; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mmap succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32)* @check_mmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mmap_write(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %89, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @notok_mode(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %89

32:                                               ; preds = %17
  %33 = call i32 (...) @getpagesize()
  %34 = load i32, i32* @PROT_WRITE, align 4
  %35 = load i32, i32* @MAP_SHARED, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @mmap(i32* null, i32 %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** @MAP_FAILED, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @O_ACCMODE, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @O_WRONLY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @O_ACCMODE, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @notok_mode(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ok_mode(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %86

62:                                               ; preds = %32
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @O_ACCMODE, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @O_WRONLY, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @O_ACCMODE, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @O_RDWR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %62
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ok_mode(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @notok_mode(i8* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 (...) @getpagesize()
  %85 = call i32 @munmap(i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %61
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %86, %28
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %13

92:                                               ; preds = %13
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
