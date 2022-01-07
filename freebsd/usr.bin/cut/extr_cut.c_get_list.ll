; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_get_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_get_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@autostart = common dso_local global i64 0, align 8
@autostop = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"[-bcf] list: illegal list value\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[-bcf] list: values may not include zero\00", align 1
@maxval = common dso_local global i64 0, align 8
@positions = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %8

8:                                                ; preds = %105, %1
  %9 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %106

11:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  store i64 1, i64* %3, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isdigit(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strtol(i8* %25, i8** %7, i32 10)
  store i64 %26, i64* %5, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @autostart, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* @autostart, align 8
  br label %35

35:                                               ; preds = %33, %29, %24
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isdigit(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i64 @strtol(i8* %49, i8** %7, i32 10)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i64, i64* @autostop, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* @autostop, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %56
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* @autostop, align 8
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %75
  %82 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i64, i64* @maxval, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* @maxval, align 8
  %89 = load i64, i64* @maxval, align 8
  %90 = add i64 %89, 1
  %91 = call i32 @needpos(i64 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i8*, i8** @positions, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %102, %92
  %97 = load i64, i64* %4, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ule i64 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  store i8 1, i8* %103, align 1
  br label %96

105:                                              ; preds = %96
  br label %8

106:                                              ; preds = %8
  %107 = load i64, i64* @autostop, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i64, i64* @maxval, align 8
  %111 = load i64, i64* @autostop, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i64, i64* @autostop, align 8
  store i64 %114, i64* @maxval, align 8
  %115 = load i64, i64* @maxval, align 8
  %116 = add i64 %115, 1
  %117 = call i32 @needpos(i64 %116)
  br label %118

118:                                              ; preds = %113, %109, %106
  %119 = load i64, i64* @maxval, align 8
  %120 = load i64, i64* @autostart, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i64, i64* @autostart, align 8
  store i64 %123, i64* @maxval, align 8
  %124 = load i64, i64* @maxval, align 8
  %125 = add i64 %124, 1
  %126 = call i32 @needpos(i64 %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i64, i64* @autostart, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i8*, i8** @positions, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i64, i64* @autostart, align 8
  %134 = call i32 @memset(i8* %132, i8 signext 49, i64 %133)
  br label %135

135:                                              ; preds = %130, %127
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @needpos(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
