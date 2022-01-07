; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_sendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"directory succeeded\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"directory failed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*, i32)* @check_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sendfile(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %118, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @open(i8* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @notok_mode(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %118

35:                                               ; preds = %20
  %36 = load i32, i32* @PF_LOCAL, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %39 = call i64 @socketpair(i32 %36, i32 %37, i32 0, i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @notok_mode(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %118

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @sendfile(i32 %46, i32 %48, i32 0, i32 1, i32* null, i32* %15, i32 0)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @notok_mode(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %79

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @O_ACCMODE, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @O_RDONLY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @O_ACCMODE, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @O_RDWR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %58
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ok_mode(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %78

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @notok_mode(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %54
  br label %109

80:                                               ; preds = %45
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @ok_mode(i8* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %108

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @O_ACCMODE, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @O_RDONLY, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @O_ACCMODE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @O_RDWR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %87
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @notok_mode(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %107

103:                                              ; preds = %93
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ok_mode(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %79
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %109, %41, %31
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %16

121:                                              ; preds = %16
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @sendfile(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok_mode(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
