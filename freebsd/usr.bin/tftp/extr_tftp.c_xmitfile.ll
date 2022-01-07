; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_tftp.c_xmitfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_tftp.c_xmitfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tftphdr = type { i64, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.tftp_stats = type { i64 }
%struct.servent = type { i32 }
%struct.sockaddr_in = type { i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tftp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@peer_sock = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_SIMPLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Sending %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot send WRQ packet\0A\00", align 1
@timeoutpacket = common dso_local global i32 0, align 4
@RP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Try %d, didn't receive answer from remote.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Transfer timed out.\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Got ERROR, aborted\0A\00", align 1
@OACK = common dso_local global i64 0, align 8
@options_rfc_enabled = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Got OACK while options are not enabled!\0A\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"read_init()\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Sent\00", align 1
@verbose = common dso_local global i32 0, align 4
@txrx_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmitfile(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tftphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tftp_stats, align 8
  %19 = alloca %struct.servent*, align 8
  %20 = alloca %struct.sockaddr_storage, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %22 = load i32, i32* @MAXPKTSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = call i32 @stats_init(%struct.tftp_stats* %18)
  %27 = call i32 @memset(%struct.sockaddr_storage* %15, i32 0, i32 4)
  %28 = bitcast i8* %25 to %struct.tftphdr*
  store %struct.tftphdr* %28, %struct.tftphdr** %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %32, %struct.servent** %19, align 8
  %33 = load %struct.servent*, %struct.servent** %19, align 8
  %34 = icmp ne %struct.servent* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.servent*, %struct.servent** %19, align 8
  %38 = getelementptr inbounds %struct.servent, %struct.servent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %44

40:                                               ; preds = %5
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @atoi(i8* %41)
  %43 = call i32 @htons(i32 %42)
  store i32 %43, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %40, %31
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %85, %44
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 12
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load i32, i32* @debug, align 4
  %50 = load i32, i32* @DEBUG_SIMPLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @send_wrq(i32 %57, i8* %58, i8* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %141

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MAXPKTSIZE, align 4
  %68 = load i32, i32* @timeoutpacket, align 4
  %69 = call i32 @receive_packet(i32 %66, i8* %25, i32 %67, %struct.sockaddr_storage* %20, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr_in*
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0), align 4
  br label %88

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @RP_TIMEOUT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %85

84:                                               ; preds = %76
  br label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %45

88:                                               ; preds = %84, %72, %45
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 12
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %141

93:                                               ; preds = %88
  %94 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %95 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ERROR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %141

101:                                              ; preds = %93
  %102 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %103 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @OACK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load i32, i32* @options_rfc_enabled, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @EBADOP, align 4
  %114 = call i32 @send_error(i32 %112, i32 %113)
  store i32 1, i32* %21, align 4
  br label %141

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %118 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 2
  %122 = call i32 @parse_options(i32 %116, i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %115, %101
  %124 = load i32, i32* %8, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = call i64 @read_init(i32 %124, i32* null, i8* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %141

130:                                              ; preds = %123
  store i32 1, i32* %14, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @tftp_send(i32 %131, i32* %14, %struct.tftp_stats* %18)
  %133 = call i32 (...) @read_close()
  %134 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %18, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @verbose, align 4
  %139 = call i32 @printstats(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %138, %struct.tftp_stats* %18)
  br label %140

140:                                              ; preds = %137, %130
  store i32 1, i32* @txrx_error, align 4
  store i32 0, i32* %21, align 4
  br label %141

141:                                              ; preds = %140, %128, %110, %99, %91, %63
  %142 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %21, align 4
  switch i32 %143, label %145 [
    i32 0, label %144
    i32 1, label %144
  ]

144:                                              ; preds = %141, %141
  ret void

145:                                              ; preds = %141
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stats_init(%struct.tftp_stats*) #2

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @send_wrq(i32, i8*, i8*) #2

declare dso_local i32 @receive_packet(i32, i8*, i32, %struct.sockaddr_storage*, i32) #2

declare dso_local i32 @send_error(i32, i32) #2

declare dso_local i32 @parse_options(i32, i32, i32) #2

declare dso_local i64 @read_init(i32, i32*, i8*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @tftp_send(i32, i32*, %struct.tftp_stats*) #2

declare dso_local i32 @read_close(...) #2

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
