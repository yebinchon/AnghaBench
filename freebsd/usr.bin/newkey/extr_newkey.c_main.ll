; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/newkey/extr_newkey.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/newkey/extr_newkey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64 }

@MAXNETNAMELEN = common dso_local global i32 0, align 4
@HEXKEYBYTES = common dso_local global i32 0, align 4
@KEYCHECKSUMSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"must be superuser\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown user: %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Adding new key for %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"New password:\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Retype password:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"password incorrect\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"unable to update publickey database (%u): %s\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Your new key has been successfully stored away.\0A\00", align 1
@YPDBPATH = common dso_local global i32 0, align 4

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @MAXNETNAMELEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @HEXKEYBYTES, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @HEXKEYBYTES, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32, i32* @HEXKEYBYTES, align 4
  %29 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %34 = load i32, i32* @HEXKEYBYTES, align 4
  %35 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %54, label %42

42:                                               ; preds = %2
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48, %2
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %48, %42
  %57 = call i64 (...) @geteuid()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = call %struct.passwd* @getpwnam(i8* %70)
  store %struct.passwd* %71, %struct.passwd** %14, align 8
  %72 = load %struct.passwd*, %struct.passwd** %14, align 8
  %73 = icmp eq %struct.passwd* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.passwd*, %struct.passwd** %14, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @user2netname(i8* %19, i32 %83, i8* null)
  br label %90

85:                                               ; preds = %61
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @host2netname(i8* %19, i8* %88, i8* null)
  br label %90

90:                                               ; preds = %85, %79
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %92 = call i8* @getpass(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %92, i8** %13, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @genkeys(i8* %23, i8* %27, i8* %93)
  %95 = load i32, i32* @HEXKEYBYTES, align 4
  %96 = call i32 @memcpy(i8* %33, i8* %27, i32 %95)
  %97 = load i32, i32* @HEXKEYBYTES, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %33, i64 %98
  %100 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %101 = call i32 @memcpy(i8* %99, i8* %27, i32 %100)
  %102 = load i32, i32* @HEXKEYBYTES, align 4
  %103 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %33, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @xencrypt(i8* %33, i8* %107)
  %109 = load i32, i32* @HEXKEYBYTES, align 4
  %110 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %111 = add nsw i32 %109, %110
  %112 = add nsw i32 %111, 1
  %113 = call i32 @memcpy(i8* %39, i8* %33, i32 %112)
  %114 = call i8* @getpass(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %115 = call i32 @xdecrypt(i8* %39, i8* %114)
  %116 = load i32, i32* @HEXKEYBYTES, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %39, i64 %117
  %119 = load i32, i32* @KEYCHECKSUMSIZE, align 4
  %120 = call i64 @memcmp(i8* %39, i8* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %90
  %123 = load i32, i32* @HEXKEYBYTES, align 4
  %124 = call i64 @memcmp(i8* %39, i8* %27, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %90
  %127 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = call i32 @setpublicmap(i8* %19, i8* %23, i8* %33)
  store i32 %129, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @err_string(i32 %133)
  %135 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %138 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i32 @user2netname(i8*, i32, i8*) #2

declare dso_local i32 @host2netname(i8*, i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @getpass(i8*) #2

declare dso_local i32 @genkeys(i8*, i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @xencrypt(i8*, i8*) #2

declare dso_local i32 @xdecrypt(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @setpublicmap(i8*, i8*, i8*) #2

declare dso_local i32 @err_string(i32) #2

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
