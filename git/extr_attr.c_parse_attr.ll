; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_parse_attr.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_state = type { i32, i32 }

@blank = common dso_local global i32 0, align 4
@ATTR__FALSE = common dso_local global i32 0, align 4
@ATTR__UNSET = common dso_local global i32 0, align 4
@ATTR__TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, %struct.attr_state*)* @parse_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_attr(i8* %0, i32 %1, i8* %2, %struct.attr_state* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.attr_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.attr_state* %3, %struct.attr_state** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @blank, align 4
  %16 = call i32 @strcspn(i8* %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 61)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* null, i8** %11, align 8
  br label %28

28:                                               ; preds = %27, %23, %4
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.attr_state*, %struct.attr_state** %9, align 8
  %47 = icmp ne %struct.attr_state* %46, null
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 33
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @attr_name_valid(i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @report_invalid_attr(i8* %69, i32 %70, i8* %71, i32 %72)
  store i8* null, i8** %5, align 8
  br label %136

74:                                               ; preds = %63
  br label %129

75:                                               ; preds = %45
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 33
  br i1 %84, label %85, label %102

85:                                               ; preds = %80, %75
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 45
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @ATTR__FALSE, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @ATTR__UNSET, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.attr_state*, %struct.attr_state** %9, align 8
  %97 = getelementptr inbounds %struct.attr_state, %struct.attr_state* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  br label %123

102:                                              ; preds = %80
  %103 = load i8*, i8** %11, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @ATTR__TRUE, align 4
  %107 = load %struct.attr_state*, %struct.attr_state** %9, align 8
  %108 = getelementptr inbounds %struct.attr_state, %struct.attr_state* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %122

109:                                              ; preds = %102
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sub nsw i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i32 @xmemdupz(i8* %111, i32 %118)
  %120 = load %struct.attr_state*, %struct.attr_state** %9, align 8
  %121 = getelementptr inbounds %struct.attr_state, %struct.attr_state* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %109, %105
  br label %123

123:                                              ; preds = %122, %94
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @git_attr_internal(i8* %124, i32 %125)
  %127 = load %struct.attr_state*, %struct.attr_state** %9, align 8
  %128 = getelementptr inbounds %struct.attr_state, %struct.attr_state* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %74
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* @blank, align 4
  %133 = call i32 @strspn(i8* %131, i32 %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  store i8* %135, i8** %5, align 8
  br label %136

136:                                              ; preds = %129, %68
  %137 = load i8*, i8** %5, align 8
  ret i8* %137
}

declare dso_local i32 @strcspn(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @attr_name_valid(i8*, i32) #1

declare dso_local i32 @report_invalid_attr(i8*, i32, i8*, i32) #1

declare dso_local i32 @xmemdupz(i8*, i32) #1

declare dso_local i32 @git_attr_internal(i8*, i32) #1

declare dso_local i32 @strspn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
