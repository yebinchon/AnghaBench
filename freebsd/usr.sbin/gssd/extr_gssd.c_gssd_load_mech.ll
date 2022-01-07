; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_load_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_load_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_GSS_MECH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: can't find or load kernel module %s for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gssd_load_mech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gssd_load_mech() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @_PATH_GSS_MECH, align 4
  %9 = call i32* @fopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %106

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %102, %81, %24, %13
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @fgets(i8* %15, i32 256, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %14
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %14

25:                                               ; preds = %19
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %26, i8** %3, align 8
  %27 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %31

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %25
  %41 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i8*, i8** %3, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isspace(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %45

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isspace(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  br label %59

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54
  %69 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78, %75, %72, %68
  br label %14

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @modfind(i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @kldload(i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @stderr, align 4
  %96 = call i8* (...) @getprogname()
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %96, i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %82
  br label %14

103:                                              ; preds = %14
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @fclose(i32* %104)
  br label %106

106:                                              ; preds = %103, %12
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
