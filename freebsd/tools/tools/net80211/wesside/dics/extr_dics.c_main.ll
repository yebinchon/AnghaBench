; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/dics/extr_dics.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/dics/extr_dics.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Usage: %s <sip> [pps]\0A\00", align 1
@pps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PPS=%d\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@DPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_RECVTTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"setsockopt()\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Got signal from %s:%d TTL=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Sending ttl (%d)...\0A\00", align 1
@TTLSENT = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Sending stuff to %s...\0A\00", align 1
@PRGA_LEN = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Stopping send\0A\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = bitcast [16 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 16, i1 false)
  store i8 0, i8* %11, align 1
  store i8* null, i8** %16, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @exit(i32 1) #4
  unreachable

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* @pps, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* @pps, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %16, align 8
  %43 = call i32 @memset(%struct.sockaddr_in* %13, i32 0, i32 12)
  %44 = load i32, i32* @PF_INET, align 4
  %45 = load i32, i32* @SOCK_DGRAM, align 4
  %46 = load i32, i32* @IPPROTO_UDP, align 4
  %47 = call i32 @socket(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %37
  %54 = load i32, i32* @PF_INET, align 4
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @INADDR_ANY, align 4
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @DPORT, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %64 = call i32 @bind(i32 %62, %struct.sockaddr* %63, i32 12)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #4
  unreachable

69:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @IPPROTO_IP, align 4
  %72 = load i32, i32* @IP_RECVTTL, align 4
  %73 = call i32 @setsockopt(i32 %70, i32 %71, i32 %72, i32* %8, i32 4)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 @exit(i32 1) #4
  unreachable

78:                                               ; preds = %69
  %79 = load i32, i32* @PF_INET, align 4
  %80 = load i32, i32* @SOCK_RAW, align 4
  %81 = load i32, i32* @IPPROTO_UDP, align 4
  %82 = call i32 @socket(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @exit(i32 1) #4
  unreachable

88:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @IPPROTO_IP, align 4
  %91 = load i32, i32* @IP_HDRINCL, align 4
  %92 = call i32 @setsockopt(i32 %89, i32 %90, i32 %91, i32* %8, i32 4)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #4
  unreachable

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %189
  %99 = call i32 @FD_ZERO(i32* %15)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @FD_SET(i32 %100, i32* %15)
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 10000, i32* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @select(i32 %105, i32* %15, i32* null, i32* null, %struct.timeval* %14)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 @exit(i32 1) #4
  unreachable

112:                                              ; preds = %98
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %170

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @FD_ISSET(i32 %116, i32* %15)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %170

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %122 = call i64 (i32, i8*, ...) @check_signal(i32 %120, i8* %121, i8* %18, i16* %12)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %169

124:                                              ; preds = %119
  store i32 0, i32* %19, align 4
  %125 = load i8, i8* %18, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* %11, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %133 = call i64 @strcmp(i8* %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %130, %124
  store i32 1, i32* %19, align 4
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i8, i8* %18, align 1
  store i8 %140, i8* %11, align 1
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %143 = call i32 @strcpy(i8* %141, i8* %142)
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %145 = load i16, i16* %12, align 2
  %146 = zext i16 %145 to i32
  %147 = load i8, i8* %11, align 1
  %148 = zext i8 %147 to i32
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %144, i32 %146, i32 %148)
  store i32 2, i32* %9, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %139
  %153 = load i8, i8* %11, align 1
  %154 = zext i8 %153 to i32
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = load i8*, i8** %16, align 8
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %159 = load i16, i16* %12, align 2
  %160 = load i8, i8* @TTLSENT, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* %11, align 1
  %163 = zext i8 %162 to i32
  %164 = sub nsw i32 %161, %163
  %165 = add nsw i32 69, %164
  %166 = trunc i32 %165 to i8
  %167 = call i32 @send_stuff(i32 %156, i8* %157, i8* %158, i16 zeroext %159, i8 zeroext %166)
  br label %168

168:                                              ; preds = %152, %139
  br label %169

169:                                              ; preds = %168, %119
  br label %170

170:                                              ; preds = %169, %115, %112
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %174)
  %176 = load i32, i32* %6, align 4
  %177 = load i8*, i8** %16, align 8
  %178 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %179 = load i16, i16* %12, align 2
  %180 = load i8, i8* @PRGA_LEN, align 1
  %181 = call i32 @send_stuff(i32 %176, i8* %177, i8* %178, i16 zeroext %179, i8 zeroext %180)
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %173
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %173
  br label %189

189:                                              ; preds = %188, %170
  br label %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i64 @check_signal(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @send_stuff(i32, i8*, i8*, i16 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
