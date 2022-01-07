; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_account.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { double, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".0123456789\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@mflag = common dso_local global i64 0, align 8
@allflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hent*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  br label %14

14:                                               ; preds = %106, %82, %1
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @fgets(i8* %13, i32 %15, i32* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %107

19:                                               ; preds = %14
  store i8* %13, i8** %6, align 8
  br label %20

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @any(i8 signext %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = call double @atof(i8* %29)
  store double %30, double* %5, align 8
  br label %31

31:                                               ; preds = %36, %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @any(i8 signext %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %31

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %45, %39
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @any(i8 signext %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %40

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %57, %48
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @any(i8 signext %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %50

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @atoi(i8* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %7, align 8
  store i8 0, i8* %63, align 1
  %64 = load i64, i64* @mflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 58)
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 58)
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %70, %66, %60
  %75 = load i8*, i8** %6, align 8
  %76 = call %struct.hent* @lookup(i8* %75)
  store %struct.hent* %76, %struct.hent** %8, align 8
  %77 = load %struct.hent*, %struct.hent** %8, align 8
  %78 = icmp eq %struct.hent* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* @allflag, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %14

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = call %struct.hent* @enter(i8* %84)
  store %struct.hent* %85, %struct.hent** %8, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load double, double* %5, align 8
  %88 = load %struct.hent*, %struct.hent** %8, align 8
  %89 = getelementptr inbounds %struct.hent, %struct.hent* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fadd double %90, %87
  store double %91, double* %89, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.hent*, %struct.hent** %8, align 8
  %98 = getelementptr inbounds %struct.hent, %struct.hent* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %106

101:                                              ; preds = %86
  %102 = load %struct.hent*, %struct.hent** %8, align 8
  %103 = getelementptr inbounds %struct.hent, %struct.hent* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %101, %94
  br label %14

107:                                              ; preds = %14
  %108 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @any(i8 signext, i8*) #2

declare dso_local double @atof(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.hent* @lookup(i8*) #2

declare dso_local %struct.hent* @enter(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
