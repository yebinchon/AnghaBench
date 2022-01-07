; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_exportinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_exportinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i32, i32, i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.rt_addrinfo = type { i32, i32, i32, i32, %struct.rt_metrics*, i32, %struct.sockaddr** }
%struct.rt_metrics = type { i32 }

@NHR_COPY = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTA_NETMASK = common dso_local global i32 0, align 4
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTV_MTU = common dso_local global i32 0, align 4
@NHR_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_exportinfo(%struct.rtentry* %0, %struct.rt_addrinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.rt_addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt_metrics*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  store %struct.rtentry* %0, %struct.rtentry** %5, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NHR_COPY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %132

16:                                               ; preds = %3
  %17 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %18 = call i8* @rt_key(%struct.rtentry* %17)
  %19 = bitcast i8* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %9, align 8
  %20 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %21 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %20, i32 0, i32 6
  %22 = load %struct.sockaddr**, %struct.sockaddr*** %21, align 8
  %23 = load i64, i64* @RTAX_DST, align 8
  %24 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %23
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  store %struct.sockaddr* %25, %struct.sockaddr** %10, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %30 = icmp ne %struct.sockaddr* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %16
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %231

41:                                               ; preds = %31
  %42 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(%struct.sockaddr* %42, %struct.sockaddr* %43, i32 %46)
  %48 = load i32, i32* @RTA_DST, align 4
  %49 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %50 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %41, %16
  %54 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %55 = call %struct.sockaddr* @rt_mask(%struct.rtentry* %54)
  store %struct.sockaddr* %55, %struct.sockaddr** %9, align 8
  %56 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %57 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %56, i32 0, i32 6
  %58 = load %struct.sockaddr**, %struct.sockaddr*** %57, align 8
  %59 = load i64, i64* @RTAX_NETMASK, align 8
  %60 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %58, i64 %59
  %61 = load %struct.sockaddr*, %struct.sockaddr** %60, align 8
  store %struct.sockaddr* %61, %struct.sockaddr** %10, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %63 = icmp ne %struct.sockaddr* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %53
  %65 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %66 = icmp ne %struct.sockaddr* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %4, align 4
  br label %231

75:                                               ; preds = %67
  %76 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(%struct.sockaddr* %76, %struct.sockaddr* %77, i32 %80)
  %82 = load i32, i32* @RTA_NETMASK, align 4
  %83 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %84 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %75, %64, %53
  %88 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %89 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %88, i32 0, i32 4
  %90 = load %struct.sockaddr*, %struct.sockaddr** %89, align 8
  store %struct.sockaddr* %90, %struct.sockaddr** %9, align 8
  %91 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %92 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %91, i32 0, i32 6
  %93 = load %struct.sockaddr**, %struct.sockaddr*** %92, align 8
  %94 = load i64, i64* @RTAX_GATEWAY, align 8
  %95 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %93, i64 %94
  %96 = load %struct.sockaddr*, %struct.sockaddr** %95, align 8
  store %struct.sockaddr* %96, %struct.sockaddr** %10, align 8
  %97 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %98 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RTF_GATEWAY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %87
  %104 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %105 = icmp ne %struct.sockaddr* %104, null
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %108 = icmp ne %struct.sockaddr* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %106
  %110 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %111 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @ENOMEM, align 4
  store i32 %118, i32* %4, align 4
  br label %231

119:                                              ; preds = %109
  %120 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %121 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %122 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %123 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(%struct.sockaddr* %120, %struct.sockaddr* %121, i32 %124)
  %126 = load i32, i32* @RTA_GATEWAY, align 4
  %127 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %128 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %119, %106, %103, %87
  br label %184

132:                                              ; preds = %3
  %133 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %134 = call i8* @rt_key(%struct.rtentry* %133)
  %135 = bitcast i8* %134 to %struct.sockaddr*
  %136 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %137 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %136, i32 0, i32 6
  %138 = load %struct.sockaddr**, %struct.sockaddr*** %137, align 8
  %139 = load i64, i64* @RTAX_DST, align 8
  %140 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %138, i64 %139
  store %struct.sockaddr* %135, %struct.sockaddr** %140, align 8
  %141 = load i32, i32* @RTA_DST, align 4
  %142 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %143 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %147 = call %struct.sockaddr* @rt_mask(%struct.rtentry* %146)
  %148 = icmp ne %struct.sockaddr* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %132
  %150 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %151 = call %struct.sockaddr* @rt_mask(%struct.rtentry* %150)
  %152 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %153 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %152, i32 0, i32 6
  %154 = load %struct.sockaddr**, %struct.sockaddr*** %153, align 8
  %155 = load i64, i64* @RTAX_NETMASK, align 8
  %156 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %154, i64 %155
  store %struct.sockaddr* %151, %struct.sockaddr** %156, align 8
  %157 = load i32, i32* @RTA_NETMASK, align 4
  %158 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %159 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %149, %132
  %163 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %164 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @RTF_GATEWAY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %162
  %170 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %171 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %170, i32 0, i32 4
  %172 = load %struct.sockaddr*, %struct.sockaddr** %171, align 8
  %173 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %174 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %173, i32 0, i32 6
  %175 = load %struct.sockaddr**, %struct.sockaddr*** %174, align 8
  %176 = load i64, i64* @RTAX_GATEWAY, align 8
  %177 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %175, i64 %176
  store %struct.sockaddr* %172, %struct.sockaddr** %177, align 8
  %178 = load i32, i32* @RTA_GATEWAY, align 4
  %179 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %180 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %169, %162
  br label %184

184:                                              ; preds = %183, %131
  %185 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %186 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %185, i32 0, i32 4
  %187 = load %struct.rt_metrics*, %struct.rt_metrics** %186, align 8
  store %struct.rt_metrics* %187, %struct.rt_metrics** %8, align 8
  %188 = load %struct.rt_metrics*, %struct.rt_metrics** %8, align 8
  %189 = icmp ne %struct.rt_metrics* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load i32, i32* @RTV_MTU, align 4
  %192 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %193 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %197 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.rt_metrics*, %struct.rt_metrics** %8, align 8
  %200 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %190, %184
  %202 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %203 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %206 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %208 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %211 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %213 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %216 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %218 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ifa_ref(i32 %219)
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @NHR_REF, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %201
  %226 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %227 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @if_ref(i32 %228)
  br label %230

230:                                              ; preds = %225, %201
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %230, %117, %73, %39
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i8* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local %struct.sockaddr* @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @ifa_ref(i32) #1

declare dso_local i32 @if_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
