; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_main.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"usage: git credential-wincred <get|store|erase>\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@protocol = common dso_local global i8* null, align 8
@host = common dso_local global i8* null, align 8
@path = common dso_local global i8* null, align 8
@target = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 103, i32 105, i32 116, i32 58, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 58, i32 47, i32 47, i32 0], align 4
@wusername = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i32] [i32 64, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"erase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @die(i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @stdin, align 4
  %16 = call i32 @_fileno(i32 %15)
  %17 = load i32, i32* @_O_BINARY, align 4
  %18 = call i32 @_setmode(i32 %16, i32 %17)
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @_fileno(i32 %19)
  %21 = load i32, i32* @_O_BINARY, align 4
  %22 = call i32 @_setmode(i32 %20, i32 %21)
  %23 = call i32 (...) @read_credential()
  %24 = call i32 (...) @load_cred_funcs()
  %25 = load i8*, i8** @protocol, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i8*, i8** @host, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** @path, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %14
  store i32 0, i32* %3, align 4
  br label %107

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @target, align 4
  %36 = call i32 @wcscpy(i32 %35, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %37 = load i32, i32* @target, align 4
  %38 = load i8*, i8** @protocol, align 8
  %39 = load i32, i32* @target, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @wcsncat(i32 %37, i8* %38, i32 %40)
  %42 = load i32, i32* @target, align 4
  %43 = load i32, i32* @target, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @wcsncat(i32 %42, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32 %44)
  %46 = load i8*, i8** @wusername, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load i32, i32* @target, align 4
  %50 = load i8*, i8** @wusername, align 8
  %51 = load i32, i32* @target, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @wcsncat(i32 %49, i8* %50, i32 %52)
  %54 = load i32, i32* @target, align 4
  %55 = load i32, i32* @target, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = call i32 @wcsncat(i32 %54, i8* bitcast ([2 x i32]* @.str.3 to i8*), i32 %56)
  br label %58

58:                                               ; preds = %48, %34
  %59 = load i8*, i8** @host, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @target, align 4
  %63 = load i8*, i8** @host, align 8
  %64 = load i32, i32* @target, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @wcsncat(i32 %62, i8* %63, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** @path, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* @target, align 4
  %72 = load i32, i32* @target, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @wcsncat(i32 %71, i8* bitcast ([2 x i32]* @.str.4 to i8*), i32 %73)
  %75 = load i32, i32* @target, align 4
  %76 = load i8*, i8** @path, align 8
  %77 = load i32, i32* @target, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @wcsncat(i32 %75, i8* %76, i32 %78)
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = call i32 (...) @get_credential()
  br label %106

88:                                               ; preds = %80
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = call i32 (...) @store_credential()
  br label %105

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = call i32 (...) @erase_credential()
  br label %104

104:                                              ; preds = %102, %96
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %86
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %33
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @_setmode(i32, i32) #1

declare dso_local i32 @_fileno(i32) #1

declare dso_local i32 @read_credential(...) #1

declare dso_local i32 @load_cred_funcs(...) #1

declare dso_local i32 @wcscpy(i32, i8*) #1

declare dso_local i32 @wcsncat(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_credential(...) #1

declare dso_local i32 @store_credential(...) #1

declare dso_local i32 @erase_credential(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
