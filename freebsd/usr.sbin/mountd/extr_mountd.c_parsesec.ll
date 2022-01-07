; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_parsesec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_parsesec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportlist = type { i64, i32* }

@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@AUTH_SYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@RPCSEC_GSS_KRB5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"krb5i\00", align 1
@RPCSEC_GSS_KRB5I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"krb5p\00", align 1
@RPCSEC_GSS_KRB5P = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"bad sec flavor: %s\00", align 1
@MAXSECFLAVORS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"too many sec flavors: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.exportlist*)* @parsesec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsesec(i8* %0, %struct.exportlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.exportlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.exportlist* %1, %struct.exportlist** %5, align 8
  %9 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %10 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %94, %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8*, i8** %6, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @AUTH_SYS, align 4
  store i32 %25, i32* %8, align 4
  br label %57

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @RPCSEC_GSS_KRB5, align 4
  store i32 %31, i32* %8, align 4
  br label %56

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @RPCSEC_GSS_KRB5I, align 4
  store i32 %37, i32* %8, align 4
  br label %55

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @RPCSEC_GSS_KRB5P, align 4
  store i32 %43, i32* %8, align 4
  br label %54

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8, i8* %7, align 1
  %49 = load i8*, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @syslog(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  store i32 1, i32* %3, align 4
  br label %96

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %59 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAXSECFLAVORS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8, i8* %7, align 1
  %68 = load i8*, i8** %6, align 8
  store i8 %67, i8* %68, align 1
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @syslog(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  store i32 1, i32* %3, align 4
  br label %96

73:                                               ; preds = %57
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %76 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %79 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %83 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i8, i8* %7, align 1
  %90 = load i8*, i8** %6, align 8
  store i8 %89, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %4, align 8
  br label %94

93:                                               ; preds = %73
  br label %95

94:                                               ; preds = %88
  br label %11

95:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %69, %50
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
