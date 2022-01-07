; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_generate_guard.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_generate_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"_H_RPCGEN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @generate_guard(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 47)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i8* [ %12, %11 ], [ %15, %13 ]
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @xstrdup(i8* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %74, %16
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @islower(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call signext i8 @toupper(i8 signext %35)
  %37 = load i8*, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  br label %73

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isupper(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 95
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %72

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  store i8 95, i8* %54, align 1
  br label %71

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isdigit(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  store i8 0, i8* %66, align 1
  br label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  store i8 95, i8* %68, align 1
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %33
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  br label %23

77:                                               ; preds = %65, %23
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 95
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %90, %82
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 95
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  br label %84

93:                                               ; preds = %84
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @strcpy(i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %93, %77
  %98 = load i8*, i8** %4, align 8
  store i8* %98, i8** %5, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @extendfile(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %100, i8** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
