; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rtsock_msg_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rtsock_msg_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_addrinfo = type { i32, %struct.sockaddr_in6** }
%struct.sockaddr_in6 = type { i64 }
%struct.walkarg = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rt_msghdr = type { i32, i32, i32 }
%struct.sockaddr = type { i64 }

@NET_RT_IFLISTL = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@RTM_VERSION = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SCTL_MASK32 = common dso_local global i32 0, align 4
@V_deembed_scopeid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rt_addrinfo*, %struct.walkarg*, i32*)* @rtsock_msg_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsock_msg_buffer(i32 %0, %struct.rt_addrinfo* %1, %struct.walkarg* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.walkarg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca %struct.rt_msghdr*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %7, align 8
  store %struct.walkarg* %2, %struct.walkarg** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %14, align 8
  store %struct.rt_msghdr* null, %struct.rt_msghdr** %15, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %43 [
    i32 131, label %18
    i32 129, label %18
    i32 130, label %30
    i32 128, label %42
  ]

18:                                               ; preds = %4, %4
  %19 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %20 = icmp ne %struct.walkarg* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %23 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NET_RT_IFLISTL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 4, i32* %11, align 4
  br label %29

28:                                               ; preds = %21, %18
  store i32 4, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %44

30:                                               ; preds = %4
  %31 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %32 = icmp ne %struct.walkarg* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %35 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NET_RT_IFLISTL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 4, i32* %11, align 4
  br label %41

40:                                               ; preds = %33, %30
  store i32 4, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %44

42:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %44

43:                                               ; preds = %4
  store i32 12, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %42, %41, %29
  %45 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %46 = icmp ne %struct.walkarg* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %49 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %51, %struct.rt_msghdr** %15, align 8
  %52 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %53 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %58 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sockaddr_in6*
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i64 %62
  store %struct.sockaddr_in6* %63, %struct.sockaddr_in6** %14, align 8
  br label %64

64:                                               ; preds = %47, %44
  %65 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %66 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %120, %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @RTAX_MAX, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %123

71:                                               ; preds = %67
  %72 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %73 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %72, i32 0, i32 1
  %74 = load %struct.sockaddr_in6**, %struct.sockaddr_in6*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sockaddr_in6*, %struct.sockaddr_in6** %74, i64 %76
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %77, align 8
  %79 = bitcast %struct.sockaddr_in6* %78 to %struct.sockaddr*
  store %struct.sockaddr* %79, %struct.sockaddr** %16, align 8
  %80 = icmp eq %struct.sockaddr* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %120

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %86 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %90 = bitcast %struct.sockaddr* %89 to %struct.sockaddr_in6*
  %91 = call i32 @SA_SIZE(%struct.sockaddr_in6* %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %93 = icmp ne %struct.sockaddr_in6* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %82
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %100 = bitcast %struct.sockaddr* %99 to %struct.sockaddr_in6*
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @bcopy(%struct.sockaddr_in6* %100, %struct.sockaddr_in6* %101, i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i64 %106
  store %struct.sockaddr_in6* %107, %struct.sockaddr_in6** %14, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %116

111:                                              ; preds = %94, %82
  %112 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %113 = icmp ne %struct.sockaddr_in6* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %14, align 8
  br label %115

115:                                              ; preds = %114, %111
  br label %116

116:                                              ; preds = %115, %98
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %116, %81
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %67

123:                                              ; preds = %67
  %124 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %125 = icmp ne %struct.sockaddr_in6* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ALIGN(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %14, align 8
  br label %146

135:                                              ; preds = %126
  %136 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @bzero(%struct.sockaddr_in6* %136, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %140, i64 %141
  store %struct.sockaddr_in6* %142, %struct.sockaddr_in6** %14, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %135, %134
  br label %147

147:                                              ; preds = %146, %123
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @ALIGN(i32 %148)
  store i32 %149, i32* %11, align 4
  %150 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %151 = icmp ne %struct.sockaddr_in6* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load i32, i32* @RTM_VERSION, align 4
  %154 = load %struct.rt_msghdr*, %struct.rt_msghdr** %15, align 8
  %155 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.rt_msghdr*, %struct.rt_msghdr** %15, align 8
  %158 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.rt_msghdr*, %struct.rt_msghdr** %15, align 8
  %161 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %147
  %163 = load i32, i32* %11, align 4
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  %165 = load %struct.walkarg*, %struct.walkarg** %8, align 8
  %166 = icmp ne %struct.walkarg* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %169 = icmp eq %struct.sockaddr_in6* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @ENOBUFS, align 4
  store i32 %171, i32* %5, align 4
  br label %173

172:                                              ; preds = %167, %162
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %170
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @SA_SIZE(%struct.sockaddr_in6*) #1

declare dso_local i32 @bcopy(%struct.sockaddr_in6*, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @ALIGN(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
