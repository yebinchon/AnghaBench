; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_pos_obs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_pos_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"^([0-9]+)(\\.[0-9]+)?([A-Za-z]+)?$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i8*)* @parse_pos_obs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pos_obs(i8* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.TYPE_3__], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32 -1, i32* %15, align 4
  store i64 4, i64* %17, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %14, align 8
  %21 = load i32, i32* @REG_EXTENDED, align 4
  %22 = call i64 @regcomp(i32* %10, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %168

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %17, align 8
  %28 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %29 = call i64 @regexec(i32* %10, i8* %26, i64 %27, %struct.TYPE_3__* %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %153

32:                                               ; preds = %25
  %33 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 16
  %36 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %153

41:                                               ; preds = %32
  %42 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %153

50:                                               ; preds = %41
  %51 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, 1
  %60 = mul i64 %59, 1
  %61 = call i8* @sort_malloc(i64 %60)
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @strncpy(i8* %62, i8* %67, i64 %68)
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 0, i8* %72, align 1
  store i64 0, i64* @errno, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i64 @strtoul(i8* %73, i32* null, i32 10)
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64, i64* @errno, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %50
  %80 = call i32 @getstr(i32 11)
  %81 = call i32 @errx(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %50
  %83 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 16
  %86 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %82
  %91 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 16
  %94 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = sub nsw i64 %97, 1
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, 1
  %101 = mul i64 %100, 1
  %102 = call i8* @sort_malloc(i64 %101)
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @strncpy(i8* %103, i8* %109, i64 %110)
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 0, i8* %114, align 1
  store i64 0, i64* @errno, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i64 @strtoul(i8* %115, i32* null, i32 10)
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i64, i64* @errno, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %90
  %122 = call i32 @getstr(i32 11)
  %123 = call i32 @errx(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %90
  br label %125

125:                                              ; preds = %124, %82
  %126 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 16
  %129 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %125
  %134 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 16
  %137 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  store i64 %140, i64* %16, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %11, i64 0, i64 3
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @strncpy(i8* %141, i8* %146, i64 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  br label %152

152:                                              ; preds = %133, %125
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %152, %49, %40, %31
  %154 = load i8*, i8** %12, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 @sort_free(i8* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %13, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @sort_free(i8* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = call i32 @regfree(i32* %10)
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %24
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i8* @sort_malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @getstr(i32) #1

declare dso_local i32 @sort_free(i8*) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
