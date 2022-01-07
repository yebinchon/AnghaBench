; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_read_credential.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_read_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad input: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@kSecProtocolTypeIMAP = common dso_local global i32 0, align 4
@protocol = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"imaps\00", align 1
@kSecProtocolTypeIMAPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@kSecProtocolTypeFTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ftps\00", align 1
@kSecProtocolTypeFTPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@kSecProtocolTypeHTTPS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@kSecProtocolTypeHTTP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@kSecProtocolTypeSMTP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@port = common dso_local global i32 0, align 4
@host = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@path = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@username = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@password = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_credential() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  br label %4

4:                                                ; preds = %126, %0
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* @stdin, align 4
  %7 = call i64 @fgets(i8* %5, i32 1024, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %127

9:                                                ; preds = %4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %127

14:                                               ; preds = %9
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %16 = call i32 @strlen(i8* %15)
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %18
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %21 = call i8* @strchr(i8* %20, i8 signext 61)
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %26 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  store i8 0, i8* %28, align 1
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %84, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @kSecProtocolTypeIMAP, align 4
  store i32 %38, i32* @protocol, align 4
  br label %83

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @kSecProtocolTypeIMAPS, align 4
  store i32 %44, i32* @protocol, align 4
  br label %82

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @kSecProtocolTypeFTP, align 4
  store i32 %50, i32* @protocol, align 4
  br label %81

51:                                               ; preds = %45
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @kSecProtocolTypeFTPS, align 4
  store i32 %56, i32* @protocol, align 4
  br label %80

57:                                               ; preds = %51
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @kSecProtocolTypeHTTPS, align 4
  store i32 %62, i32* @protocol, align 4
  br label %79

63:                                               ; preds = %57
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @kSecProtocolTypeHTTP, align 4
  store i32 %68, i32* @protocol, align 4
  br label %78

69:                                               ; preds = %63
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @kSecProtocolTypeSMTP, align 4
  store i32 %74, i32* @protocol, align 4
  br label %77

75:                                               ; preds = %69
  %76 = call i32 @exit(i32 0) #3
  unreachable

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %55
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %37
  br label %126

84:                                               ; preds = %27
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %2, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 58)
  store i8* %90, i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  store i8 0, i8* %94, align 1
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @atoi(i8* %96)
  store i32 %97, i32* @port, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i8*, i8** %2, align 8
  %100 = call i8* @xstrdup(i8* %99)
  store i8* %100, i8** @host, align 8
  br label %125

101:                                              ; preds = %84
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %2, align 8
  %107 = call i8* @xstrdup(i8* %106)
  store i8* %107, i8** @path, align 8
  br label %124

108:                                              ; preds = %101
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %2, align 8
  %114 = call i8* @xstrdup(i8* %113)
  store i8* %114, i8** @username, align 8
  br label %123

115:                                              ; preds = %108
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %2, align 8
  %121 = call i8* @xstrdup(i8* %120)
  store i8* %121, i8** @password, align 8
  br label %122

122:                                              ; preds = %119, %115
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %83
  br label %4

127:                                              ; preds = %13, %4
  ret void
}

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
