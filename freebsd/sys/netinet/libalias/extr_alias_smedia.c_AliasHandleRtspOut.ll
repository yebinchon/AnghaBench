; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_AliasHandleRtspOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_AliasHandleRtspOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32 }
%struct.alias_link = type { i32 }
%struct.tcphdr = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PNA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"client_port\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@RTSP_CONTROL_PORT_NUMBER_1 = common dso_local global i64 0, align 8
@RTSP_CONTROL_PORT_NUMBER_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*, i32)* @AliasHandleRtspOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandleRtspOut(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i32 %3) #0 {
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store %struct.alias_link* %2, %struct.alias_link** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ip*, %struct.ip** %6, align 8
  %24 = call i64 @ip_next(%struct.ip* %23)
  %25 = inttoptr i64 %24 to %struct.tcphdr*
  store %struct.tcphdr* %25, %struct.tcphdr** %12, align 8
  %26 = load %struct.ip*, %struct.ip** %6, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = shl i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ip*, %struct.ip** %6, align 8
  %35 = getelementptr inbounds %struct.ip, %struct.ip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ip*, %struct.ip** %6, align 8
  %43 = bitcast %struct.ip* %42 to i8*
  store i8* %43, i8** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %13, align 8
  %48 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ntohs(i32 %50)
  %52 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %4
  %55 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohs(i32 %57)
  %59 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_2, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %54, %4
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = trunc i64 %64 to i32
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = call i64 @memcmp(i8* %68, i8* %69, i64 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.libalias*, %struct.libalias** %5, align 8
  %76 = load %struct.ip*, %struct.ip** %6, align 8
  %77 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = call i32 @alias_rtsp_out(%struct.libalias* %75, %struct.ip* %76, %struct.alias_link* %77, i8* %78, i8* %79)
  br label %184

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = trunc i64 %85 to i32
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = call i64 @memcmp(i8* %89, i8* %90, i64 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.libalias*, %struct.libalias** %5, align 8
  %97 = load %struct.ip*, %struct.ip** %6, align 8
  %98 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @alias_pna_out(%struct.libalias* %96, %struct.ip* %97, %struct.alias_link* %98, i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %103

103:                                              ; preds = %102, %82
  br label %184

104:                                              ; preds = %54
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %16, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = trunc i64 %107 to i32
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %183

110:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = call i64 @strlen(i8* %114)
  %116 = trunc i64 %115 to i32
  %117 = sub nsw i32 %113, %116
  %118 = icmp sle i32 %112, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8*, i8** %16, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = call i64 @strlen(i8* %125)
  %127 = call i64 @memcmp(i8* %123, i8* %124, i64 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i32 1, i32* %21, align 4
  br label %134

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %111

134:                                              ; preds = %129, %111
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %182

137:                                              ; preds = %134
  %138 = load i8*, i8** %16, align 8
  %139 = call i64 @strlen(i8* %138)
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %20, align 4
  br label %144

144:                                              ; preds = %152, %137
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  br label %144

155:                                              ; preds = %144
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %20, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i8*, i8** %17, align 8
  %160 = call i64 @strlen(i8* %159)
  %161 = trunc i64 %160 to i32
  %162 = icmp sge i32 %158, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %155
  %164 = load i8*, i8** %13, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = call i64 @strlen(i8* %169)
  %171 = call i64 @memcmp(i8* %167, i8* %168, i64 %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %163
  %174 = load %struct.libalias*, %struct.libalias** %5, align 8
  %175 = load %struct.ip*, %struct.ip** %6, align 8
  %176 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = call i32 @alias_rtsp_out(%struct.libalias* %174, %struct.ip* %175, %struct.alias_link* %176, i8* %177, i8* %178)
  br label %180

180:                                              ; preds = %173, %163
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %134
  br label %183

183:                                              ; preds = %182, %104
  br label %184

184:                                              ; preds = %74, %183, %103
  ret void
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @alias_rtsp_out(%struct.libalias*, %struct.ip*, %struct.alias_link*, i8*, i8*) #1

declare dso_local i32 @alias_pna_out(%struct.libalias*, %struct.ip*, %struct.alias_link*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
