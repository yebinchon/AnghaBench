; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_AliasHandleFtpOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_AliasHandleFtpOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ip = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.alias_link = type { i32 }
%struct.tcphdr = type { i32, i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@WAIT_CRLF = common dso_local global i32 0, align 4
@FTP_UNKNOWN_MESSAGE = common dso_local global i32 0, align 4
@FTP_CONTROL_PORT_NUMBER = common dso_local global i64 0, align 8
@FTP_PORT_COMMAND = common dso_local global i32 0, align 4
@FTP_EPRT_COMMAND = common dso_local global i32 0, align 4
@FTP_227_REPLY = common dso_local global i32 0, align 4
@FTP_229_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*, i32)* @AliasHandleFtpOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandleFtpOut(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i32 %3) #0 {
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store %struct.alias_link* %2, %struct.alias_link** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ip*, %struct.ip** %6, align 8
  %17 = call i64 @ip_next(%struct.ip* %16)
  %18 = inttoptr i64 %17 to %struct.tcphdr*
  store %struct.tcphdr* %18, %struct.tcphdr** %14, align 8
  %19 = load %struct.ip*, %struct.ip** %6, align 8
  %20 = getelementptr inbounds %struct.ip, %struct.ip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = shl i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ip*, %struct.ip** %6, align 8
  %28 = getelementptr inbounds %struct.ip, %struct.ip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ntohs(i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ip*, %struct.ip** %6, align 8
  %36 = bitcast %struct.ip* %35 to i8*
  store i8* %36, i8** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %13, align 8
  %41 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %42 = call i32 @GetProtocolFlags(%struct.alias_link* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @WAIT_CRLF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %114, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @FTP_UNKNOWN_MESSAGE, align 4
  store i32 %52, i32* %15, align 4
  %53 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ntohs(i32 %55)
  %57 = load i64, i64* @FTP_CONTROL_PORT_NUMBER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.libalias*, %struct.libalias** %5, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @ParseFtpPortCommand(%struct.libalias* %60, i8* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @FTP_PORT_COMMAND, align 4
  store i32 %66, i32* %15, align 4
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.libalias*, %struct.libalias** %5, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @ParseFtpEprtCommand(%struct.libalias* %68, i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @FTP_EPRT_COMMAND, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %65
  br label %102

77:                                               ; preds = %51
  %78 = load %struct.libalias*, %struct.libalias** %5, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @ParseFtp227Reply(%struct.libalias* %78, i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @FTP_227_REPLY, align 4
  store i32 %84, i32* %15, align 4
  br label %101

85:                                               ; preds = %77
  %86 = load %struct.libalias*, %struct.libalias** %5, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @ParseFtp229Reply(%struct.libalias* %86, i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32, i32* @FTP_229_REPLY, align 4
  store i32 %92, i32* %15, align 4
  %93 = load %struct.ip*, %struct.ip** %6, align 8
  %94 = getelementptr inbounds %struct.ip, %struct.ip* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.libalias*, %struct.libalias** %5, align 8
  %98 = getelementptr inbounds %struct.libalias, %struct.libalias* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %85
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @FTP_UNKNOWN_MESSAGE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.libalias*, %struct.libalias** %5, align 8
  %108 = load %struct.ip*, %struct.ip** %6, align 8
  %109 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @NewFtpMessage(%struct.libalias* %107, %struct.ip* %108, %struct.alias_link* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %113, %46, %4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %114
  %118 = load %struct.ip*, %struct.ip** %6, align 8
  %119 = bitcast %struct.ip* %118 to i8*
  store i8* %119, i8** %13, align 8
  %120 = load %struct.ip*, %struct.ip** %6, align 8
  %121 = getelementptr inbounds %struct.ip, %struct.ip* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ntohs(i32 %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %133, label %147

133:                                              ; preds = %117
  %134 = load i8*, i8** %13, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load i32, i32* @WAIT_CRLF, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %12, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %151

147:                                              ; preds = %133, %117
  %148 = load i32, i32* @WAIT_CRLF, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @SetProtocolFlags(%struct.alias_link* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %114
  ret void
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @GetProtocolFlags(%struct.alias_link*) #1

declare dso_local i64 @ParseFtpPortCommand(%struct.libalias*, i8*, i32) #1

declare dso_local i64 @ParseFtpEprtCommand(%struct.libalias*, i8*, i32) #1

declare dso_local i64 @ParseFtp227Reply(%struct.libalias*, i8*, i32) #1

declare dso_local i64 @ParseFtp229Reply(%struct.libalias*, i8*, i32) #1

declare dso_local i32 @NewFtpMessage(%struct.libalias*, %struct.ip*, %struct.alias_link*, i32, i32) #1

declare dso_local i32 @SetProtocolFlags(%struct.alias_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
