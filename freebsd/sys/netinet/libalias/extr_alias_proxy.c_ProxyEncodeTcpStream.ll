; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyEncodeTcpStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyEncodeTcpStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.ip = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i64, i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"[DEST %s %d]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_link*, %struct.ip*, i32)* @ProxyEncodeTcpStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProxyEncodeTcpStream(%struct.alias_link* %0, %struct.ip* %1, i32 %2) #0 {
  %4 = alloca %struct.alias_link*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [40 x i8], align 16
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.alias_link* %0, %struct.alias_link** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.ip*, %struct.ip** %5, align 8
  %23 = call i64 @ip_next(%struct.ip* %22)
  %24 = inttoptr i64 %23 to %struct.tcphdr*
  store %struct.tcphdr* %24, %struct.tcphdr** %9, align 8
  %25 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %26 = call i64 @GetAckModified(%struct.alias_link* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %155

29:                                               ; preds = %3
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %31 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %32 = call i32 @GetProxyAddress(%struct.alias_link* %31)
  %33 = call i32 @INET_NTOA_BUF(i8* %21)
  %34 = call i8* @inet_ntoa_r(i32 %32, i32 %33)
  %35 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %36 = call i32 @GetProxyPort(%struct.alias_link* %35)
  %37 = call i32 @ntohs(i32 %36)
  %38 = call i32 @snprintf(i8* %30, i32 38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = srem i32 %41, 2
  switch i32 %42, label %53 [
    i32 0, label %43
    i32 1, label %48
  ]

43:                                               ; preds = %29
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %29
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %29, %43
  %54 = load %struct.ip*, %struct.ip** %5, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  br label %155

64:                                               ; preds = %53
  %65 = load %struct.ip*, %struct.ip** %5, align 8
  %66 = getelementptr inbounds %struct.ip, %struct.ip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = shl i32 %71, 2
  store i32 %72, i32* %14, align 4
  %73 = load %struct.ip*, %struct.ip** %5, align 8
  %74 = getelementptr inbounds %struct.ip, %struct.ip* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntohs(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  store i32 1, i32* %12, align 4
  br label %155

82:                                               ; preds = %64
  %83 = load %struct.ip*, %struct.ip** %5, align 8
  %84 = bitcast %struct.ip* %83 to i8*
  store i8* %84, i8** %15, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %15, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @bcopy(i8* %89, i8* %93, i32 %94)
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %101 = call i32 @SetAckModified(%struct.alias_link* %100)
  %102 = load %struct.ip*, %struct.ip** %5, align 8
  %103 = call i64 @ip_next(%struct.ip* %102)
  %104 = inttoptr i64 %103 to %struct.tcphdr*
  store %struct.tcphdr* %104, %struct.tcphdr** %9, align 8
  %105 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %109 = call i32 @GetDeltaSeqOut(i32 %107, %struct.alias_link* %108)
  store i32 %109, i32* %16, align 4
  %110 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.ip*, %struct.ip** %5, align 8
  %115 = getelementptr inbounds %struct.ip, %struct.ip* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ip*, %struct.ip** %5, align 8
  %118 = getelementptr inbounds %struct.ip, %struct.ip* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %124 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @AddSeq(%struct.alias_link* %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %125)
  %127 = load %struct.ip*, %struct.ip** %5, align 8
  %128 = getelementptr inbounds %struct.ip, %struct.ip* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %17, align 4
  %130 = load %struct.ip*, %struct.ip** %5, align 8
  %131 = getelementptr inbounds %struct.ip, %struct.ip* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ntohs(i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @htons(i32 %135)
  %137 = load %struct.ip*, %struct.ip** %5, align 8
  %138 = getelementptr inbounds %struct.ip, %struct.ip* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ip*, %struct.ip** %5, align 8
  %140 = getelementptr inbounds %struct.ip, %struct.ip* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %17, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.ip*, %struct.ip** %5, align 8
  %146 = getelementptr inbounds %struct.ip, %struct.ip* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ADJUST_CHECKSUM(i32 %144, i32 %147)
  %149 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %150 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.ip*, %struct.ip** %5, align 8
  %152 = call i64 @TcpChecksum(%struct.ip* %151)
  %153 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %154 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %82, %81, %63, %28
  %156 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %12, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 1, label %158
  ]

158:                                              ; preds = %155, %155
  ret void

159:                                              ; preds = %155
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ip_next(%struct.ip*) #2

declare dso_local i64 @GetAckModified(%struct.alias_link*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i8* @inet_ntoa_r(i32, i32) #2

declare dso_local i32 @GetProxyAddress(%struct.alias_link*) #2

declare dso_local i32 @INET_NTOA_BUF(i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @GetProxyPort(%struct.alias_link*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @SetAckModified(%struct.alias_link*) #2

declare dso_local i32 @GetDeltaSeqOut(i32, %struct.alias_link*) #2

declare dso_local i32 @AddSeq(%struct.alias_link*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #2

declare dso_local i64 @TcpChecksum(%struct.ip*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
