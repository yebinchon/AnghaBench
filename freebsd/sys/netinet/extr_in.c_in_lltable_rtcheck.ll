; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_rtcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_rtcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32, i32 }
%struct.sockaddr = type { i64, i32, i32, i32, i32, i32, %struct.ifnet*, i32, %struct.sockaddr** }
%struct.rt_addrinfo = type { i64, i32, i32, i32, i32, i32, %struct.ifnet*, i32, %struct.rt_addrinfo** }
%struct.sockaddr_in = type { i64, i32, i32, i32, i32, i32, %struct.ifnet*, i32, %struct.sockaddr_in** }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@NHR_REF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_STATICARP = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.sockaddr*)* @in_lltable_rtcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_lltable_rtcheck(%struct.ifnet* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.rt_addrinfo, align 8
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca %struct.sockaddr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %23, i8* %27)
  %29 = call i32 @bzero(%struct.sockaddr_in* %9, i32 56)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 56, i32* %30, align 8
  %31 = call i32 @bzero(%struct.sockaddr_in* %10, i32 56)
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 56, i32* %32, align 8
  %33 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  %34 = call i32 @bzero(%struct.sockaddr_in* %33, i32 56)
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 2
  store i32 56, i32* %35, align 4
  %36 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in*
  %37 = call i32 @bzero(%struct.sockaddr_in* %36, i32 56)
  %38 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %39 = bitcast %struct.sockaddr* %38 to %struct.rt_addrinfo*
  %40 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 8
  %41 = load %struct.rt_addrinfo**, %struct.rt_addrinfo*** %40, align 8
  %42 = load i64, i64* @RTAX_DST, align 8
  %43 = getelementptr inbounds %struct.rt_addrinfo*, %struct.rt_addrinfo** %41, i64 %42
  store %struct.rt_addrinfo* %39, %struct.rt_addrinfo** %43, align 8
  %44 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %45 = bitcast %struct.sockaddr* %44 to %struct.rt_addrinfo*
  %46 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 8
  %47 = load %struct.rt_addrinfo**, %struct.rt_addrinfo*** %46, align 8
  %48 = load i64, i64* @RTAX_NETMASK, align 8
  %49 = getelementptr inbounds %struct.rt_addrinfo*, %struct.rt_addrinfo** %47, i64 %48
  store %struct.rt_addrinfo* %45, %struct.rt_addrinfo** %49, align 8
  %50 = bitcast %struct.sockaddr* %11 to %struct.rt_addrinfo*
  %51 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 8
  %52 = load %struct.rt_addrinfo**, %struct.rt_addrinfo*** %51, align 8
  %53 = load i64, i64* @RTAX_GATEWAY, align 8
  %54 = getelementptr inbounds %struct.rt_addrinfo*, %struct.rt_addrinfo** %52, i64 %53
  store %struct.rt_addrinfo* %50, %struct.rt_addrinfo** %54, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %59 = bitcast %struct.sockaddr* %58 to %struct.sockaddr_in*
  %60 = load i32, i32* @NHR_REF, align 4
  %61 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in*
  %62 = call i64 @rib_lookup_info(i32 %57, %struct.sockaddr_in* %59, i32 %60, i32 0, %struct.sockaddr_in* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %3
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %174

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @RTF_GATEWAY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @RTF_HOST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 6
  %80 = load %struct.ifnet*, %struct.ifnet** %79, align 8
  %81 = icmp ne %struct.ifnet* %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 6
  %84 = load %struct.ifnet*, %struct.ifnet** %83, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IFT_ETHER, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %107, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 6
  %91 = load %struct.ifnet*, %struct.ifnet** %90, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFF_NOARP, align 4
  %95 = load i32, i32* @IFF_STATICARP, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %103 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @memcmp(i32 %101, i32 %104, i32 4)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99, %89, %82, %78, %73
  %108 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in*
  %109 = call i32 @rib_free_info(%struct.sockaddr_in* %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %4, align 4
  br label %174

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %66
  %113 = bitcast %struct.rt_addrinfo* %8 to %struct.sockaddr_in*
  %114 = call i32 @rib_free_info(%struct.sockaddr_in* %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @RTF_HOST, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %173, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 6
  %121 = load %struct.ifnet*, %struct.ifnet** %120, align 8
  %122 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %123 = icmp ne %struct.ifnet* %121, %122
  br i1 %123, label %124, label %173

124:                                              ; preds = %119
  %125 = bitcast %struct.sockaddr_in* %10 to i8*
  store i8* %125, i8** %14, align 8
  %126 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %8, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RTA_NETMASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %4, align 4
  br label %174

133:                                              ; preds = %124
  %134 = bitcast %struct.sockaddr_in* %9 to i8*
  store i8* %134, i8** %13, align 8
  %135 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %136 = bitcast %struct.sockaddr* %135 to i8*
  store i8* %136, i8** %15, align 8
  %137 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %138 = bitcast %struct.sockaddr* %137 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %138, %struct.sockaddr_in** %17, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  store i8* %144, i8** %16, align 8
  br label %145

145:                                              ; preds = %165, %133
  %146 = load i8*, i8** %15, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = load i8*, i8** %13, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8*, i8** %15, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = xor i32 %152, %155
  %157 = load i8*, i8** %14, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = and i32 %156, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %4, align 4
  br label %174

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %13, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %14, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %15, align 8
  br label %145

172:                                              ; preds = %145
  br label %173

173:                                              ; preds = %172, %119, %112
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %162, %131, %107, %64
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @rib_lookup_info(i32, %struct.sockaddr_in*, i32, i32, %struct.sockaddr_in*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @rib_free_info(%struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
