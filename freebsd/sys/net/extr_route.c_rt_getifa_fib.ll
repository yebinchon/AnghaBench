; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_getifa_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_getifa_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sockaddr = type { i64 }
%struct.rt_addrinfo = type { i32, %struct.TYPE_5__*, i32*, %struct.sockaddr** }
%struct.TYPE_5__ = type { i32* }
%struct.epoch_tracker = type { i32 }
%struct.sockaddr_dl = type { i64 }

@ifpaddr = common dso_local global %struct.TYPE_4__* null, align 8
@AF_LINK = common dso_local global i64 0, align 8
@ifaaddr = common dso_local global i32* null, align 8
@RTAX_IFA = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@gateway = common dso_local global %struct.sockaddr* null, align 8
@dst = common dso_local global %struct.sockaddr* null, align 8
@flags = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_getifa_fib(%struct.rt_addrinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.rt_addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoch_tracker, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.rt_addrinfo* %0, %struct.rt_addrinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %11 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @NET_EPOCH_ENTER(i32 %16)
  %18 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %19 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ifpaddr, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ifpaddr, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_LINK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ifpaddr, align 8
  %33 = bitcast %struct.TYPE_4__* %32 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %33, %struct.sockaddr_dl** %8, align 8
  %34 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32* @ifnet_byindex(i64 %41)
  %43 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %44 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %25, %22, %2
  %47 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %48 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp eq %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32*, i32** @ifaaddr, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** @ifaaddr, align 8
  %56 = call %struct.TYPE_5__* @ifa_ifwithaddr(i32* %55)
  %57 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %58 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %57, i32 0, i32 1
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  br label %59

59:                                               ; preds = %54, %51, %46
  %60 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %61 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = icmp eq %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %160

64:                                               ; preds = %59
  %65 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %66 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %65, i32 0, i32 3
  %67 = load %struct.sockaddr**, %struct.sockaddr*** %66, align 8
  %68 = load i64, i64* @RTAX_IFA, align 8
  %69 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %67, i64 %68
  %70 = load %struct.sockaddr*, %struct.sockaddr** %69, align 8
  %71 = icmp ne %struct.sockaddr* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %74 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %73, i32 0, i32 3
  %75 = load %struct.sockaddr**, %struct.sockaddr*** %74, align 8
  %76 = load i64, i64* @RTAX_IFA, align 8
  %77 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %75, i64 %76
  %78 = load %struct.sockaddr*, %struct.sockaddr** %77, align 8
  store %struct.sockaddr* %78, %struct.sockaddr** %9, align 8
  br label %99

79:                                               ; preds = %64
  %80 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %81 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RTF_GATEWAY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  %88 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %91 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  store %struct.sockaddr* %95, %struct.sockaddr** %9, align 8
  br label %98

96:                                               ; preds = %86, %79
  %97 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  store %struct.sockaddr* %97, %struct.sockaddr** %9, align 8
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %72
  %100 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %101 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %99
  %105 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %106 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %107 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i8* @ifaof_ifpforaddr(%struct.sockaddr* %105, i32* %108)
  %110 = bitcast i8* %109 to %struct.TYPE_5__*
  %111 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %112 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %111, i32 0, i32 1
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %112, align 8
  %113 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %114 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = icmp eq %struct.TYPE_5__* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %104
  %118 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  %119 = icmp ne %struct.sockaddr* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  %122 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %123 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i8* @ifaof_ifpforaddr(%struct.sockaddr* %121, i32* %124)
  %126 = bitcast i8* %125 to %struct.TYPE_5__*
  %127 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %128 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %127, i32 0, i32 1
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %128, align 8
  br label %129

129:                                              ; preds = %120, %117, %104
  br label %159

130:                                              ; preds = %99
  %131 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %132 = icmp ne %struct.sockaddr* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  %135 = icmp ne %struct.sockaddr* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load i32, i32* @flags, align 4
  %138 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %139 = load %struct.sockaddr*, %struct.sockaddr** @gateway, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i8* @ifa_ifwithroute(i32 %137, %struct.sockaddr* %138, %struct.sockaddr* %139, i32 %140)
  %142 = bitcast i8* %141 to %struct.TYPE_5__*
  %143 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %144 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %143, i32 0, i32 1
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %144, align 8
  br label %158

145:                                              ; preds = %133, %130
  %146 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %147 = icmp ne %struct.sockaddr* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* @flags, align 4
  %150 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %151 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i8* @ifa_ifwithroute(i32 %149, %struct.sockaddr* %150, %struct.sockaddr* %151, i32 %152)
  %154 = bitcast i8* %153 to %struct.TYPE_5__*
  %155 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %156 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %155, i32 0, i32 1
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %156, align 8
  br label %157

157:                                              ; preds = %148, %145
  br label %158

158:                                              ; preds = %157, %136
  br label %159

159:                                              ; preds = %158, %129
  br label %160

160:                                              ; preds = %159, %59
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %165 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = icmp ne %struct.TYPE_5__* %166, null
  br i1 %167, label %168, label %186

168:                                              ; preds = %163
  %169 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %170 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %175 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %174, i32 0, i32 1
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %180 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %179, i32 0, i32 2
  store i32* %178, i32** %180, align 8
  br label %181

181:                                              ; preds = %173, %168
  %182 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %183 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = call i32 @ifa_ref(%struct.TYPE_5__* %184)
  br label %188

186:                                              ; preds = %163, %160
  %187 = load i32, i32* @ENETUNREACH, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %181
  %189 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @NET_EPOCH_EXIT(i32 %190)
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32* @ifnet_byindex(i64) #1

declare dso_local %struct.TYPE_5__* @ifa_ifwithaddr(i32*) #1

declare dso_local i8* @ifaof_ifpforaddr(%struct.sockaddr*, i32*) #1

declare dso_local i8* @ifa_ifwithroute(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ifa_ref(%struct.TYPE_5__*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
