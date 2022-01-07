; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_tap.c_tap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_tap.c_tap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, i64, i32, i32 }
%struct.ifreq = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ether_addr = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@interface_name = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not open \22%s\22: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@TAPGIFNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not get interface name: %m\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not open PF_LINK socket: %m\00", align 1
@AF_LINK = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@local_bdaddr = common dso_local global i32 0, align 4
@SIOCSIFLLADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not set %s physical address: %m\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not get interface flags: %m\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not set IFF_UP: %m\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Using interface %s with addr %s\00", align 1
@tap_send = common dso_local global i32 0, align 4
@tap_recv = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_MAX_LEN = common dso_local global i64 0, align 8
@CHANNEL_OPEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%s/%s.pid\00", align 1
@_PATH_VARRUN = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"can't create pidfile\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"can't write pidfile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_init() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.ifreq, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @interface_name, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = call i32 @open(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load i32, i32* @interface_name, align 4
  %18 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #4
  unreachable

21:                                               ; preds = %0
  %22 = call i32 @memset(%struct.ifreq* %2, i32 0, i32 24)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TAPGIFNAME, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.ifreq* %2)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #4
  unreachable

31:                                               ; preds = %21
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load i32, i32* @SOCK_DGRAM, align 4
  %34 = call i32 @socket(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @exit(i32 %39) #4
  unreachable

41:                                               ; preds = %31
  %42 = load i32, i32* @AF_LINK, align 4
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @b2eaddr(i32 %50, i32* @local_bdaddr)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SIOCSIFLLADDR, align 4
  %54 = call i32 @ioctl(i32 %52, i32 %53, %struct.ifreq* %2)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #4
  unreachable

62:                                               ; preds = %41
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SIOCGIFFLAGS, align 4
  %65 = call i32 @ioctl(i32 %63, i32 %64, %struct.ifreq* %2)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 @exit(i32 %69) #4
  unreachable

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IFF_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load i32, i32* @IFF_UP, align 4
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SIOCSIFFLAGS, align 4
  %84 = call i32 @ioctl(i32 %82, i32 %83, %struct.ifreq* %2)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 @exit(i32 %88) #4
  unreachable

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @close(i32 %92)
  %94 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = bitcast i32* %97 to %struct.ether_addr*
  %99 = call i32 @ether_ntoa(%struct.ether_addr* %98)
  %100 = call i32 @log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %95, i32 %99)
  %101 = call %struct.TYPE_6__* (...) @channel_alloc()
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %1, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %103 = icmp eq %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 @exit(i32 %105) #4
  unreachable

107:                                              ; preds = %91
  %108 = load i32, i32* @tap_send, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @tap_recv, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* @ETHER_HDR_LEN, align 8
  %115 = load i64, i64* @ETHER_MAX_LEN, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %126 = call i32 @memcpy(i32 %121, i32 %124, i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %134 = call i32 @memcpy(i32 %129, i32 %132, i32 %133)
  %135 = load i32, i32* @CHANNEL_OPEN, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @channel_open(%struct.TYPE_6__* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %107
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  %144 = call i32 @exit(i32 %143) #4
  unreachable

145:                                              ; preds = %107
  %146 = trunc i64 %8 to i32
  %147 = load i8*, i8** @_PATH_VARRUN, align 8
  %148 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @snprintf(i8* %10, i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %147, i8* %149)
  %151 = call i32* @pidfile_open(i8* %10, i32 384, i32* null)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %175

160:                                              ; preds = %145
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @pidfile_write(i32* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @pidfile_remove(i32* %170)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %166, %160
  br label %175

175:                                              ; preds = %174, %158
  %176 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %176)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @log_err(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @b2eaddr(i32, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @log_info(i8*, i8*, i32) #2

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #2

declare dso_local %struct.TYPE_6__* @channel_alloc(...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @channel_open(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @pidfile_open(i8*, i32, i32*) #2

declare dso_local i64 @pidfile_write(i32*) #2

declare dso_local i32 @pidfile_remove(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
