; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_advcap.c_anchktc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_advcap.c_anchktc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@tbuf = common dso_local global i8* null, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad remcap entry\0A\00", align 1
@hopcount = common dso_local global i64 0, align 8
@MAXHOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Infinite tc= loop\0A\00", align 1
@conffile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Remcap entry too long\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tnchktc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i8*, i8** @tbuf, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** @tbuf, align 8
  %16 = load i8*, i8** @tbuf, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -2
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %34, %0
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 58
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** @tbuf, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @STDERR_FILENO, align 4
  %33 = call i32 @write(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 18)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %126

34:                                               ; preds = %27
  br label %21

35:                                               ; preds = %21
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 116
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 99
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %35
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %126

50:                                               ; preds = %43
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = call i32 @strlcpy(i8* %51, i8* %53, i32 16)
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %68, %50
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 58
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  br label %56

71:                                               ; preds = %66
  %72 = load i8*, i8** %3, align 8
  store i8 0, i8* %72, align 1
  %73 = load i64, i64* @hopcount, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* @hopcount, align 8
  %75 = load i64, i64* @MAXHOP, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @STDERR_FILENO, align 4
  %79 = call i32 @write(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 18)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %126

80:                                               ; preds = %71
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %82 = load i32, i32* @conffile, align 4
  %83 = call i32 @getent(i8* %13, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %126

86:                                               ; preds = %80
  store i8* %13, i8** %3, align 8
  br label %87

87:                                               ; preds = %93, %86
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %3, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 58
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %87

94:                                               ; preds = %87
  %95 = load i8*, i8** %2, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @BUFSIZ, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %94
  %109 = load i32, i32* @STDERR_FILENO, align 4
  %110 = call i32 @write(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 23)
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* @BUFSIZ, align 4
  %113 = sext i32 %112 to i64
  %114 = load i8*, i8** %2, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %113, %118
  %120 = getelementptr inbounds i8, i8* %111, i64 %119
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %108, %94
  %122 = load i8*, i8** %2, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @strcpy(i8* %122, i8* %123)
  %125 = load i8*, i8** %7, align 8
  store i8* %125, i8** @tbuf, align 8
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %85, %77, %49, %31
  %127 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @getent(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
