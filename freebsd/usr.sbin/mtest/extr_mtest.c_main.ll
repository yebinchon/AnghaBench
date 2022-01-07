; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_LENGTH = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't open socket\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"multicast membership test program; enter ? for list of commands\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @LINE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EPROTONOSUPPORT, align 4
  %23 = call i32 @errc(i32 1, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %82

27:                                               ; preds = %24
  %28 = load i32, i32* @STDIN_FILENO, align 4
  %29 = call i64 @isatty(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %76, %33
  %35 = trunc i64 %13 to i32
  %36 = load i32, i32* @stdin, align 4
  %37 = call i32* @fgets(i8* %15, i32 %35, i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, i8* %15, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 102
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @stdin, align 4
  %48 = call i32 @process_cmd(i8* %15, i32 %45, i32 %46, i32 %47)
  br label %74

49:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %15, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isblank(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %50

61:                                               ; preds = %50
  %62 = call i64 @strchr(i8* %15, i8 signext 10)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %15, i64 %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @process_file(i8* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %44
  br label %75

75:                                               ; preds = %74, %34
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @stdin, align 4
  %78 = call i32 @feof(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %34, label %81

81:                                               ; preds = %76
  br label %100

82:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %96, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @process_file(i8* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %83

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %81
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @close(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @close(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errc(i32, i32, i8*) #2

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @process_cmd(i8*, i32, i32, i32) #2

declare dso_local i64 @isblank(i8 signext) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @process_file(i8*, i32, i32) #2

declare dso_local i32 @feof(i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
