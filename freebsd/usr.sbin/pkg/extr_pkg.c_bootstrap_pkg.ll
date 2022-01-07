; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_bootstrap_pkg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_bootstrap_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@PACKAGESITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No PACKAGESITE defined\00", align 1
@SIGNATURE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error looking up SIGNATURE_TYPE\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Bootstrapping pkg from %s, please wait...\0A\00", align 1
@URL_SCHEME_PREFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s/Latest/pkg.txz\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s/pkg.txz.XXXXXX\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FINGERPRINTS\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s/pkg.txz.sig.XXXXXX\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s/Latest/pkg.txz.sig\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Signature for pkg not available.\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"PUBKEY\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s/pkg.txz.pubkeysig.XXXXXX\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s/Latest/pkg.txz.pubkeysig\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Signature type %s is not supported for bootstrapping.\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Error fetching %s: %s\00", align 1
@fetchLastErrString = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [64 x i8] c"A pre-built version of pkg could not be found for your system.\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"Consider changing PACKAGESITE or installing it from ports: 'ports-mgmt/pkg'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bootstrap_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootstrap_pkg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %28 = load i32, i32* @PACKAGESITE, align 4
  %29 = call i64 @config_string(i32 %28, i8** %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %175

33:                                               ; preds = %1
  %34 = load i32, i32* @SIGNATURE_TYPE, align 4
  %35 = call i64 @config_string(i32 %34, i8** %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %175

39:                                               ; preds = %33
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @URL_SCHEME_PREFIX, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @URL_SCHEME_PREFIX, align 4
  %45 = call i32 @strlen(i32 %44)
  %46 = call i64 @strncmp(i32 %42, i8* %43, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* @URL_SCHEME_PREFIX, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = load i8*, i8** %11, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i32, i32* @MAXPATHLEN, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @snprintf(i8* %18, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @MAXPATHLEN, align 4
  %59 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %65

63:                                               ; preds = %54
  %64 = load i8*, i8** @_PATH_TMP, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @snprintf(i8* %21, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = call i32 @fetch_to_fd(i8* %18, i8* %21)
  store i32 %68, i32* %4, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %152

71:                                               ; preds = %65
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %143

74:                                               ; preds = %71
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32, i32* @MAXPATHLEN, align 4
  %84 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %90

88:                                               ; preds = %82
  %89 = load i8*, i8** @_PATH_TMP, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @snprintf(i8* %24, i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @MAXPATHLEN, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @snprintf(i8* %18, i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  %96 = call i32 @fetch_to_fd(i8* %18, i8* %24)
  store i32 %96, i32* %5, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %152

101:                                              ; preds = %90
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @verify_signature(i32 %102, i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %159

107:                                              ; preds = %101
  br label %142

108:                                              ; preds = %78
  %109 = load i8*, i8** %12, align 8
  %110 = call i64 @strcasecmp(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i32, i32* @MAXPATHLEN, align 4
  %114 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %120

118:                                              ; preds = %112
  %119 = load i8*, i8** @_PATH_TMP, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i8* [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @snprintf(i8* %24, i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @MAXPATHLEN, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @snprintf(i8* %18, i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %124)
  %126 = call i32 @fetch_to_fd(i8* %18, i8* %24)
  store i32 %126, i32* %5, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %152

131:                                              ; preds = %120
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @verify_pubsignature(i32 %132, i32 %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %159

137:                                              ; preds = %131
  br label %141

138:                                              ; preds = %108
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %139)
  br label %159

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %107
  br label %143

143:                                              ; preds = %142, %74, %71
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @MAXPATHLEN, align 4
  %146 = call i32 @extract_pkg_static(i32 %144, i8* %27, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @install_pkg_static(i8* %27, i8* %21, i32 %149)
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %148, %143
  br label %159

152:                                              ; preds = %128, %98, %70
  %153 = load i32, i32* @fetchLastErrString, align 4
  %154 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %18, i32 %153)
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 @fprintf(i32 %155, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0))
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0))
  br label %159

159:                                              ; preds = %152, %151, %138, %136, %106
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @close(i32 %163)
  %165 = call i32 @unlink(i8* %24)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, -1
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @close(i32 %170)
  %172 = call i32 @unlink(i8* %21)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %175

175:                                              ; preds = %173, %37, %31
  %176 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @config_string(i32, i8**) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @fetch_to_fd(i8*, i8*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @verify_signature(i32, i32) #2

declare dso_local i32 @verify_pubsignature(i32, i32) #2

declare dso_local i32 @extract_pkg_static(i32, i8*, i32) #2

declare dso_local i32 @install_pkg_static(i8*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
