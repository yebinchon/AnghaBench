; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_ipaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"address %s is not of expected family %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot parse %s %s address %s\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"mask cannot be provided for maskless specification\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"missing address prefix for %s\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s is not a valid address prefix\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"prefix %u is too long for an %s address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, i32*, i32*, i32)* @parse_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipaddr(i8* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %7, align 4
  br label %169

31:                                               ; preds = %6
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 58)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %39 = load i32, i32* @AF_INET, align 4
  store i32 %39, i32* %18, align 4
  store i32 32, i32* %20, align 4
  br label %42

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %41 = load i32, i32* @AF_INET6, align 4
  store i32 %41, i32* %18, align 4
  store i32 128, i32* %20, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AF_UNSPEC, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %18, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  br label %68

50:                                               ; preds = %42
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i8**, i8*** %9, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AF_INET, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %7, align 4
  br label %169

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 47)
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i8*, i8** %16, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %18, align 4
  %79 = load i8**, i8*** %9, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @inet_pton(i32 %78, i8* %81, i32* %82)
  store i32 %83, i32* %19, align 4
  %84 = load i8*, i8** %16, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i8*, i8** %16, align 8
  store i8 47, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %77
  %89 = load i32, i32* %19, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load i8**, i8*** %9, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %93, i8* %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %7, align 4
  br label %169

99:                                               ; preds = %88
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %144

102:                                              ; preds = %99
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = call i32 @strtoul(i8* %104, i8** %21, i32 10)
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %7, align 4
  br label %169

111:                                              ; preds = %102
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = icmp eq i8* %112, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %7, align 4
  br label %169

120:                                              ; preds = %111
  %121 = load i8*, i8** %21, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %7, align 4
  br label %169

129:                                              ; preds = %120
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32, i32* %22, align 4
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %134, i8* %135)
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %7, align 4
  br label %169

138:                                              ; preds = %129
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %20, align 4
  %141 = udiv i32 %140, 8
  %142 = call i32 @memset(i32* %139, i32 0, i32 %141)
  %143 = load i32, i32* %22, align 4
  store i32 %143, i32* %20, align 4
  br label %144

144:                                              ; preds = %138, %99
  %145 = load i32*, i32** %12, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load i32*, i32** %12, align 8
  store i32* %148, i32** %17, align 8
  br label %149

149:                                              ; preds = %154, %147
  %150 = load i32, i32* %20, align 4
  %151 = icmp uge i32 %150, 8
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32*, i32** %17, align 8
  store i32 -1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152
  %155 = load i32*, i32** %17, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %17, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sub i32 %157, 8
  store i32 %158, i32* %20, align 4
  br label %149

159:                                              ; preds = %149
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32, i32* %20, align 4
  %164 = sub i32 8, %163
  %165 = shl i32 -1, %164
  %166 = load i32*, i32** %17, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %159
  br label %168

168:                                              ; preds = %167, %144
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %133, %124, %116, %108, %91, %55, %29
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
