; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/factor/extr_factor.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/factor/extr_factor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_MAX = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't initialise bignum\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@hflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"negative numbers aren't permitted.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: illegal numeric format.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LINE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = call i32 (...) @BN_CTX_new()
  store i32 %15, i32* @ctx, align 4
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %33 [
    i32 104, label %29
    i32 63, label %32
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @hflag, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @hflag, align 4
  br label %35

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %27, %32
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %29
  br label %22

36:                                               ; preds = %22
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %97, %81, %47
  %49 = trunc i64 %12 to i32
  %50 = load i32, i32* @stdin, align 4
  %51 = call i32* @fgets(i8* %14, i32 %49, i32 %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @stdin, align 4
  %55 = call i64 @ferror(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = call i32 @exit(i32 0) #4
  unreachable

61:                                               ; preds = %48
  store i8* %14, i8** %8, align 8
  br label %62

62:                                               ; preds = %68, %61
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isblank(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  br label %62

71:                                               ; preds = %62
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  br label %48

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 45
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = call i64 @BN_dec2bn(i32** %6, i8* %14)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = call i64 @BN_hex2bn(i32** %6, i8* %14)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  br label %97

97:                                               ; preds = %95, %92, %89
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @pr_fact(i32* %98)
  br label %48

100:                                              ; preds = %36
  br label %101

101:                                              ; preds = %135, %100
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %138

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 45
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %105
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @BN_dec2bn(i32** %6, i8* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @BN_hex2bn(i32** %6, i8* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %127, %121, %115
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @pr_fact(i32* %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %5, align 8
  br label %101

138:                                              ; preds = %101
  br label %139

139:                                              ; preds = %138
  %140 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BN_CTX_new(...) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @isblank(i8 signext) #2

declare dso_local i64 @BN_dec2bn(i32**, i8*) #2

declare dso_local i64 @BN_hex2bn(i32**, i8*) #2

declare dso_local i32 @pr_fact(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
