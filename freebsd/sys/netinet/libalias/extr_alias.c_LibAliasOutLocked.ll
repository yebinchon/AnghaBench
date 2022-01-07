; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasOutLocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasOutLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }
%struct.ip = type { i32, i32, i32, %struct.in_addr, i32, i32, i32 }
%struct.alias_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@PKT_ALIAS_REVERSE = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@PKT_ALIAS_UNREGISTERED_ONLY = common dso_local global i32 0, align 4
@UNREG_ADDR_C_LOWER = common dso_local global i64 0, align 8
@UNREG_ADDR_C_UPPER = common dso_local global i64 0, align 8
@UNREG_ADDR_B_LOWER = common dso_local global i64 0, align 8
@UNREG_ADDR_B_UPPER = common dso_local global i64 0, align 8
@UNREG_ADDR_A_LOWER = common dso_local global i64 0, align 8
@UNREG_ADDR_A_UPPER = common dso_local global i64 0, align 8
@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@IP_OFFMASK = common dso_local global i32 0, align 4
@OUT = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@SN_TO_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i8*, i32, i32)* @LibAliasOutLocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LibAliasOutLocked(%struct.libalias* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.ip*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.alias_data, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.libalias*, %struct.libalias** %5, align 8
  %18 = getelementptr inbounds %struct.libalias, %struct.libalias* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.libalias*, %struct.libalias** %5, align 8
  %27 = getelementptr inbounds %struct.libalias, %struct.libalias* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.libalias*, %struct.libalias** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @LibAliasInLocked(%struct.libalias* %30, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %35 = load %struct.libalias*, %struct.libalias** %5, align 8
  %36 = getelementptr inbounds %struct.libalias, %struct.libalias* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %216

39:                                               ; preds = %4
  %40 = load %struct.libalias*, %struct.libalias** %5, align 8
  %41 = call i32 @HouseKeeping(%struct.libalias* %40)
  %42 = load %struct.libalias*, %struct.libalias** %5, align 8
  %43 = call i32 @ClearCheckNewLink(%struct.libalias* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to %struct.ip*
  store %struct.ip* %45, %struct.ip** %11, align 8
  %46 = load %struct.ip*, %struct.ip** %11, align 8
  %47 = getelementptr inbounds %struct.ip, %struct.ip* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %39
  %53 = load %struct.ip*, %struct.ip** %11, align 8
  %54 = getelementptr inbounds %struct.ip, %struct.ip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %39
  %60 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %60, i32* %9, align 4
  br label %216

61:                                               ; preds = %52
  %62 = load %struct.libalias*, %struct.libalias** %5, align 8
  %63 = call i32 @GetDefaultAliasAddress(%struct.libalias* %62)
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %struct.in_addr* %10 to i8*
  %66 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.libalias*, %struct.libalias** %5, align 8
  %68 = getelementptr inbounds %struct.libalias, %struct.libalias* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PKT_ALIAS_UNREGISTERED_ONLY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  %74 = load %struct.ip*, %struct.ip** %11, align 8
  %75 = getelementptr inbounds %struct.ip, %struct.ip* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohl(i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @UNREG_ADDR_C_LOWER, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @UNREG_ADDR_C_UPPER, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 3, i32* %14, align 4
  br label %107

87:                                               ; preds = %82, %73
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @UNREG_ADDR_B_LOWER, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @UNREG_ADDR_B_UPPER, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 2, i32* %14, align 4
  br label %106

96:                                               ; preds = %91, %87
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @UNREG_ADDR_A_LOWER, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @UNREG_ADDR_A_UPPER, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 1, i32* %14, align 4
  br label %105

105:                                              ; preds = %104, %100, %96
  br label %106

106:                                              ; preds = %105, %95
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.libalias*, %struct.libalias** %5, align 8
  %112 = load %struct.ip*, %struct.ip** %11, align 8
  %113 = getelementptr inbounds %struct.ip, %struct.ip* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SetDefaultAliasAddress(%struct.libalias* %111, i32 %115)
  br label %117

117:                                              ; preds = %110, %107
  br label %133

118:                                              ; preds = %61
  %119 = load %struct.libalias*, %struct.libalias** %5, align 8
  %120 = getelementptr inbounds %struct.libalias, %struct.libalias* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.libalias*, %struct.libalias** %5, align 8
  %127 = load %struct.ip*, %struct.ip** %11, align 8
  %128 = getelementptr inbounds %struct.ip, %struct.ip* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SetDefaultAliasAddress(%struct.libalias* %126, i32 %130)
  br label %132

132:                                              ; preds = %125, %118
  br label %133

133:                                              ; preds = %132, %117
  %134 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %134, i32* %9, align 4
  %135 = load %struct.ip*, %struct.ip** %11, align 8
  %136 = getelementptr inbounds %struct.ip, %struct.ip* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ntohs(i32 %137)
  %139 = load i32, i32* @IP_OFFMASK, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %204

142:                                              ; preds = %133
  %143 = load %struct.ip*, %struct.ip** %11, align 8
  %144 = getelementptr inbounds %struct.ip, %struct.ip* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %189 [
    i32 131, label %146
    i32 128, label %151
    i32 129, label %157
    i32 132, label %163
  ]

146:                                              ; preds = %142
  %147 = load %struct.libalias*, %struct.libalias** %5, align 8
  %148 = load %struct.ip*, %struct.ip** %11, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @IcmpAliasOut(%struct.libalias* %147, %struct.ip* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  br label %203

151:                                              ; preds = %142
  %152 = load %struct.libalias*, %struct.libalias** %5, align 8
  %153 = load %struct.ip*, %struct.ip** %11, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @UdpAliasOut(%struct.libalias* %152, %struct.ip* %153, i32 %154, i32 %155)
  store i32 %156, i32* %9, align 4
  br label %203

157:                                              ; preds = %142
  %158 = load %struct.libalias*, %struct.libalias** %5, align 8
  %159 = load %struct.ip*, %struct.ip** %11, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @TcpAliasOut(%struct.libalias* %158, %struct.ip* %159, i32 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  br label %203

163:                                              ; preds = %142
  %164 = bitcast %struct.alias_data* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %164, i8 0, i64 56, i1 false)
  %165 = load i32, i32* @OUT, align 4
  %166 = load i32, i32* @IP, align 4
  %167 = load %struct.libalias*, %struct.libalias** %5, align 8
  %168 = load %struct.ip*, %struct.ip** %11, align 8
  %169 = call i32 @find_handler(i32 %165, i32 %166, %struct.libalias* %167, %struct.ip* %168, %struct.alias_data* %16)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %173, i32* %9, align 4
  br label %188

174:                                              ; preds = %163
  %175 = load %struct.libalias*, %struct.libalias** %5, align 8
  %176 = load %struct.ip*, %struct.ip** %11, align 8
  %177 = getelementptr inbounds %struct.ip, %struct.ip* %176, i32 0, i32 3
  %178 = load %struct.ip*, %struct.ip** %11, align 8
  %179 = getelementptr inbounds %struct.ip, %struct.ip* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ip*, %struct.ip** %11, align 8
  %182 = getelementptr inbounds %struct.ip, %struct.ip* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ip*, %struct.ip** %11, align 8
  %185 = getelementptr inbounds %struct.ip, %struct.ip* %184, i32 0, i32 2
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @ProtoAliasOut(%struct.libalias* %175, %struct.in_addr* %177, i32 %180, i32 %183, i32* %185, i32 %186)
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %174, %172
  br label %203

189:                                              ; preds = %142
  %190 = load %struct.libalias*, %struct.libalias** %5, align 8
  %191 = load %struct.ip*, %struct.ip** %11, align 8
  %192 = getelementptr inbounds %struct.ip, %struct.ip* %191, i32 0, i32 3
  %193 = load %struct.ip*, %struct.ip** %11, align 8
  %194 = getelementptr inbounds %struct.ip, %struct.ip* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ip*, %struct.ip** %11, align 8
  %197 = getelementptr inbounds %struct.ip, %struct.ip* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ip*, %struct.ip** %11, align 8
  %200 = getelementptr inbounds %struct.ip, %struct.ip* %199, i32 0, i32 2
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @ProtoAliasOut(%struct.libalias* %190, %struct.in_addr* %192, i32 %195, i32 %198, i32* %200, i32 %201)
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %189, %188, %157, %151, %146
  br label %211

204:                                              ; preds = %133
  %205 = load %struct.libalias*, %struct.libalias** %5, align 8
  %206 = load %struct.ip*, %struct.ip** %11, align 8
  %207 = getelementptr inbounds %struct.ip, %struct.ip* %206, i32 0, i32 3
  %208 = load %struct.ip*, %struct.ip** %11, align 8
  %209 = getelementptr inbounds %struct.ip, %struct.ip* %208, i32 0, i32 2
  %210 = call i32 @FragmentOut(%struct.libalias* %205, %struct.in_addr* %207, i32* %209)
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %204, %203
  %212 = load %struct.libalias*, %struct.libalias** %5, align 8
  %213 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @SetDefaultAliasAddress(%struct.libalias* %212, i32 %214)
  br label %216

216:                                              ; preds = %211, %59, %23
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local i32 @LibAliasInLocked(%struct.libalias*, i8*, i32) #1

declare dso_local i32 @HouseKeeping(%struct.libalias*) #1

declare dso_local i32 @ClearCheckNewLink(%struct.libalias*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @GetDefaultAliasAddress(%struct.libalias*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @SetDefaultAliasAddress(%struct.libalias*, i32) #1

declare dso_local i32 @IcmpAliasOut(%struct.libalias*, %struct.ip*, i32) #1

declare dso_local i32 @UdpAliasOut(%struct.libalias*, %struct.ip*, i32, i32) #1

declare dso_local i32 @TcpAliasOut(%struct.libalias*, %struct.ip*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @find_handler(i32, i32, %struct.libalias*, %struct.ip*, %struct.alias_data*) #1

declare dso_local i32 @ProtoAliasOut(%struct.libalias*, %struct.in_addr*, i32, i32, i32*, i32) #1

declare dso_local i32 @FragmentOut(%struct.libalias*, %struct.in_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
