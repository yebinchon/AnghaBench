; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iface* }
%struct.iface = type { i8*, i32 }
%struct.ifreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"net.ifdescr_maxlen\00", align 1
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"iface descr: sysctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"iface descr: sysctl net.ifdescr_maxlen < 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"iface descr: malloc failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"iface descr: description exceeds maximum (%d)\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"iface descr: socket(): %s\0A\00", align 1
@SIOCSIFDESCR = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"iface descr: ioctl(SIOCSIFDESCR, %s): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iface_Descr(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.ifreq, align 8
  %5 = alloca %struct.iface*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  store i64 4, i64* %6, align 8
  %12 = call i64 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %10, i64* %6, i32* null, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @LogERROR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i32, i8*, ...) @log_Printf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 1, i32* %2, align 4
  br label %142

19:                                               ; preds = %1
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @LogERROR, align 4
  %24 = call i32 (i32, i8*, ...) @log_Printf(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %142

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 1, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @LogERROR, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i32, i8*, ...) @log_Printf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  store i32 1, i32* %2, align 4
  br label %142

37:                                               ; preds = %25
  %38 = load i8*, i8** %11, align 8
  store i8 0, i8* %38, align 1
  %39 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %40 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %75, %37
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @strlcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %78

61:                                               ; preds = %54, %48
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @strlcat(i8* %62, i8* %69, i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %78

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %42

78:                                               ; preds = %74, %60, %42
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @LogERROR, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 (i32, i8*, ...) @log_Printf(i32 %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @free(i8* %87)
  store i32 1, i32* %2, align 4
  br label %142

89:                                               ; preds = %78
  %90 = load i32, i32* @PF_INET, align 4
  %91 = load i32, i32* @SOCK_DGRAM, align 4
  %92 = call i32 @ID0socket(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* @LogERROR, align 4
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @strerror(i32 %96)
  %98 = call i32 (i32, i8*, ...) @log_Printf(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @free(i8* %99)
  store i32 1, i32* %2, align 4
  br label %142

101:                                              ; preds = %89
  %102 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %103 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %102, i32 0, i32 3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load %struct.iface*, %struct.iface** %105, align 8
  store %struct.iface* %106, %struct.iface** %5, align 8
  %107 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.iface*, %struct.iface** %5, align 8
  %110 = getelementptr inbounds %struct.iface, %struct.iface* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @strlcpy(i32 %108, i32 %111, i32 4)
  %113 = load i8*, i8** %11, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = add nsw i64 %114, 1
  %116 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @SIOCSIFDESCR, align 4
  %123 = ptrtoint %struct.ifreq* %4 to i32
  %124 = call i64 @ID0ioctl(i32 %121, i32 %122, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %101
  %127 = load i32, i32* @LogWARN, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @strerror(i32 %129)
  %131 = call i32 (i32, i8*, ...) @log_Printf(i32 %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %128, i32 %130)
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @free(i8* %132)
  store i32 1, i32* %2, align 4
  br label %142

134:                                              ; preds = %101
  %135 = load %struct.iface*, %struct.iface** %5, align 8
  %136 = getelementptr inbounds %struct.iface, %struct.iface* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.iface*, %struct.iface** %5, align 8
  %141 = getelementptr inbounds %struct.iface, %struct.iface* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %134, %126, %94, %82, %32, %22, %14
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
