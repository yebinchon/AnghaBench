; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Vc:k:o:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"-V and -c are mutually exclusive\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"-V and -k are mutually exclusive\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"-V and -o are mutually exclusive\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"-c option is mandatory\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"-k option is mandatory\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"-o option is mandatory\00", align 1
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"failed to load certificate from %s\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to load private key from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  br label %20

20:                                               ; preds = %40, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %38 [
    i32 86, label %27
    i32 99, label %28
    i32 107, label %31
    i32 111, label %34
    i32 118, label %37
  ]

27:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @optarg, align 4
  %30 = call i8* @checked_strdup(i32 %29)
  store i8* %30, i8** %10, align 8
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @optarg, align 4
  %33 = call i8* @checked_strdup(i32 %32)
  store i8* %33, i8** %11, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @optarg, align 4
  %36 = call i8* @checked_strdup(i32 %35)
  store i8* %36, i8** %12, align 8
  br label %40

37:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %40

38:                                               ; preds = %25
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %37, %34, %31, %28, %27
  br label %20

41:                                               ; preds = %20
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  br label %89

73:                                               ; preds = %54
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8*, i8** %11, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i8*, i8** %12, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %13, align 8
  %93 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %94 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @OPENSSL_INIT_ADD_ALL_CIPHERS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @OPENSSL_INIT_ADD_ALL_DIGESTS, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @OPENSSL_init_crypto(i32 %99, i32* null)
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %102 = call i32 @pipe(i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %89
  %108 = call i64 (...) @fork()
  store i64 %108, i64* %18, align 8
  %109 = load i64, i64* %18, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i64, i64* %18, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @child(i8* %117, i8* %118, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %160

124:                                              ; preds = %113
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %157, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %10, align 8
  %129 = call i32* @checked_fopen(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32* @PEM_read_X509(i32* %130, i32* null, i32* null, i32* null)
  store i32* %131, i32** %16, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @ERR_print_errors_fp(i32 %135)
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %134, %127
  %140 = load i8*, i8** %11, align 8
  %141 = call i32* @checked_fopen(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %141, i32** %15, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i32* @PEM_read_PrivateKey(i32* %142, i32* null, i32* null, i32* null)
  store i32* %143, i32** %17, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* @stderr, align 4
  %148 = call i32 @ERR_print_errors_fp(i32 %147)
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32*, i32** %16, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @sign(i32* %152, i32* %153, i32 %155)
  br label %157

157:                                              ; preds = %151, %124
  %158 = load i64, i64* %18, align 8
  %159 = call i32 @wait_for_child(i64 %158)
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %116
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @checked_strdup(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @child(i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @checked_fopen(i8*, i8*) #1

declare dso_local i32* @PEM_read_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32* @PEM_read_PrivateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sign(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_child(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
