; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/soelim/extr_soelim.c_soelim_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/soelim/extr_soelim.c_soelim_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@C_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @soelim_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soelim_file(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %110

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %104, %84, %38, %23, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @getline(i8** %6, i64* %9, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %15

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @C_OPTION, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %15

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %47, %41
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %42

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %65, %50
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %52

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = icmp ult i8* %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %15

87:                                               ; preds = %79
  %88 = load i8*, i8** %7, align 8
  %89 = call i32* @soelim_fopen(i8* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @soelim_file(i32* %89, i32 %90)
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @free(i8* %94)
  store i32 1, i32* %3, align 4
  br label %110

96:                                               ; preds = %87
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %15

105:                                              ; preds = %15
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @fclose(i32* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %93, %13
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32* @soelim_fopen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
