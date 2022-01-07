; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_userland_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_userland_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sysctl_req = type { i32, i64, i64, i64, i64, i64, i8*, i64, i32, i32, i8*, %struct.thread* }

@sysctl_old_user = common dso_local global i32 0, align 4
@sysctl_new_user = common dso_local global i32 0, align 4
@REQ_UNWIRED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@sysctlmemlock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PRI_USER = common dso_local global i32 0, align 4
@REQ_WIRED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@KTR_SYSCTL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userland_sysctl(%struct.thread* %0, i32* %1, i32 %2, i8* %3, i64* %4, i32 %5, i8* %6, i64 %7, i64* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sysctl_req, align 8
  store %struct.thread* %0, %struct.thread** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i64* %4, i64** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64* %8, i64** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = call i32 @bzero(%struct.sysctl_req* %24, i32 88)
  %26 = load %struct.thread*, %struct.thread** %12, align 8
  %27 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 11
  store %struct.thread* %26, %struct.thread** %27, align 8
  %28 = load i32, i32* %21, align 4
  %29 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i64*, i64** %16, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %10
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64*, i64** %16, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load i64*, i64** %16, align 8
  %41 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 1
  %42 = call i32 @copyin(i64* %40, i64* %41, i32 8)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %22, align 4
  store i32 %46, i32* %11, align 4
  br label %152

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %10
  %50 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 6
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i64, i64* %19, align 8
  %59 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 3
  store i64 %58, i64* %59, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 10
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32, i32* @sysctl_old_user, align 4
  %64 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 9
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @sysctl_new_user, align 4
  %66 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 8
  store i32 %65, i32* %66, align 8
  %67 = load i64, i64* @REQ_UNWIRED, align 8
  %68 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 4
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %23, align 4
  %69 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = mul nsw i32 4, %75
  %77 = sext i32 %76 to i64
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  store i32 1, i32* %23, align 4
  %80 = call i32 @sx_xlock(i32* @sysctlmemlock)
  br label %81

81:                                               ; preds = %79, %72, %62
  %82 = load %struct.thread*, %struct.thread** %12, align 8
  %83 = call i32 @TD_TO_VNET(%struct.thread* %82)
  %84 = call i32 @CURVNET_SET(i32 %83)
  br label %85

85:                                               ; preds = %95, %81
  %86 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 7
  store i64 0, i64* %87, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @sysctl_root(i32 0, i32* %88, i32 %89, %struct.sysctl_req* %24)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @PRI_USER, align 4
  %97 = call i32 @kern_yield(i32 %96)
  br label %85

98:                                               ; preds = %94
  %99 = call i32 (...) @CURVNET_RESTORE()
  %100 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @REQ_WIRED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @vsunlock(i8* %110, i64 %112)
  br label %114

114:                                              ; preds = %108, %104, %98
  %115 = load i32, i32* %23, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @sx_xunlock(i32* @sysctlmemlock)
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %22, align 4
  store i32 %127, i32* %11, align 4
  br label %152

128:                                              ; preds = %122, %119
  %129 = load i64*, i64** %20, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 6
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %20, align 8
  store i64 %143, i64* %144, align 8
  br label %149

145:                                              ; preds = %135, %131
  %146 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %24, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %20, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %128
  %151 = load i32, i32* %22, align 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %150, %126, %45
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local i32 @bzero(%struct.sysctl_req*, i32) #1

declare dso_local i32 @copyin(i64*, i64*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TD_TO_VNET(%struct.thread*) #1

declare dso_local i32 @sysctl_root(i32, i32*, i32, %struct.sysctl_req*) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @vsunlock(i8*, i64) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
