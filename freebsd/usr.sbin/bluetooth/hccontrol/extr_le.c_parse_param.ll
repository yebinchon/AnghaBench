; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_parse_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"n:f:u:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, i32*)* @parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_param(i32 %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %10, align 8
  store i32 1, i32* @optreset, align 4
  store i64 0, i64* @optind, align 8
  br label %22

22:                                               ; preds = %114, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %115

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %114 [
    i32 110, label %29
    i32 102, label %58
    i32 117, label %75
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @strlen(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8*, i8** %9, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %116

40:                                               ; preds = %29
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %43, i8* %45, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 8, i8* %47, align 1
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @optarg, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @memcpy(i8* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %10, align 8
  br label %114

58:                                               ; preds = %27
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %116

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 2, i8* %66, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 1, i8* %68, align 1
  %69 = load i32, i32* @optarg, align 4
  %70 = call signext i8 @atoi(i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  store i8* %74, i8** %10, align 8
  br label %114

75:                                               ; preds = %27
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8*, i8** %9, align 8
  %80 = icmp uge i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %116

82:                                               ; preds = %75
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 2, i8* %84, align 1
  %85 = load i8*, i8** %12, align 8
  store i8 1, i8* %85, align 1
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %99, %82
  %89 = call i8* @strsep(i32* @optarg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %89, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @strtol(i8* %92, i32* null, i32 16)
  store i32 %93, i32* %15, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8*, i8** %9, align 8
  %97 = icmp uge i8* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %113

99:                                               ; preds = %91
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %100, 255
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %15, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8* %112, i8** %10, align 8
  br label %88

113:                                              ; preds = %98, %88
  br label %114

114:                                              ; preds = %113, %27, %64, %40
  br label %22

115:                                              ; preds = %22
  br label %116

116:                                              ; preds = %115, %81, %63, %39
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @OK, align 4
  ret i32 %124
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local signext i8 @atoi(i32) #1

declare dso_local i8* @strsep(i32*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
