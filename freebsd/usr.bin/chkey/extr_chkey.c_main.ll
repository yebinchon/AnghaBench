; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chkey/extr_chkey.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chkey/extr_chkey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@MAXNETNAMELEN = common dso_local global i32 0, align 4
@HEXKEYBYTES = common dso_local global i32 0, align 4
@KEYCHECKSUMSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot convert hostname to netname\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot convert username to netname\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Generating new key for %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"no password entry found: can't change key\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Retype password:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"password incorrect\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unable to update publickey database\00", align 1
@ROOTKEY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s: write\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unable to login with new secret key\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@PKMAP = common dso_local global i32 0, align 4
@domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.passwd*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @MAXNETNAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32, i32* @HEXKEYBYTES, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %29 = load i32, i32* @HEXKEYBYTES, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %33 = load i32, i32* @HEXKEYBYTES, align 4
  %34 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  %39 = load i32, i32* @HEXKEYBYTES, align 4
  %40 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %55, %2
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call i32 @getopt(i32 %46, i8** %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %17, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %17, align 4
  switch i32 %51, label %53 [
    i32 102, label %52
  ]

52:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %52
  br label %45

56:                                               ; preds = %45
  %57 = load i64, i64* @optind, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* @optind, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %62
  store i8** %64, i8*** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %56
  %70 = call i64 (...) @getuid()
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = call i64 @host2netname(i8* %24, i32* null, i32* null)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  br label %86

79:                                               ; preds = %69
  %80 = load i64, i64* %15, align 8
  %81 = call i64 @user2netname(i8* %24, i64 %80, i32* null)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  br label %86

86:                                               ; preds = %85, %78
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %15, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i64, i64* %15, align 8
  %95 = call %struct.passwd* @getpwuid(i64 %94)
  store %struct.passwd* %95, %struct.passwd** %14, align 8
  %96 = load %struct.passwd*, %struct.passwd** %14, align 8
  %97 = icmp eq %struct.passwd* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  br label %108

101:                                              ; preds = %90
  %102 = call %struct.passwd* @getpwuid(i64 0)
  store %struct.passwd* %102, %struct.passwd** %14, align 8
  %103 = load %struct.passwd*, %struct.passwd** %14, align 8
  %104 = icmp eq %struct.passwd* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108, %86
  %110 = call i8* @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %110, i8** %13, align 8
  store i32 1, i32* %16, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @genkeys(i8* %28, i8* %32, i8* %111)
  %113 = load i32, i32* @HEXKEYBYTES, align 4
  %114 = call i32 @memcpy(i8* %38, i8* %32, i32 %113)
  %115 = load i32, i32* @HEXKEYBYTES, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %38, i64 %116
  %118 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %119 = call i32 @memcpy(i8* %117, i8* %32, i32 %118)
  %120 = load i32, i32* @HEXKEYBYTES, align 4
  %121 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %38, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @xencrypt(i8* %38, i8* %125)
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %109
  %130 = load i32, i32* @HEXKEYBYTES, align 4
  %131 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  %134 = call i32 @memcpy(i8* %44, i8* %38, i32 %133)
  %135 = call i8* @getpass(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %136 = call i32 @xdecrypt(i8* %44, i8* %135)
  %137 = load i32, i32* @HEXKEYBYTES, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %44, i64 %138
  %140 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %141 = call i64 @memcmp(i8* %44, i8* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* @HEXKEYBYTES, align 4
  %145 = call i64 @memcmp(i8* %44, i8* %32, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143, %129
  %148 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %143
  br label %150

150:                                              ; preds = %149, %109
  %151 = call i32 @setpublicmap(i8* %24, i8* %28, i8* %38)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i64, i64* %15, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %188

159:                                              ; preds = %156
  %160 = load i32, i32* @ROOTKEY, align 4
  %161 = load i32, i32* @O_WRONLY, align 4
  %162 = load i32, i32* @O_TRUNC, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @O_CREAT, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @open(i32 %160, i32 %165, i32 0)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load i32, i32* @ROOTKEY, align 4
  %171 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  br label %185

172:                                              ; preds = %159
  store i8 10, i8* %19, align 1
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @strlen(i8* %32)
  %175 = call i64 @write(i32 %173, i8* %32, i32 %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %18, align 4
  %179 = call i64 @write(i32 %178, i8* %19, i32 1)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177, %172
  %182 = load i32, i32* @ROOTKEY, align 4
  %183 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184, %169
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @close(i32 %186)
  br label %188

188:                                              ; preds = %185, %156
  %189 = call i64 @key_setsecret(i8* %32)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %188
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %195 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i64 @host2netname(i8*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @user2netname(i8*, i64, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local %struct.passwd* @getpwuid(i64) #2

declare dso_local i8* @getpass(i8*) #2

declare dso_local i32 @genkeys(i8*, i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @xencrypt(i8*, i8*) #2

declare dso_local i32 @xdecrypt(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @setpublicmap(i8*, i8*, i8*) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @warn(i8*, i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @key_setsecret(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
