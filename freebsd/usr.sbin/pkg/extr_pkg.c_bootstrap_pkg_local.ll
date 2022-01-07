; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_bootstrap_pkg_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_bootstrap_pkg_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@SIGNATURE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error looking up SIGNATURE_TYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"FINGERPRINTS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.sig\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Signature for pkg not available.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PUBKEY\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s.pubkeysig\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Signature type %s is not supported for bootstrapping.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @bootstrap_pkg_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootstrap_pkg_local(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @err(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @SIGNATURE_TYPE, align 4
  %30 = call i64 @config_string(i32 %29, i8** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %98

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %88

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = trunc i64 %13 to i32
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @snprintf(i8* %15, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i8* %15, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %98

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @verify_signature(i32 %56, i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %98

61:                                               ; preds = %55
  br label %87

62:                                               ; preds = %41
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strcasecmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = trunc i64 %13 to i32
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @snprintf(i8* %15, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @O_RDONLY, align 4
  %71 = call i32 @open(i8* %15, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %98

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @verify_pubsignature(i32 %77, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %98

82:                                               ; preds = %76
  br label %86

83:                                               ; preds = %62
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  br label %98

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %37, %34
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @MAXPATHLEN, align 4
  %91 = call i32 @extract_pkg_static(i32 %89, i8* %18, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @install_pkg_static(i8* %18, i8* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %83, %81, %73, %60, %52, %32
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @close(i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @close(i32 %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i64 @config_string(i32, i8**) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @verify_signature(i32, i32) #2

declare dso_local i32 @verify_pubsignature(i32, i32) #2

declare dso_local i32 @extract_pkg_static(i32, i8*, i32) #2

declare dso_local i32 @install_pkg_static(i8*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
