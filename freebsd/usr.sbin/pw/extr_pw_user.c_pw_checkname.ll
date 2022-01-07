; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_checkname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_checkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gecos field\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" ,\09:+&#%$^()!@~*?<>=|\\/\22\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userid/group name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%c'\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"invalid character %s at position %td in %s\00", align 1
@LOGNAMESIZE = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"name too long `%s' (max is %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pw_checkname(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %21

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32* @strchr(i8* %30, i8 signext %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 127
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38, %29
  store i32 1, i32* %9, align 4
  br label %62

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %9, align 4
  br label %62

59:                                               ; preds = %52, %49
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %25

62:                                               ; preds = %58, %48, %25
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 36
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %80, %74, %69
  br label %84

84:                                               ; preds = %83, %66, %63
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sge i32 %91, 32
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp slt i32 %96, 127
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i1 [ false, %87 ], [ %97, %93 ]
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i32 @snprintf(i8* %88, i32 8, i8* %101, i8 signext %103)
  %105 = load i32, i32* @EX_DATAERR, align 4
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 (i32, i8*, i8*, i32, ...) @errx(i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %106, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %98, %84
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = load i32, i32* @LOGNAMESIZE, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp sgt i64 %123, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i32, i32* @EX_USAGE, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* @LOGNAMESIZE, align 4
  %131 = call i32 (i32, i8*, i8*, i32, ...) @errx(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %118, %115
  %133 = load i8*, i8** %3, align 8
  ret i8* %133
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
