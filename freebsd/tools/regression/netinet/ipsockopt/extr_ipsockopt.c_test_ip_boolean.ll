; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_boolean.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipsockopt/extr_ipsockopt.c_test_ip_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"test_ip_boolean: initial getsockopt()\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"test_ip_boolean(%s, %s): initial getsockopt() returned %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"test_ip_boolean(%s, %s): initial getsockopt() didn't return data\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"test_ip_boolean(%s, %s): initial getsockopt() returned %d (expected %d)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"test_ip_boolean(%s, %s): setsockopt() to %d\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"test_ip_boolean(%s, %s): getsockopt() after set to %d\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"test_ip_boolean(%s, %s): getsockopt() after set to %d returned %d bytes\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"test_ip_boolean(%s, %s): getsockopt() after set to %d didn't return data\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"test_ip_boolean(%s, %s): getsockopt() after set to %d returned %d\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"test_ip_boolean(%s, %s): setsockopt() to reset\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"test_ip_boolean(%s, %s): getsockopt() after reset\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"test_ip_boolean(%s, %s): getsockopt() after reset returned %d bytes\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"test_ip_boolean(%s, %s): getsockopt() after reset didn't return data\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"test_ip_boolean(%s, %s): getsockopt() after reset returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32, i32)* @test_ip_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ip_boolean(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 255, i32* %13, align 4
  br label %20

19:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 -1, i32* %22, align 4
  store i32 8, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IPPROTO_IP, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %27 = call i64 @getsockopt(i32 %23, i32 %24, i32 %25, i32* %26, i32* %15)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 4
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IPPROTO_IP, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @setsockopt(i32 %61, i32 %62, i32 %63, i32* %13, i32 4)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 -1, i32* %72, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 -1, i32* %73, align 4
  store i32 8, i32* %15, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @IPPROTO_IP, align 4
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %78 = call i64 @getsockopt(i32 %74, i32 %75, i32 %76, i32* %77, i32* %15)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 4
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8* %90, i8* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %85
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i8* %100, i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = icmp ne i32 %106, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i8* %113, i8* %114, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %104
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @IPPROTO_IP, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @setsockopt(i32 %121, i32 %122, i32 %123, i32* %13, i32 4)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %126, %119
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 -1, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 -1, i32* %132, align 4
  store i32 8, i32* %15, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @IPPROTO_IP, align 4
  %135 = load i32, i32* %9, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %137 = call i64 @getsockopt(i32 %133, i32 %134, i32 %135, i32* %136, i32* %15)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %140, i8* %141)
  br label %143

143:                                              ; preds = %139, %130
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ne i64 %145, 4
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8* %148, i8* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %143
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0), i8* %157, i8* %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8* %166, i8* %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %160
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
