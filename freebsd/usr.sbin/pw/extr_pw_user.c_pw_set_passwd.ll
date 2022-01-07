; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_set_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_set_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32 }
%struct.termios = type { i32 }

@_PASSWORD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ECHO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s%spassword for user %s:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"encrypted \00", align 1
@stdout = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"-%c file descriptor\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"empty password read on file descriptor %d\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"bad encrypted password\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"setting crypt(3) format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i32, i32, i32)* @pw_set_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pw_set_passwd(%struct.passwd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.termios, align 4
  %13 = alloca %struct.termios, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @_PASSWORD_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %42

26:                                               ; preds = %4
  %27 = load %struct.passwd*, %struct.passwd** %6, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.passwd*, %struct.passwd** %6, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 42
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %26
  %39 = load %struct.passwd*, %struct.passwd** %6, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %149

41:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %149

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @isatty(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @tcgetattr(i32 %47, %struct.termios* %12)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %76

51:                                               ; preds = %46
  %52 = bitcast %struct.termios* %13 to i8*
  %53 = bitcast %struct.termios* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load i32, i32* @ECHO, align 4
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.termios, %struct.termios* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TCSANOW, align 4
  %61 = call i32 @tcsetattr(i32 %59, i32 %60, %struct.termios* %13)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %70 = load %struct.passwd*, %struct.passwd** %6, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %69, i32 %72)
  %74 = load i32, i32* @stdout, align 4
  %75 = call i32 @fflush(i32 %74)
  br label %76

76:                                               ; preds = %51, %50
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i32, i32* %7, align 4
  %79 = sub i64 %21, 1
  %80 = trunc i64 %79 to i32
  %81 = call i32 @read(i32 %78, i8* %23, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @TCSANOW, align 4
  %87 = call i32 @tcsetattr(i32 %85, i32 %86, %struct.termios* %12)
  %88 = load i32, i32* @stdout, align 4
  %89 = call i32 @fputc(i8 signext 10, i32 %88)
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fflush(i32 %90)
  br label %92

92:                                               ; preds = %84, %77
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* @EX_IOERR, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 72, i32 104
  %101 = trunc i32 %100 to i8
  %102 = call i32 @err(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8 signext %101)
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %23, i64 %105
  store i8 0, i8* %106, align 1
  %107 = call i8* @strpbrk(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8* %107, i8** %17, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i8*, i8** %17, align 8
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i8, i8* %23, align 16
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @EX_DATAERR, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i32, i8*, ...) @errx(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = call i32* @strchr(i8* %23, i8 signext 58)
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EX_DATAERR, align 4
  %126 = call i32 (i32, i8*, ...) @errx(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  %128 = call i8* @strdup(i8* %23)
  %129 = load %struct.passwd*, %struct.passwd** %6, align 8
  %130 = getelementptr inbounds %struct.passwd, %struct.passwd* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %148

131:                                              ; preds = %118
  %132 = load %struct.passwd*, %struct.passwd** %6, align 8
  %133 = call i32* @login_getpwclass(%struct.passwd* %132)
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %14, align 8
  %138 = call i32* @login_setcryptfmt(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %136, %131
  %141 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @login_close(i32* %143)
  %145 = call i8* @pw_pwcrypt(i8* %23)
  %146 = load %struct.passwd*, %struct.passwd** %6, align 8
  %147 = getelementptr inbounds %struct.passwd, %struct.passwd* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %127
  store i32 1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %149

149:                                              ; preds = %148, %41, %38
  %150 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @fputc(i8 signext, i32) #2

declare dso_local i32 @err(i32, i8*, i8 signext) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32* @login_getpwclass(%struct.passwd*) #2

declare dso_local i32* @login_setcryptfmt(i32*, i8*, i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @login_close(i32*) #2

declare dso_local i8* @pw_pwcrypt(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
