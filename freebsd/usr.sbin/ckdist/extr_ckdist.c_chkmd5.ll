; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_chkmd5.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_chkmd5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMESIZE = common dso_local global i32 0, align 4
@MDSUMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MD5 (%256s = %32s%c\00", align 1
@E_BADMD5 = common dso_local global i32 0, align 4
@E_NAME = common dso_local global i32 0, align 4
@opt_exist = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@E_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@E_CHKSUM = common dso_local global i32 0, align 4
@opt_ignore = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@opt_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @chkmd5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkmd5(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [298 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i32, i32* @NAMESIZE, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @MDSUMLEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load i32, i32* @MDSUMLEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %133, %114, %2
  %31 = getelementptr inbounds [298 x i8], [298 x i8]* %5, i64 0, i64 0
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @fgets(i8* %31, i32 298, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %134

35:                                               ; preds = %30
  store i8* null, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %36 = getelementptr inbounds [298 x i8], [298 x i8]* %5, i64 0, i64 0
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %25, i8* %16)
  store i32 %37, i32* %14, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @feof(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %60, label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8, i8* %16, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %60, label %53

53:                                               ; preds = %49, %46
  %54 = call i8* @strrchr(i8* %21, i8 signext 41)
  store i8* %54, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 @strlen(i8* %25)
  %58 = load i32, i32* @MDSUMLEN, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %53, %49, %43, %39
  %61 = load i32, i32* @E_BADMD5, align 4
  store i32 %61, i32* %13, align 4
  br label %103

62:                                               ; preds = %56
  %63 = load i8*, i8** %11, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = call i8* @distname(i8* %64, i8* %21, i32* null)
  store i8* %65, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @E_NAME, align 4
  store i32 %68, i32* %13, align 4
  br label %102

69:                                               ; preds = %62
  %70 = load i64, i64* @opt_exist, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = call i32 @open(i8* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @E_ERRNO, align 4
  store i32 %78, i32* %13, align 4
  br label %87

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @close(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %77
  br label %101

88:                                               ; preds = %69
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @MD5File(i8* %89, i8* %29)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @E_ERRNO, align 4
  store i32 %93, i32* %13, align 4
  br label %100

94:                                               ; preds = %88
  %95 = call i64 @strcmp(i8* %29, i8* %25)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @E_CHKSUM, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99, %92
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %67
  br label %103

103:                                              ; preds = %102, %60
  %104 = load i64, i64* @opt_ignore, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @E_ERRNO, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i64, i64* @errno, align 8
  %112 = load i64, i64* @ENOENT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %30

115:                                              ; preds = %110, %106, %103
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @opt_all, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118, %115
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @report(i8* %122, i8* %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %121, %118
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @isfatal(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %134

133:                                              ; preds = %128
  br label %30

134:                                              ; preds = %132, %30
  %135 = load i32, i32* %12, align 4
  %136 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %136)
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @distname(i8*, i8*, i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @MD5File(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @report(i8*, i8*, i32) #2

declare dso_local i64 @isfatal(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
