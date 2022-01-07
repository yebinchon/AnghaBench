; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasInLocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasInLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }
%struct.ip = type { i32, i32, i32, i32, %struct.in_addr, i32, i32, i32 }
%struct.alias_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.alias_link = type { i32 }

@PKT_ALIAS_REVERSE = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@IP_OFFMASK = common dso_local global i32 0, align 4
@IN = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@PKT_ALIAS_FOUND_HEADER_FRAGMENT = common dso_local global i32 0, align 4
@PKT_ALIAS_ERROR = common dso_local global i32 0, align 4
@SN_TO_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i8*, i32)* @LibAliasInLocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LibAliasInLocked(%struct.libalias* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.alias_data, align 8
  %12 = alloca %struct.alias_link*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.libalias*, %struct.libalias** %4, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.libalias*, %struct.libalias** %4, align 8
  %23 = getelementptr inbounds %struct.libalias, %struct.libalias* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.libalias*, %struct.libalias** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @LibAliasOutLocked(%struct.libalias* %26, i8* %27, i32 %28, i32 1)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %31 = load %struct.libalias*, %struct.libalias** %4, align 8
  %32 = getelementptr inbounds %struct.libalias, %struct.libalias* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %171

35:                                               ; preds = %3
  %36 = load %struct.libalias*, %struct.libalias** %4, align 8
  %37 = call i32 @HouseKeeping(%struct.libalias* %36)
  %38 = load %struct.libalias*, %struct.libalias** %4, align 8
  %39 = call i32 @ClearCheckNewLink(%struct.libalias* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.ip*
  store %struct.ip* %41, %struct.ip** %8, align 8
  %42 = load %struct.ip*, %struct.ip** %8, align 8
  %43 = getelementptr inbounds %struct.ip, %struct.ip* %42, i32 0, i32 4
  %44 = bitcast %struct.in_addr* %7 to i8*
  %45 = bitcast %struct.in_addr* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.ip*, %struct.ip** %8, align 8
  %47 = getelementptr inbounds %struct.ip, %struct.ip* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %35
  %53 = load %struct.ip*, %struct.ip** %8, align 8
  %54 = getelementptr inbounds %struct.ip, %struct.ip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %35
  %60 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %60, i32* %9, align 4
  br label %171

61:                                               ; preds = %52
  %62 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.ip*, %struct.ip** %8, align 8
  %64 = getelementptr inbounds %struct.ip, %struct.ip* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohs(i32 %65)
  %67 = load i32, i32* @IP_OFFMASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %157

70:                                               ; preds = %61
  %71 = load %struct.ip*, %struct.ip** %8, align 8
  %72 = getelementptr inbounds %struct.ip, %struct.ip* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %111 [
    i32 131, label %74
    i32 128, label %78
    i32 129, label %82
    i32 132, label %86
  ]

74:                                               ; preds = %70
  %75 = load %struct.libalias*, %struct.libalias** %4, align 8
  %76 = load %struct.ip*, %struct.ip** %8, align 8
  %77 = call i32 @IcmpAliasIn(%struct.libalias* %75, %struct.ip* %76)
  store i32 %77, i32* %9, align 4
  br label %124

78:                                               ; preds = %70
  %79 = load %struct.libalias*, %struct.libalias** %4, align 8
  %80 = load %struct.ip*, %struct.ip** %8, align 8
  %81 = call i32 @UdpAliasIn(%struct.libalias* %79, %struct.ip* %80)
  store i32 %81, i32* %9, align 4
  br label %124

82:                                               ; preds = %70
  %83 = load %struct.libalias*, %struct.libalias** %4, align 8
  %84 = load %struct.ip*, %struct.ip** %8, align 8
  %85 = call i32 @TcpAliasIn(%struct.libalias* %83, %struct.ip* %84)
  store i32 %85, i32* %9, align 4
  br label %124

86:                                               ; preds = %70
  %87 = bitcast %struct.alias_data* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 56, i1 false)
  %88 = load i32, i32* @IN, align 4
  %89 = load i32, i32* @IP, align 4
  %90 = load %struct.libalias*, %struct.libalias** %4, align 8
  %91 = load %struct.ip*, %struct.ip** %8, align 8
  %92 = call i32 @find_handler(i32 %88, i32 %89, %struct.libalias* %90, %struct.ip* %91, %struct.alias_data* %11)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %96, i32* %9, align 4
  br label %110

97:                                               ; preds = %86
  %98 = load %struct.libalias*, %struct.libalias** %4, align 8
  %99 = load %struct.ip*, %struct.ip** %8, align 8
  %100 = getelementptr inbounds %struct.ip, %struct.ip* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ip*, %struct.ip** %8, align 8
  %103 = getelementptr inbounds %struct.ip, %struct.ip* %102, i32 0, i32 4
  %104 = load %struct.ip*, %struct.ip** %8, align 8
  %105 = getelementptr inbounds %struct.ip, %struct.ip* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ip*, %struct.ip** %8, align 8
  %108 = getelementptr inbounds %struct.ip, %struct.ip* %107, i32 0, i32 2
  %109 = call i32 @ProtoAliasIn(%struct.libalias* %98, i32 %101, %struct.in_addr* %103, i32 %106, i32* %108)
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %97, %95
  br label %124

111:                                              ; preds = %70
  %112 = load %struct.libalias*, %struct.libalias** %4, align 8
  %113 = load %struct.ip*, %struct.ip** %8, align 8
  %114 = getelementptr inbounds %struct.ip, %struct.ip* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ip*, %struct.ip** %8, align 8
  %117 = getelementptr inbounds %struct.ip, %struct.ip* %116, i32 0, i32 4
  %118 = load %struct.ip*, %struct.ip** %8, align 8
  %119 = getelementptr inbounds %struct.ip, %struct.ip* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ip*, %struct.ip** %8, align 8
  %122 = getelementptr inbounds %struct.ip, %struct.ip* %121, i32 0, i32 2
  %123 = call i32 @ProtoAliasIn(%struct.libalias* %112, i32 %115, %struct.in_addr* %117, i32 %120, i32* %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %111, %110, %82, %78, %74
  %125 = load %struct.ip*, %struct.ip** %8, align 8
  %126 = getelementptr inbounds %struct.ip, %struct.ip* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ntohs(i32 %127)
  %129 = load i32, i32* @IP_MF, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %124
  %133 = load %struct.libalias*, %struct.libalias** %4, align 8
  %134 = load %struct.ip*, %struct.ip** %8, align 8
  %135 = getelementptr inbounds %struct.ip, %struct.ip* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ip*, %struct.ip** %8, align 8
  %138 = getelementptr inbounds %struct.ip, %struct.ip* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.alias_link* @FindFragmentIn1(%struct.libalias* %133, i32 %136, i32 %141, i32 %139)
  store %struct.alias_link* %142, %struct.alias_link** %12, align 8
  %143 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %144 = icmp ne %struct.alias_link* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %132
  %146 = load i32, i32* @PKT_ALIAS_FOUND_HEADER_FRAGMENT, align 4
  store i32 %146, i32* %9, align 4
  %147 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %148 = load %struct.ip*, %struct.ip** %8, align 8
  %149 = getelementptr inbounds %struct.ip, %struct.ip* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @SetFragmentAddr(%struct.alias_link* %147, i32 %151)
  br label %155

153:                                              ; preds = %132
  %154 = load i32, i32* @PKT_ALIAS_ERROR, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %145
  br label %156

156:                                              ; preds = %155, %124
  br label %170

157:                                              ; preds = %61
  %158 = load %struct.libalias*, %struct.libalias** %4, align 8
  %159 = load %struct.ip*, %struct.ip** %8, align 8
  %160 = getelementptr inbounds %struct.ip, %struct.ip* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ip*, %struct.ip** %8, align 8
  %163 = getelementptr inbounds %struct.ip, %struct.ip* %162, i32 0, i32 4
  %164 = load %struct.ip*, %struct.ip** %8, align 8
  %165 = getelementptr inbounds %struct.ip, %struct.ip* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ip*, %struct.ip** %8, align 8
  %168 = getelementptr inbounds %struct.ip, %struct.ip* %167, i32 0, i32 2
  %169 = call i32 @FragmentIn(%struct.libalias* %158, i32 %161, %struct.in_addr* %163, i32 %166, i32* %168)
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %157, %156
  br label %171

171:                                              ; preds = %170, %59, %19
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local i32 @LibAliasOutLocked(%struct.libalias*, i8*, i32, i32) #1

declare dso_local i32 @HouseKeeping(%struct.libalias*) #1

declare dso_local i32 @ClearCheckNewLink(%struct.libalias*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IcmpAliasIn(%struct.libalias*, %struct.ip*) #1

declare dso_local i32 @UdpAliasIn(%struct.libalias*, %struct.ip*) #1

declare dso_local i32 @TcpAliasIn(%struct.libalias*, %struct.ip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @find_handler(i32, i32, %struct.libalias*, %struct.ip*, %struct.alias_data*) #1

declare dso_local i32 @ProtoAliasIn(%struct.libalias*, i32, %struct.in_addr*, i32, i32*) #1

declare dso_local %struct.alias_link* @FindFragmentIn1(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @SetFragmentAddr(%struct.alias_link*, i32) #1

declare dso_local i32 @FragmentIn(%struct.libalias*, i32, %struct.in_addr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
