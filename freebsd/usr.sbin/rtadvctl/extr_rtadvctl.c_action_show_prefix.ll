; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvctl/extr_rtadvctl.c_action_show_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvctl/extr_rtadvctl.c_action_show_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prefix = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.timespec = type { i64 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@SSBUFLEN = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09  %s/%d\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" vltime=%s\00", align 1
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(expire: %s)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" pltime=%s\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"(expire %s)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" flags=\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" expire=%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prefix*)* @action_show_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_show_prefix(%struct.prefix* %0) #0 {
  %2 = alloca %struct.prefix*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec*, align 8
  store %struct.prefix* %0, %struct.prefix** %2, align 8
  %8 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @SSBUFLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %16 = call i32 @clock_gettime(i32 %15, %struct.timespec* %6)
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = load %struct.prefix*, %struct.prefix** %2, align 8
  %19 = getelementptr inbounds %struct.prefix, %struct.prefix* %18, i32 0, i32 9
  %20 = trunc i64 %9 to i32
  %21 = call i8* @inet_ntop(i32 %17, i32* %19, i8* %11, i32 %20)
  %22 = load %struct.prefix*, %struct.prefix** %2, align 8
  %23 = getelementptr inbounds %struct.prefix, %struct.prefix* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.prefix*, %struct.prefix** %2, align 8
  %28 = getelementptr inbounds %struct.prefix, %struct.prefix* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 128, label %30
    i32 130, label %32
    i32 129, label %34
  ]

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %36

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %1, %34, %32, %30
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.prefix*, %struct.prefix** %2, align 8
  %39 = getelementptr inbounds %struct.prefix, %struct.prefix* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.prefix*, %struct.prefix** %2, align 8
  %46 = getelementptr inbounds %struct.prefix, %struct.prefix* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @sec2str(i64 %47, i8* %14)
  br label %49

49:                                               ; preds = %44, %43
  %50 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %43 ], [ %48, %44 ]
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = load %struct.prefix*, %struct.prefix** %2, align 8
  %53 = getelementptr inbounds %struct.prefix, %struct.prefix* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load %struct.prefix*, %struct.prefix** %2, align 8
  %58 = getelementptr inbounds %struct.prefix, %struct.prefix* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.prefix*, %struct.prefix** %2, align 8
  %65 = getelementptr inbounds %struct.prefix, %struct.prefix* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  %70 = call i8* @sec2str(i64 %69, i8* %14)
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %63
  %73 = phi i8* [ %70, %63 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %71 ]
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %49
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.prefix*, %struct.prefix** %2, align 8
  %78 = getelementptr inbounds %struct.prefix, %struct.prefix* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %88

83:                                               ; preds = %75
  %84 = load %struct.prefix*, %struct.prefix** %2, align 8
  %85 = getelementptr inbounds %struct.prefix, %struct.prefix* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @sec2str(i64 %86, i8* %14)
  br label %88

88:                                               ; preds = %83, %82
  %89 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %82 ], [ %87, %83 ]
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %89)
  %91 = load %struct.prefix*, %struct.prefix** %2, align 8
  %92 = getelementptr inbounds %struct.prefix, %struct.prefix* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  %96 = load %struct.prefix*, %struct.prefix** %2, align 8
  %97 = getelementptr inbounds %struct.prefix, %struct.prefix* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.prefix*, %struct.prefix** %2, align 8
  %104 = getelementptr inbounds %struct.prefix, %struct.prefix* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  %109 = call i8* @sec2str(i64 %108, i8* %14)
  br label %111

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %102
  %112 = phi i8* [ %109, %102 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %110 ]
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %88
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %117 = load %struct.prefix*, %struct.prefix** %2, align 8
  %118 = getelementptr inbounds %struct.prefix, %struct.prefix* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load %struct.prefix*, %struct.prefix** %2, align 8
  %123 = getelementptr inbounds %struct.prefix, %struct.prefix* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121, %114
  %127 = load %struct.prefix*, %struct.prefix** %2, align 8
  %128 = getelementptr inbounds %struct.prefix, %struct.prefix* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %132)
  %134 = load %struct.prefix*, %struct.prefix** %2, align 8
  %135 = getelementptr inbounds %struct.prefix, %struct.prefix* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %139)
  br label %143

141:                                              ; preds = %121
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %126
  %144 = load %struct.prefix*, %struct.prefix** %2, align 8
  %145 = getelementptr inbounds %struct.prefix, %struct.prefix* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.prefix*, %struct.prefix** %2, align 8
  %150 = getelementptr inbounds %struct.prefix, %struct.prefix* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.timespec* @rtadvd_timer_rest(i64 %151)
  store %struct.timespec* %152, %struct.timespec** %7, align 8
  %153 = load %struct.timespec*, %struct.timespec** %7, align 8
  %154 = icmp ne %struct.timespec* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.timespec*, %struct.timespec** %7, align 8
  %157 = getelementptr inbounds %struct.timespec, %struct.timespec* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @sec2str(i64 %158, i8* %14)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %155, %148
  br label %162

162:                                              ; preds = %161, %143
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %164 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %164)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i8* @sec2str(i64, i8*) #2

declare dso_local %struct.timespec* @rtadvd_timer_rest(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
