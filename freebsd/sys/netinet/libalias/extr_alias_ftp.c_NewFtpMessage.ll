; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_NewFtpMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_NewFtpMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ip = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.alias_link = type { i32 }
%struct.in_addr = type { i32 }
%struct.tcphdr = type { i32, i32, i64, i32 }

@IPPORT_RESERVED = common dso_local global i64 0, align 8
@GET_ALIAS_PORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PORT %d,%d,%d,%d,%d,%d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"227 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"EPRT |1|%d.%d.%d.%d|%d|\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"229 Entering Extended Passive Mode (|||%d|)\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*, i32, i32)* @NewFtpMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NewFtpMessage(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca %struct.alias_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.alias_link*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcphdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.in_addr, align 4
  %30 = alloca %struct.in_addr, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store %struct.ip* %1, %struct.ip** %7, align 8
  store %struct.alias_link* %2, %struct.alias_link** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %33 = load %struct.ip*, %struct.ip** %7, align 8
  %34 = getelementptr inbounds %struct.ip, %struct.ip* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.libalias*, %struct.libalias** %6, align 8
  %38 = getelementptr inbounds %struct.libalias, %struct.libalias* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %220

43:                                               ; preds = %5
  %44 = load %struct.libalias*, %struct.libalias** %6, align 8
  %45 = getelementptr inbounds %struct.libalias, %struct.libalias* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPPORT_RESERVED, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %220

50:                                               ; preds = %43
  %51 = load %struct.libalias*, %struct.libalias** %6, align 8
  %52 = load %struct.libalias*, %struct.libalias** %6, align 8
  %53 = getelementptr inbounds %struct.libalias, %struct.libalias* %52, i32 0, i32 1
  %54 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %55 = call i32 @GetDestAddress(%struct.alias_link* %54)
  %56 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %57 = call i32 @GetAliasAddress(%struct.alias_link* %56)
  %58 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.libalias*, %struct.libalias** %6, align 8
  %60 = getelementptr inbounds %struct.libalias, %struct.libalias* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @htons(i32 %62)
  %64 = load i32, i32* @GET_ALIAS_PORT, align 4
  %65 = load i32, i32* @IPPROTO_TCP, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.alias_link* @AddLink(%struct.libalias* %51, i64 %67, i32 %55, i32 %69, i32 %63, i32 0, i32 %64, i32 %65)
  store %struct.alias_link* %70, %struct.alias_link** %11, align 8
  %71 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  %72 = icmp ne %struct.alias_link* %71, null
  br i1 %72, label %73, label %219

73:                                               ; preds = %50
  %74 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  %75 = call i32 @PunchFWHole(%struct.alias_link* %74)
  %76 = load %struct.ip*, %struct.ip** %7, align 8
  %77 = call i64 @ip_next(%struct.ip* %76)
  %78 = inttoptr i64 %77 to %struct.tcphdr*
  store %struct.tcphdr* %78, %struct.tcphdr** %17, align 8
  %79 = load %struct.ip*, %struct.ip** %7, align 8
  %80 = getelementptr inbounds %struct.ip, %struct.ip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %83 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = shl i32 %85, 2
  store i32 %86, i32* %14, align 4
  %87 = load %struct.ip*, %struct.ip** %7, align 8
  %88 = getelementptr inbounds %struct.ip, %struct.ip* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohs(i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %95 = add nsw i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %18, align 8
  %98 = alloca i8, i64 %96, align 16
  store i64 %96, i64* %19, align 8
  %99 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %100 = call i32 @GetAliasAddress(%struct.alias_link* %99)
  %101 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = bitcast %struct.in_addr* %29 to i8*
  %103 = bitcast %struct.in_addr* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %29, i32 0, i32 0
  store i32* %104, i32** %22, align 8
  %105 = load i32*, i32** %22, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %22, align 8
  %107 = load i32, i32* %105, align 4
  store i32 %107, i32* %23, align 4
  %108 = load i32*, i32** %22, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %22, align 8
  %110 = load i32, i32* %108, align 4
  store i32 %110, i32* %24, align 4
  %111 = load i32*, i32** %22, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %22, align 8
  %113 = load i32, i32* %111, align 4
  store i32 %113, i32* %25, align 4
  %114 = load i32*, i32** %22, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %26, align 4
  %116 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  %117 = call i32 @GetAliasPort(%struct.alias_link* %116)
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %10, align 4
  switch i32 %118, label %158 [
    i32 128, label %119
    i32 131, label %119
    i32 129, label %146
    i32 130, label %154
  ]

119:                                              ; preds = %73, %73
  %120 = bitcast i32* %21 to i8*
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %22, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %22, align 8
  %124 = load i32, i32* %122, align 4
  store i32 %124, i32* %27, align 4
  %125 = load i32*, i32** %22, align 8
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %137

129:                                              ; preds = %119
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %28, align 4
  %136 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  br label %145

137:                                              ; preds = %119
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %28, align 4
  %144 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %129
  br label %158

146:                                              ; preds = %73
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %21, align 4
  %152 = call i32 @ntohs(i32 %151)
  %153 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %148, i32 %149, i32 %150, i32 %152)
  br label %158

