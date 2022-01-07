; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_control_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_control_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [3 x i8] c"kb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@erasech = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@mode = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VERASE = common dso_local global i64 0, align 8
@CERASE = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@intrchar = common dso_local global i64 0, align 8
@CINTR = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@killch = common dso_local global i64 0, align 8
@CKILL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_control_chars() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1)
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %0
  %16 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %3, align 1
  br label %37

30:                                               ; preds = %20, %17
  %31 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call signext i8 @CTRL(i8 signext 104)
  store i8 %34, i8* %3, align 1
  br label %36

35:                                               ; preds = %30
  store i8 0, i8* %3, align 1
  br label %36

36:                                               ; preds = %35, %33
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* @erasech, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8, i8* %3, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 -1, i32* @erasech, align 4
  br label %48

48:                                               ; preds = %47, %44, %40, %37
  %49 = load i32, i32* @erasech, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i8, i8* %3, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = sext i8 %56 to i32
  br label %61

58:                                               ; preds = %51
  %59 = call signext i8 @CTRL(i8 signext 104)
  %60 = sext i8 %59 to i32
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ]
  store i32 %62, i32* @erasech, align 4
  br label %63

63:                                               ; preds = %61, %48
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %65 = load i64, i64* @VERASE, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @erasech, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69, %63
  %73 = load i32, i32* @erasech, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @erasech, align 4
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @CERASE, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = sext i32 %80 to i64
  %82 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %83 = load i64, i64* @VERASE, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %69
  %86 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %87 = load i64, i64* @VINTR, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* @intrchar, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91, %85
  %95 = load i64, i64* @intrchar, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i64, i64* @intrchar, align 8
  br label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @CINTR, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %104 = load i64, i64* @VINTR, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %91
  %107 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %108 = load i64, i64* @VKILL, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* @killch, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %106
  %116 = load i64, i64* @killch, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i64, i64* @killch, align 8
  br label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @CKILL, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i64 [ %119, %118 ], [ %121, %120 ]
  %124 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mode, i32 0, i32 0), align 8
  %125 = load i64, i64* @VKILL, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %122, %112
  ret void
}

declare dso_local i8* @tgetstr(i8*, i8**) #1

declare dso_local i64 @tgetflag(i8*) #1

declare dso_local signext i8 @CTRL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
