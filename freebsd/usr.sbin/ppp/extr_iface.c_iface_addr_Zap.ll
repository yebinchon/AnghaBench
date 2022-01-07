; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_addr_Zap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_addr_Zap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface_addr = type { i32, i32 }
%struct.ifaliasreq = type { i8*, %struct.TYPE_4__, %struct.sockaddr_in, %struct.sockaddr_in, %struct.sockaddr_in, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sockaddr_in = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in6_aliasreq = type { i8*, %struct.TYPE_4__, %struct.sockaddr_in, %struct.sockaddr_in, %struct.sockaddr_in, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i32 0, align 4
@SIOCDIFADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: DIFADDR %s -> %s returns %d\0A\00", align 1
@ND6_INFINITE_LIFETIME = common dso_local global i8* null, align 8
@SIOCDIFADDR_IN6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_IN6\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"iface rm: ioctl(SIOCDIFADDR%s, %s): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"iface rm: ioctl(SIOCDIFADDR%s, %s -> %s): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.iface_addr*, i32)* @iface_addr_Zap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iface_addr_Zap(i8* %0, %struct.iface_addr* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iface_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifaliasreq, align 8
  %8 = alloca %struct.in6_aliasreq, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.iface_addr* %1, %struct.iface_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %23 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %22, i32 0, i32 0
  %24 = call i32 @ncprange_getsa(i32* %23, %struct.sockaddr_storage* %12, %struct.sockaddr_storage* %14)
  %25 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %26 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %25, i32 0, i32 1
  %27 = call i32 @ncpaddr_getsa(i32* %26, %struct.sockaddr_storage* %13)
  store i32 0, i32* %15, align 4
  %28 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %29 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %28, i32 0, i32 0
  %30 = call i32 @ncprange_family(i32* %29)
  switch i32 %30, label %129 [
    i32 129, label %31
    i32 128, label %93
  ]

31:                                               ; preds = %3
  %32 = bitcast %struct.ifaliasreq* %7 to %struct.in6_aliasreq*
  %33 = call i32 @memset(%struct.in6_aliasreq* %32, i8 signext 0, i32 104)
  %34 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %7, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strncpy(i8* %35, i8* %36, i32 7)
  %38 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %7, i32 0, i32 4
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %9, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %40 = call i32 @memcpy(%struct.sockaddr_in* %39, %struct.sockaddr_storage* %12, i32 24)
  %41 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %7, i32 0, i32 6
  %42 = bitcast i32* %41 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %42, %struct.sockaddr_in** %10, align 8
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %44 = call i32 @memcpy(%struct.sockaddr_in* %43, %struct.sockaddr_storage* %14, i32 24)
  %45 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %7, i32 0, i32 5
  %46 = bitcast i32* %45 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %46, %struct.sockaddr_in** %11, align 8
  %47 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %48 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %47, i32 0, i32 1
  %49 = call i64 @ncpaddr_family(i32* %48)
  %50 = load i64, i64* @AF_UNSPEC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %31
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  store i32 129, i32* %54, align 8
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 1
  store i32 24, i32* %56, align 4
  %57 = load i32, i32* @INADDR_NONE, align 4
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  br label %64

61:                                               ; preds = %31
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %63 = call i32 @memcpy(%struct.sockaddr_in* %62, %struct.sockaddr_storage* %13, i32 24)
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @SIOCDIFADDR, align 4
  %67 = bitcast %struct.ifaliasreq* %7 to %struct.in6_aliasreq*
  %68 = call i32 @ID0ioctl(i32 %65, i32 %66, %struct.in6_aliasreq* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* @LogDEBUG, align 4
  %71 = call i32 @log_IsKept(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %64
  %74 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %17, align 8
  %77 = alloca i8, i64 %75, align 16
  store i64 %75, i64* %18, align 8
  %78 = trunc i64 %75 to i32
  %79 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %80 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %79, i32 0, i32 0
  %81 = call i8* @ncprange_ntoa(i32* %80)
  %82 = call i32 @snprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @LogWARN, align 4
  %84 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %7, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %87 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %86, i32 0, i32 1
  %88 = call i8* @ncpaddr_ntoa(i32* %87)
  %89 = load i32, i32* %15, align 4
  %90 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %77, i8* %88, i32 %89)
  %91 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %92

92:                                               ; preds = %73, %64
  br label %129

93:                                               ; preds = %3
  %94 = call i32 @memset(%struct.in6_aliasreq* %8, i8 signext 0, i32 104)
  %95 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @strncpy(i8* %96, i8* %97, i32 7)
  %99 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 4
  %100 = call i32 @memcpy(%struct.sockaddr_in* %99, %struct.sockaddr_storage* %12, i32 24)
  %101 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 3
  %102 = call i32 @memcpy(%struct.sockaddr_in* %101, %struct.sockaddr_storage* %14, i32 24)
  %103 = load i64, i64* @AF_UNSPEC, align 8
  %104 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 3
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %107 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %106, i32 0, i32 1
  %108 = call i64 @ncpaddr_family(i32* %107)
  %109 = load i64, i64* @AF_UNSPEC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %93
  %112 = load i64, i64* @AF_UNSPEC, align 8
  %113 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 2
  %114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %118

115:                                              ; preds = %93
  %116 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 2
  %117 = call i32 @memcpy(%struct.sockaddr_in* %116, %struct.sockaddr_storage* %13, i32 24)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i8*, i8** @ND6_INFINITE_LIFETIME, align 8
  %120 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @ND6_INFINITE_LIFETIME, align 8
  %123 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @SIOCDIFADDR_IN6, align 4
  %127 = call i32 @ID0ioctl(i32 %125, i32 %126, %struct.in6_aliasreq* %8)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* @errno, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %3, %118, %92
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %173

132:                                              ; preds = %129
  %133 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %134 = zext i32 %133 to i64
  %135 = call i8* @llvm.stacksave()
  store i8* %135, i8** %19, align 8
  %136 = alloca i8, i64 %134, align 16
  store i64 %134, i64* %20, align 8
  %137 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %138 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %137, i32 0, i32 0
  %139 = call i32 @ncprange_family(i32* %138)
  %140 = icmp eq i32 %139, 128
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  store i8* %142, i8** %21, align 8
  %143 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %144 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %143, i32 0, i32 1
  %145 = call i64 @ncpaddr_family(i32* %144)
  %146 = load i64, i64* @AF_UNSPEC, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %132
  %149 = load i32, i32* @LogWARN, align 4
  %150 = load i8*, i8** %21, align 8
  %151 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %152 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %151, i32 0, i32 0
  %153 = call i8* @ncprange_ntoa(i32* %152)
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %150, i8* %153, i32 %155)
  br label %171

157:                                              ; preds = %132
  %158 = trunc i64 %134 to i32
  %159 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %160 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %159, i32 0, i32 1
  %161 = call i8* @ncpaddr_ntoa(i32* %160)
  %162 = call i32 @snprintf(i8* %136, i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %161)
  %163 = load i32, i32* @LogWARN, align 4
  %164 = load i8*, i8** %21, align 8
  %165 = load %struct.iface_addr*, %struct.iface_addr** %5, align 8
  %166 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %165, i32 0, i32 0
  %167 = call i8* @ncprange_ntoa(i32* %166)
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @strerror(i32 %168)
  %170 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %163, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %164, i8* %167, i8* %136, i32 %169)
  br label %171

171:                                              ; preds = %157, %148
  %172 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %173

173:                                              ; preds = %171, %129
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, -1
  %176 = zext i1 %175 to i32
  ret i32 %176
}

declare dso_local i32 @ncprange_getsa(i32*, %struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i32 @ncpaddr_getsa(i32*, %struct.sockaddr_storage*) #1

declare dso_local i32 @ncprange_family(i32*) #1

declare dso_local i32 @memset(%struct.in6_aliasreq*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_in*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @ncpaddr_family(i32*) #1

declare dso_local i32 @ID0ioctl(i32, i32, %struct.in6_aliasreq*) #1

declare dso_local i32 @log_IsKept(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ncprange_ntoa(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @ncpaddr_ntoa(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
