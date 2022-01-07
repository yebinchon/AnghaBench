; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_acct_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_acct_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acctv3 = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmdinfo = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"open %s %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"for read/write\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@CI_UNPRINTABLE = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@mflag = common dso_local global i64 0, align 8
@qflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"%6u %12.3lf cpu %12.0lfk mem %12.0lf io %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @acct_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @acct_load(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acctv3, align 8
  %7 = alloca %struct.cmdinfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %17 = call i32* @fopen(i8* %12, i8* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %26 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %25)
  store i32* null, i32** %3, align 8
  br label %178

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %175
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @readrec_forward(i32* %29, %struct.acctv3* %6)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %176

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  store i32 1, i32* %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %89, %41
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %46, %43
  %56 = phi i1 [ false, %43 ], [ %54, %46 ]
  br i1 %56, label %57, label %92

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %11, align 1
  %64 = load i8, i8* %11, align 1
  %65 = call i32 @isascii(i8 signext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i8, i8* %11, align 1
  %69 = call i64 @iscntrl(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67, %57
  %72 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 63, i8* %76, align 1
  %77 = load i32, i32* @CI_UNPRINTABLE, align 4
  %78 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 8
  br label %88

81:                                               ; preds = %67
  %82 = load i8, i8* %11, align 1
  %83 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %82, i8* %87, align 1
  br label %88

88:                                               ; preds = %81, %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %43

92:                                               ; preds = %55
  %93 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AFORK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 42, i8* %104, align 1
  br label %105

105:                                              ; preds = %98, %92
  %106 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 7
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 4
  store i32 %122, i32* %123, align 8
  %124 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 6
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %6, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* @uflag, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %155, label %132

132:                                              ; preds = %105
  %133 = load i64, i64* @sflag, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* @mflag, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @qflag, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138, %132
  %142 = call i32 @pacct_add(%struct.cmdinfo* %7)
  br label %143

143:                                              ; preds = %141, %138, %135
  %144 = load i64, i64* @sflag, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* @mflag, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* @qflag, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149, %143
  %153 = call i32 @usracct_add(%struct.cmdinfo* %7)
  br label %154

154:                                              ; preds = %152, %149, %146
  br label %175

155:                                              ; preds = %105
  %156 = load i32, i32* @qflag, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %162, %164
  %166 = sdiv i32 %165, 1000000
  %167 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 %166, i32 %168, i32 %170, i8* %172)
  br label %174

174:                                              ; preds = %158, %155
  br label %175

175:                                              ; preds = %174, %154
  br label %28

176:                                              ; preds = %40
  %177 = load i32*, i32** %9, align 8
  store i32* %177, i32** %3, align 8
  br label %178

178:                                              ; preds = %176, %20
  %179 = load i32*, i32** %3, align 8
  ret i32* %179
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @readrec_forward(i32*, %struct.acctv3*) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i64 @iscntrl(i8 signext) #1

declare dso_local i32 @pacct_add(%struct.cmdinfo*) #1

declare dso_local i32 @usracct_add(%struct.cmdinfo*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
