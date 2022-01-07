; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_check_secret_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_check_secret_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth = type { %struct.TYPE_4__*, i32, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [92 x i8] c"secret for user \22%s\22, auth-group \22%s\22, is too long; it should be at most 16 characters long\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"secret for user \22%s\22, target \22%s\22, is too long; it should be at most 16 characters long\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"secret for user \22%s\22, auth-group \22%s\22, is too short; it should be at least 12 characters long\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"secret for user \22%s\22, target \22%s\22, is too short; it should be at least 12 characters long\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"mutual secret for user \22%s\22, auth-group \22%s\22, is too long; it should be at most 16 characters long\00", align 1
@.str.5 = private unnamed_addr constant [95 x i8] c"mutual secret for user \22%s\22, target \22%s\22, is too long; it should be at most 16 characters long\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"mutual secret for user \22%s\22, auth-group \22%s\22, is too short; it should be at least 12 characters long\00", align 1
@.str.7 = private unnamed_addr constant [97 x i8] c"mutual secret for user \22%s\22, target \22%s\22, is too short; it should be at least 12 characters long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth*)* @auth_check_secret_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_check_secret_length(%struct.auth* %0) #0 {
  %2 = alloca %struct.auth*, align 8
  %3 = alloca i64, align 8
  store %struct.auth* %0, %struct.auth** %2, align 8
  %4 = load %struct.auth*, %struct.auth** %2, align 8
  %5 = getelementptr inbounds %struct.auth, %struct.auth* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @strlen(i32* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 16
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load %struct.auth*, %struct.auth** %2, align 8
  %12 = getelementptr inbounds %struct.auth, %struct.auth* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.auth*, %struct.auth** %2, align 8
  %19 = getelementptr inbounds %struct.auth, %struct.auth* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.auth*, %struct.auth** %2, align 8
  %22 = getelementptr inbounds %struct.auth, %struct.auth* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @log_warnx(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %25)
  br label %39

27:                                               ; preds = %10
  %28 = load %struct.auth*, %struct.auth** %2, align 8
  %29 = getelementptr inbounds %struct.auth, %struct.auth* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.auth*, %struct.auth** %2, align 8
  %32 = getelementptr inbounds %struct.auth, %struct.auth* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @log_warnx(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32* %37)
  br label %39

39:                                               ; preds = %27, %17
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i64, i64* %3, align 8
  %42 = icmp ult i64 %41, 12
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.auth*, %struct.auth** %2, align 8
  %45 = getelementptr inbounds %struct.auth, %struct.auth* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.auth*, %struct.auth** %2, align 8
  %52 = getelementptr inbounds %struct.auth, %struct.auth* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.auth*, %struct.auth** %2, align 8
  %55 = getelementptr inbounds %struct.auth, %struct.auth* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @log_warnx(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32* %58)
  br label %72

60:                                               ; preds = %43
  %61 = load %struct.auth*, %struct.auth** %2, align 8
  %62 = getelementptr inbounds %struct.auth, %struct.auth* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.auth*, %struct.auth** %2, align 8
  %65 = getelementptr inbounds %struct.auth, %struct.auth* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @log_warnx(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32* %70)
  br label %72

72:                                               ; preds = %60, %50
  br label %73

73:                                               ; preds = %72, %40
  %74 = load %struct.auth*, %struct.auth** %2, align 8
  %75 = getelementptr inbounds %struct.auth, %struct.auth* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %149

78:                                               ; preds = %73
  %79 = load %struct.auth*, %struct.auth** %2, align 8
  %80 = getelementptr inbounds %struct.auth, %struct.auth* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @strlen(i32* %81)
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %3, align 8
  %84 = icmp ugt i64 %83, 16
  br i1 %84, label %85, label %115

85:                                               ; preds = %78
  %86 = load %struct.auth*, %struct.auth** %2, align 8
  %87 = getelementptr inbounds %struct.auth, %struct.auth* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.auth*, %struct.auth** %2, align 8
  %94 = getelementptr inbounds %struct.auth, %struct.auth* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.auth*, %struct.auth** %2, align 8
  %97 = getelementptr inbounds %struct.auth, %struct.auth* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @log_warnx(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32* %100)
  br label %114

102:                                              ; preds = %85
  %103 = load %struct.auth*, %struct.auth** %2, align 8
  %104 = getelementptr inbounds %struct.auth, %struct.auth* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.auth*, %struct.auth** %2, align 8
  %107 = getelementptr inbounds %struct.auth, %struct.auth* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @log_warnx(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32* %112)
  br label %114

114:                                              ; preds = %102, %92
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i64, i64* %3, align 8
  %117 = icmp ult i64 %116, 12
  br i1 %117, label %118, label %148

118:                                              ; preds = %115
  %119 = load %struct.auth*, %struct.auth** %2, align 8
  %120 = getelementptr inbounds %struct.auth, %struct.auth* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.auth*, %struct.auth** %2, align 8
  %127 = getelementptr inbounds %struct.auth, %struct.auth* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.auth*, %struct.auth** %2, align 8
  %130 = getelementptr inbounds %struct.auth, %struct.auth* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @log_warnx(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32* %133)
  br label %147

135:                                              ; preds = %118
  %136 = load %struct.auth*, %struct.auth** %2, align 8
  %137 = getelementptr inbounds %struct.auth, %struct.auth* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.auth*, %struct.auth** %2, align 8
  %140 = getelementptr inbounds %struct.auth, %struct.auth* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @log_warnx(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.7, i64 0, i64 0), i32 %138, i32* %145)
  br label %147

147:                                              ; preds = %135, %125
  br label %148

148:                                              ; preds = %147, %115
  br label %149

149:                                              ; preds = %148, %73
  ret void
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @log_warnx(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
