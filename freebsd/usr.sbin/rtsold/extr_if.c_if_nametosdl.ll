; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_if.c_if_nametosdl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_if.c_if_nametosdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i64, i64, i32* }
%struct.if_msghdr = type { i64, i32, i32 }
%struct.sockaddr = type { i64 }

@CTL_NET = common dso_local global i32 0, align 4
@AF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@RTM_IFINFO = common dso_local global i64 0, align 8
@RTAX_IFP = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr_dl* @if_nametosdl(i8* %0) #0 {
  %2 = alloca %struct.sockaddr_dl*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.if_msghdr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_dl*, align 8
  %14 = alloca %struct.sockaddr_dl*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %17 = load i32, i32* @CTL_NET, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @AF_ROUTE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* @NET_RT_IFLIST, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @RTAX_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca %struct.sockaddr*, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %13, align 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %31 = call i32 @nitems(i32* %30)
  %32 = call i64 @sysctl(i32* %29, i32 %31, i8* null, i64* %8, i32* null, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

35:                                               ; preds = %1
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %5, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

40:                                               ; preds = %35
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %43 = call i32 @nitems(i32* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @sysctl(i32* %41, i32 %43, i8* %44, i64* %8, i32* null, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @free(i8* %48)
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

50:                                               ; preds = %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %113, %50
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to %struct.if_msghdr*
  store %struct.if_msghdr* %61, %struct.if_msghdr** %9, align 8
  %62 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %63 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTM_IFINFO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %59
  %68 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %69 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %68, i64 1
  %70 = bitcast %struct.if_msghdr* %69 to %struct.sockaddr*
  store %struct.sockaddr* %70, %struct.sockaddr** %10, align 8
  %71 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %72 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %75 = call i32 @get_rtaddrs(i32 %73, %struct.sockaddr* %74, %struct.sockaddr** %28)
  %76 = load i64, i64* @RTAX_IFP, align 8
  %77 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %28, i64 %76
  %78 = load %struct.sockaddr*, %struct.sockaddr** %77, align 8
  store %struct.sockaddr* %78, %struct.sockaddr** %10, align 8
  %79 = icmp ne %struct.sockaddr* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %67
  %81 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AF_LINK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %88 = bitcast %struct.sockaddr* %87 to i8*
  %89 = bitcast i8* %88 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %89, %struct.sockaddr_dl** %13, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %93 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %113

97:                                               ; preds = %86
  %98 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %99 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i8*, i8** %3, align 8
  %103 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %104 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @strncmp(i32* %101, i8* %102, i64 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %120

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %80
  br label %111

111:                                              ; preds = %110, %67
  br label %112

112:                                              ; preds = %111, %59
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %115 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %6, align 8
  br label %55

120:                                              ; preds = %108, %55
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @free(i8* %125)
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

127:                                              ; preds = %120
  %128 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %129 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @malloc(i64 %130)
  %132 = bitcast i8* %131 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %132, %struct.sockaddr_dl** %14, align 8
  %133 = icmp eq %struct.sockaddr_dl* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @free(i8* %135)
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

137:                                              ; preds = %127
  %138 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %139 = ptrtoint %struct.sockaddr_dl* %138 to i32
  %140 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %141 = ptrtoint %struct.sockaddr_dl* %140 to i32
  %142 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %143 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @memcpy(i32 %139, i32 %141, i64 %144)
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  store %struct.sockaddr_dl* %148, %struct.sockaddr_dl** %2, align 8
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %137, %134, %124, %47, %39, %34
  %150 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %2, align 8
  ret %struct.sockaddr_dl* %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @get_rtaddrs(i32, %struct.sockaddr*, %struct.sockaddr**) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i32*, i8*, i64) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
