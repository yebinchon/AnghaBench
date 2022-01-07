; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_yankstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_yankstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@yankstr.tmp = internal global [15 x i8] c"b\08t\09r\0Dn\0Af\0C\\\\\22\22\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"message too long\00", align 1
@linebuf = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"x.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @yankstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yankstr(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %122, %59, %1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %127

24:                                               ; preds = %18
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %17, i64 %15
  %27 = getelementptr inbounds i8, i8* %26, i64 -3
  %28 = icmp eq i8* %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %121 [
    i32 34, label %33
    i32 92, label %36
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %128

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %121

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i8*, i8** @linebuf, align 8
  %49 = load i32, i32* @stdin, align 4
  %50 = call i32* @fgets(i8* %48, i32 8, i32 %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @stdin, align 4
  %54 = call i32 @ferror(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @err(i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %134

59:                                               ; preds = %47
  %60 = load i8*, i8** @linebuf, align 8
  store i8* %60, i8** %4, align 8
  br label %18

61:                                               ; preds = %44
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @yankstr.tmp, i64 0, i64 0), i8** %10, align 8
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %122

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* %5, align 4
  %82 = trunc i32 %81 to i8
  %83 = call i32 @octdigit(i8 signext %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  store i8 92, i8* %86, align 1
  br label %121

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 48
  store i32 %90, i32* %5, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @octdigit(i8 signext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %121

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = shl i32 %97, 3
  store i32 %98, i32* %5, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @octdigit(i8 signext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %96
  br label %121

111:                                              ; preds = %96
  %112 = load i32, i32* %5, align 4
  %113 = shl i32 %112, 3
  store i32 %113, i32* %5, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %4, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = sub nsw i32 %117, 48
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %31, %111, %110, %95, %85, %43
  br label %122

122:                                              ; preds = %121, %72
  %123 = load i32, i32* %5, align 4
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  store i8 %124, i8* %125, align 1
  br label %18

127:                                              ; preds = %18
  br label %128

128:                                              ; preds = %127, %33
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %130, i8** %4, align 8
  %131 = load i8**, i8*** %3, align 8
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** %9, align 8
  store i8 0, i8* %132, align 1
  %133 = call i32 @hashit(i8* %17, i32 1)
  store i32 %133, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %128, %58
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @ferror(i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @octdigit(i8 signext) #2

declare dso_local i32 @hashit(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
