; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_tftp.c_recvfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_tftp.c_recvfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tftphdr = type { i64, i32, i32, i32 }
%struct.tftp_stats = type { i64 }
%struct.servent = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tftp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@peer_sock = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_SIMPLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Requesting %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot send RRQ packet\0A\00", align 1
@timeoutpacket = common dso_local global i32 0, align 4
@RP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Try %d, didn't receive answer from remote.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Transfer timed out.\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Error code %d: %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"write_init\00", align 1
@OACK = common dso_local global i64 0, align 8
@options_rfc_enabled = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Got OACK while options are not enabled!\0A\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Cannot send ACK on OACK.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recvfile(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tftphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tftp_stats, align 8
  %18 = alloca %struct.servent*, align 8
  %19 = alloca %struct.sockaddr_storage, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %21 = load i32, i32* @MAXPKTSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = call i32 @stats_init(%struct.tftp_stats* %17)
  %26 = bitcast i8* %24 to %struct.tftphdr*
  store %struct.tftphdr* %26, %struct.tftphdr** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %30, %struct.servent** %18, align 8
  %31 = load %struct.servent*, %struct.servent** %18, align 8
  %32 = icmp ne %struct.servent* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.servent*, %struct.servent** %18, align 8
  %36 = getelementptr inbounds %struct.servent, %struct.servent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %42

38:                                               ; preds = %5
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @atoi(i8* %39)
  %41 = call i32 @htons(i32 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %42

42:                                               ; preds = %38, %29
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load i32, i32* @debug, align 4
  %48 = load i32, i32* @DEBUG_SIMPLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @send_rrq(i32 %55, i8* %56, i8* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %157

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MAXPKTSIZE, align 4
  %66 = load i32, i32* @timeoutpacket, align 4
  %67 = call i32 @receive_packet(i32 %64, i8* %24, i32 %65, %struct.sockaddr_storage* %19, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr_in*
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %86

74:                                               ; preds = %63
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @RP_TIMEOUT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %74
  br label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %43

86:                                               ; preds = %82, %70, %43
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %157

91:                                               ; preds = %86
  %92 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %93 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %100 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %103 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tftp_log(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %104)
  store i32 1, i32* %20, align 4
  br label %157

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = call i64 @write_init(i32 %107, i32* null, i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %157

113:                                              ; preds = %106
  %114 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %115 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @OACK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %113
  %120 = load i32, i32* @options_rfc_enabled, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @EBADOP, align 4
  %126 = call i32 @send_error(i32 %124, i32 %125)
  store i32 1, i32* %20, align 4
  br label %157

127:                                              ; preds = %119
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %130 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 2
  %134 = call i32 @parse_options(i32 %128, i32 %131, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @send_ack(i32 %135, i32 0)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %157

141:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @tftp_receive(i32 %142, i32* %12, %struct.tftp_stats* %17, %struct.tftphdr* null, i32 0)
  br label %149

144:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @tftp_receive(i32 %145, i32* %12, %struct.tftp_stats* %17, %struct.tftphdr* %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %17, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* @verbose, align 4
  %155 = call i32 @printstats(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %154, %struct.tftp_stats* %17)
  br label %156

156:                                              ; preds = %153, %149
  store i32 1, i32* %20, align 4
  br label %157

157:                                              ; preds = %156, %139, %122, %111, %97, %89, %61
  %158 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %158)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stats_init(%struct.tftp_stats*) #2

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @send_rrq(i32, i8*, i8*) #2

declare dso_local i32 @receive_packet(i32, i8*, i32, %struct.sockaddr_storage*, i32) #2

declare dso_local i32 @tftp_log(i32, i8*, i32, i32) #2

declare dso_local i64 @write_init(i32, i32*, i8*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @send_error(i32, i32) #2

declare dso_local i32 @parse_options(i32, i32, i32) #2

declare dso_local i32 @send_ack(i32, i32) #2

declare dso_local i32 @tftp_receive(i32, i32*, %struct.tftp_stats*, %struct.tftphdr*, i32) #2

declare dso_local i32 @printstats(i8*, i32, %struct.tftp_stats*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
