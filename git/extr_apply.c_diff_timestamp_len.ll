; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_diff_timestamp_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_diff_timestamp_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @diff_timestamp_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @diff_timestamp_len(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @isdigit(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %129

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @sane_tz_len(i8* %18, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %17
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @tz_with_colon_len(i8* %29, i32 %35)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %28, %17
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = sub i64 0, %38
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 @short_time_len(i8* %42, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %37
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 @fractional_time_len(i8* %53, i32 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %52, %37
  %62 = load i64, i64* %7, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = sub i64 0, %62
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @date_len(i8* %66, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %129

77:                                               ; preds = %61
  %78 = load i64, i64* %7, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = sub i64 0, %78
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i64 0, i64* %3, align 8
  br label %129

86:                                               ; preds = %77
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8*, i8** %6, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  store i64 %101, i64* %3, align 8
  br label %129

102:                                              ; preds = %86
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i64 0, i64* %3, align 8
  br label %129

109:                                              ; preds = %102
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @trailing_spaces_len(i8* %110, i32 %116)
  %118 = load i8*, i8** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8*, i8** %6, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %109, %108, %92, %85, %76, %16
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @sane_tz_len(i8*, i32) #1

declare dso_local i64 @tz_with_colon_len(i8*, i32) #1

declare dso_local i64 @short_time_len(i8*, i32) #1

declare dso_local i64 @fractional_time_len(i8*, i32) #1

declare dso_local i64 @date_len(i8*, i32) #1

declare dso_local i32 @trailing_spaces_len(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
