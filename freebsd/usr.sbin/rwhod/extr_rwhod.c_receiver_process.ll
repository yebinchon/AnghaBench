; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_receiver_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_receiver_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { i64, i32 }
%struct.stat = type { i32 }
%struct.whod = type { i64, i64, i8*, i32, %struct.whoent*, i8*, i8**, i8* }
%struct.whoent = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@_PATH_RWHODIR = common dso_local global i32 0, align 4
@CAP_CREATE = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cap_rights_limit: %m\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"cap_enter: %m\00", align 1
@s = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"recv: %m\00", align 1
@sp = common dso_local global %struct.TYPE_4__* null, align 8
@insecure_mode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%d: bad source port from %s\00", align 1
@WHDRSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"short packet from %s\00", align 1
@WHODVERSION = common dso_local global i64 0, align 8
@WHODTYPE_STATUS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"malformed host name from %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"whod.%s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiver_process() #0 {
  %1 = alloca %struct.sockaddr_in, align 8
  %2 = alloca %struct.stat, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.whod, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 16, i32* %7, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_DIRECTORY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @LOG_WARNING, align 4
  %19 = load i32, i32* @_PATH_RWHODIR, align 4
  %20 = call i32 (i32, i8*, ...) @syslog(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %0
  %23 = load i32, i32* @CAP_CREATE, align 4
  %24 = load i32, i32* @CAP_FSTAT, align 4
  %25 = load i32, i32* @CAP_FTRUNCATE, align 4
  %26 = load i32, i32* @CAP_LOOKUP, align 4
  %27 = load i32, i32* @CAP_SEEK, align 4
  %28 = load i32, i32* @CAP_WRITE, align 4
  %29 = call i32 (i32*, i32, i32, i32, ...) @cap_rights_init(i32* %3, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @caph_rights_limit(i32 %30, i32* %3)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = call i32 (i32, i8*, ...) @syslog(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %22
  %38 = call i64 (...) @caph_enter()
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = call i32 (i32, i8*, ...) @syslog(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %164, %127, %108, %102, %96, %85, %72, %61, %44
  %46 = load i32, i32* @s, align 4
  %47 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %48 = call i32 @recvfrom(i32 %46, %struct.whod* %6, i32 64, i32 0, %struct.sockaddr* %47, i32* %7)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @LOG_WARNING, align 4
  %60 = call i32 (i32, i8*, ...) @syslog(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54, %51
  br label %45

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sp, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load i32, i32* @insecure_mode, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @LOG_WARNING, align 4
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ntohs(i64 %75)
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @inet_ntoa(i32 %78)
  %80 = call i32 (i32, i8*, ...) @syslog(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %79)
  br label %45

81:                                               ; preds = %69, %62
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @WHDRSIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @LOG_WARNING, align 4
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @inet_ntoa(i32 %88)
  %90 = call i32 (i32, i8*, ...) @syslog(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %45

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.whod, %struct.whod* %6, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WHODVERSION, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %45

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.whod, %struct.whod* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WHODTYPE_STATUS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %45

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.whod, %struct.whod* %6, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @verify(i8* %105, i32 8)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @LOG_WARNING, align 4
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @inet_ntoa(i32 %111)
  %113 = call i32 (i32, i8*, ...) @syslog(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %45

114:                                              ; preds = %103
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %116 = getelementptr inbounds %struct.whod, %struct.whod* %6, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @snprintf(i8* %115, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %121 = load i32, i32* @O_WRONLY, align 4
  %122 = load i32, i32* @O_CREAT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @openat(i32 %119, i8* %120, i32 %123, i32 420)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load i32, i32* @LOG_WARNING, align 4
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %130 = call i32 (i32, i8*, ...) @syslog(i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %45

131:                                              ; preds = %114
  %132 = load i32, i32* @CAP_FSTAT, align 4
  %133 = load i32, i32* @CAP_FTRUNCATE, align 4
  %134 = load i32, i32* @CAP_WRITE, align 4
  %135 = call i32 (i32*, i32, i32, i32, ...) @cap_rights_init(i32* %3, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = call i64 @caph_rights_limit(i32 %136, i32* %3)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load i32, i32* @LOG_WARNING, align 4
  %141 = call i32 (i32, i8*, ...) @syslog(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %142 = call i32 @exit(i32 1) #3
  unreachable

143:                                              ; preds = %131
  %144 = call i32 @time(i32* %10)
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @_time_to_int(i32 %145)
  %147 = getelementptr inbounds %struct.whod, %struct.whod* %6, i32 0, i32 3
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* %9, align 4
  %149 = bitcast %struct.whod* %6 to i8*
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @write(i32 %148, i8* %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @fstat(i32 %152, %struct.stat* %2)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155, %143
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @ftruncate(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @close(i32 %165)
  br label %45
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, ...) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @recvfrom(i32, %struct.whod*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @verify(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @openat(i32, i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @_time_to_int(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
