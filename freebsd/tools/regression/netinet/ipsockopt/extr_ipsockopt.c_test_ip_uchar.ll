; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_uchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_uchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"test_ip_uchar(%s, %s): initial getsockopt()\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"test_ip_uchar(%s, %s): initial getsockopt() returned %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"test_ip_uchar(%s, %s): initial getsockopt() didn't return data\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"test_ip_uchar(%s, %s): initial getsockopt() returned value of %d, not %d\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"test_ip_uchar(%s, %s): setsockopt(128)\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 128\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 128 returned %d bytes\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 128 didn't return data\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 128 returned %d\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"test_ip_uchar(%s, %s): setsockopt() to reset from 128\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"test_ip_uchar(%s, %s): getsockopt() after reset from 128 returned %d bytes\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"test_ip_uchar(%s, %s): getsockopt() after reset from 128 didn't return data\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"test_ip_uchar(%s, %s): getsockopt() after reset from 128 returned %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"test_ip_uchar(%s, %s): getsockopt(32000)\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 32000\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 32000 returned %d bytes\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 32000 didn't return data\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"test_ip_uchar(%s, %s): getsockopt() after set to 32000 returned 32000: failed to truncate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32)* @test_ip_uchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ip_uchar(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %14, align 4
  store i32 8, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IPPROTO_IP, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %19 = call i64 @getsockopt(i32 %15, i32 %16, i32 %17, i32* %18, i32* %12)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 128, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IPPROTO_IP, align 4
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %61 = call i64 @setsockopt(i32 %57, i32 %58, i32 %59, i32* %60, i32 4)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @err(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 -1, i32* %68, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %69, align 4
  store i32 8, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IPPROTO_IP, align 4
  %72 = load i32, i32* %8, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %74 = call i64 @getsockopt(i32 %70, i32 %71, i32 %72, i32* %73, i32* %12)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @err(i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %67
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 4
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 128
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* %102, i8* %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %97
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @IPPROTO_IP, align 4
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %114 = call i64 @setsockopt(i32 %110, i32 %111, i32 %112, i32* %113, i32 4)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @err(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %116, %107
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ne i64 %122, 4
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i8* %125, i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %120
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0), i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %133, %129
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0), i8* %142, i8* %143, i32 %145)
  br label %147

147:                                              ; preds = %141, %137
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 32000, i32* %148, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %149, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @IPPROTO_IP, align 4
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %154 = call i64 @setsockopt(i32 %150, i32 %151, i32 %152, i32* %153, i32 4)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load i64, i64* @errno, align 8
  %158 = load i64, i64* @EINVAL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %203

161:                                              ; preds = %156
  %162 = load i8*, i8** %7, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @err(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %162, i8* %163)
  br label %165

165:                                              ; preds = %161, %147
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 -1, i32* %166, align 4
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %167, align 4
  store i32 8, i32* %12, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IPPROTO_IP, align 4
  %170 = load i32, i32* %8, align 4
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %172 = call i64 @getsockopt(i32 %168, i32 %169, i32 %170, i32* %171, i32* %12)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @err(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i8* %175, i8* %176)
  br label %178

178:                                              ; preds = %174, %165
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ne i64 %180, 4
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i8*, i8** %7, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i8* %183, i8* %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %178
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i8* %192, i8* %193)
  br label %195

195:                                              ; preds = %191, %187
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 32000
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i8*, i8** %7, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i64 0, i64 0), i8* %200, i8* %201)
  br label %203

203:                                              ; preds = %160, %199, %195
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
