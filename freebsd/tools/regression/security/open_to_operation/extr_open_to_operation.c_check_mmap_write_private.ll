; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_write_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_mmap_write_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"mmap dir failed\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mmap file failed\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mmap dir succeeded\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"mmap file succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*, i32)* @check_mmap_write_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mmap_write_private(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
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

15:                                               ; preds = %109, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %112

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
  br label %109

34:                                               ; preds = %19
  %35 = call i32 (...) @getpagesize()
  %36 = load i32, i32* @PROT_READ, align 4
  %37 = load i32, i32* @PROT_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MAP_PRIVATE, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @mmap(i32* null, i32 %35, i32 %38, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ok_mode(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %73

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @O_ACCMODE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @O_ACCMODE, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @O_RDWR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %52
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @notok_mode(i8* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %72

68:                                               ; preds = %58
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @ok_mode(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %48
  br label %106

74:                                               ; preds = %34
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @notok_mode(i8* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %102

81:                                               ; preds = %74
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @O_ACCMODE, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @O_RDONLY, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @O_ACCMODE, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @O_RDWR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %81
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ok_mode(i8* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %101

97:                                               ; preds = %87
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @notok_mode(i8* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 (...) @getpagesize()
  %105 = call i32 @munmap(i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %73
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @close(i32 %107)
  br label %109

109:                                              ; preds = %106, %30
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %15

112:                                              ; preds = %15
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
