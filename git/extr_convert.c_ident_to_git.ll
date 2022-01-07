; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_ident_to_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_ident_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"Id:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Id$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.strbuf*, i32)* @ident_to_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_to_git(i8* %0, i64 %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @count_ident(i8* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %146

23:                                               ; preds = %17, %14
  %24 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %25 = icmp ne %struct.strbuf* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %146

27:                                               ; preds = %23
  %28 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %29 = call i64 @strbuf_avail(%struct.strbuf* %28)
  %30 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = call i32 @strbuf_grow(%struct.strbuf* %37, i64 %42)
  br label %44

44:                                               ; preds = %36, %27
  %45 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %128, %112, %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @memchr(i8* %49, i8 signext 36, i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %129

56:                                               ; preds = %48
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = call i32 @memmove(i8* %57, i8* %58, i64 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp ugt i64 %84, 3
  br i1 %85, label %86, label %128

86:                                               ; preds = %56
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @memcmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %128, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, 3
  %95 = trunc i64 %94 to i32
  %96 = call i8* @memchr(i8* %92, i8 signext 36, i32 %95)
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %129

100:                                              ; preds = %90
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sub nsw i64 %107, 3
  %109 = trunc i64 %108 to i32
  %110 = call i8* @memchr(i8* %102, i8 signext 10, i32 %109)
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %48

113:                                              ; preds = %100
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @memcpy(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8*, i8** %6, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = load i64, i64* %7, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %7, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %6, align 8
  br label %128

128:                                              ; preds = %113, %86, %56
  br label %48

129:                                              ; preds = %99, %55
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @memmove(i8* %130, i8* %131, i64 %132)
  %134 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %137 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @strbuf_setlen(%struct.strbuf* %134, i32 %144)
  store i32 1, i32* %5, align 4
  br label %146

146:                                              ; preds = %129, %26, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @count_ident(i8*, i64) #1

declare dso_local i64 @strbuf_avail(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