154:                                              ; preds = %73
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @ntohs(i32 %155)
  %157 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %73, %154, %146, %145
  %159 = call i32 @strlen(i8* %98)
  store i32 %159, i32* %13, align 4
  %160 = load %struct.ip*, %struct.ip** %7, align 8
  %161 = bitcast %struct.ip* %160 to i8*
  store i8* %161, i8** %20, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i8*, i8** %20, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %20, align 8
  %166 = load i8*, i8** %20, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 %167, %168
  %170 = call i32 @strncpy(i8* %166, i8* %98, i32 %169)
  %171 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %173 = call i32 @SetAckModified(%struct.alias_link* %172)
  %174 = load %struct.ip*, %struct.ip** %7, align 8
  %175 = call i64 @ip_next(%struct.ip* %174)
  %176 = inttoptr i64 %175 to %struct.tcphdr*
  store %struct.tcphdr* %176, %struct.tcphdr** %17, align 8
  %177 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %178 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %181 = call i32 @GetDeltaSeqOut(i32 %179, %struct.alias_link* %180)
  store i32 %181, i32* %31, align 4
  %182 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %183 = load i32, i32* %31, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %16, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load %struct.ip*, %struct.ip** %7, align 8
  %189 = getelementptr inbounds %struct.ip, %struct.ip* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ip*, %struct.ip** %7, align 8
  %192 = getelementptr inbounds %struct.ip, %struct.ip* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %195 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %198 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @AddSeq(%struct.alias_link* %182, i32 %187, i32 %190, i32 %193, i32 %196, i32 %199)
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 @htons(i32 %203)
  store i32 %204, i32* %32, align 4
  %205 = load %struct.ip*, %struct.ip** %7, align 8
  %206 = getelementptr inbounds %struct.ip, %struct.ip* %205, i32 0, i32 2
  %207 = load %struct.ip*, %struct.ip** %7, align 8
  %208 = getelementptr inbounds %struct.ip, %struct.ip* %207, i32 0, i32 1
  %209 = call i32 @DifferentialChecksum(i32* %206, i32* %32, i32* %208, i32 1)
  %210 = load i32, i32* %32, align 4
  %211 = load %struct.ip*, %struct.ip** %7, align 8
  %212 = getelementptr inbounds %struct.ip, %struct.ip* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  %215 = load %struct.ip*, %struct.ip** %7, align 8
  %216 = call i64 @TcpChecksum(%struct.ip* %215)
  %217 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %220

219:                                              ; preds = %50
  br label %220

220:                                              ; preds = %42, %49, %219, %158
  ret void
}

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SetAckModified(%struct.alias_link*) #1

declare dso_local i32 @GetDeltaSeqOut(i32, %struct.alias_link*) #1

declare dso_local i32 @AddSeq(%struct.alias_link*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DifferentialChecksum(i32*, i32*, i32*, i32) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
