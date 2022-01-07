; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_cmsg_nexthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_cmsg_nexthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32* }
%struct.cmsghdr = type { i32 }

@__const.test_cmsg_nexthdr.magic = private unnamed_addr constant [6 x i8] c"MAGIC\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"test_cmsg_nexthdr\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"more than one cmsghdr\00\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"only one cmsghdr\00\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"null second argument\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cmsg_nexthdr() #0 {
  %1 = alloca %struct.msghdr, align 8
  %2 = alloca %struct.cmsghdr, align 4
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca [10240 x i8], align 16
  %6 = alloca [6 x i8], align 1
  %7 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_cmsg_nexthdr.magic, i32 0, i32 0), i64 6, i1 false)
  %8 = call i32 @set_funcname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 18)
  %9 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %10 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* %2, i8* %9, i32 10240)
  %11 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %12 = bitcast i8* %11 to i32*
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = call i32 @CMSG_SPACE(i32 0)
  %15 = mul nsw i32 %14, 2
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = call i8* @CMSG_LEN(i32 0)
  %18 = ptrtoint i8* %17 to i32
  %19 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %2, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.cmsghdr* %2 to i8*
  %21 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %22 = call i32 @bcopy(i8* %20, i8* %21, i32 4)
  %23 = bitcast %struct.cmsghdr* %2 to i8*
  %24 = bitcast [6 x i8]* %6 to i8*
  %25 = call i32 @strlcpy(i8* %23, i8* %24, i32 6)
  %26 = bitcast %struct.cmsghdr* %2 to i8*
  %27 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %28 = bitcast i8* %27 to i32*
  %29 = call i32 @CMSG_SPACE(i32 0)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @bcopy(i8* %26, i8* %32, i32 4)
  %34 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %34, %struct.cmsghdr** %3, align 8
  %35 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %36 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %1, %struct.cmsghdr* %35)
  store %struct.cmsghdr* %36, %struct.cmsghdr** %4, align 8
  %37 = bitcast [6 x i8]* %6 to i8*
  %38 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %39 = bitcast %struct.cmsghdr* %38 to i8*
  %40 = call i32 @checkstr(i8* %37, i8* %39, i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %42 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* %2, i8* %41, i32 10240)
  %43 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = call i32 @CMSG_SPACE(i32 0)
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = call i8* @CMSG_LEN(i32 0)
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %2, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = bitcast %struct.cmsghdr* %2 to i8*
  %52 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %53 = call i32 @bcopy(i8* %51, i8* %52, i32 4)
  %54 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %54, %struct.cmsghdr** %3, align 8
  %55 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %56 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %1, %struct.cmsghdr* %55)
  store %struct.cmsghdr* %56, %struct.cmsghdr** %4, align 8
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %58 = bitcast %struct.cmsghdr* %57 to i32*
  %59 = call i32 @checkptr(i32* null, i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %61 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* %2, i8* %60, i32 10240)
  %62 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 10240, i32* %65, align 8
  %66 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %2, i32 0, i32 0
  store i32 10240, i32* %66, align 4
  %67 = bitcast %struct.cmsghdr* %2 to i8*
  %68 = getelementptr inbounds [10240 x i8], [10240 x i8]* %5, i64 0, i64 0
  %69 = call i32 @bcopy(i8* %67, i8* %68, i32 4)
  %70 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %70, %struct.cmsghdr** %3, align 8
  %71 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %1, %struct.cmsghdr* null)
  store %struct.cmsghdr* %71, %struct.cmsghdr** %4, align 8
  %72 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %73 = bitcast %struct.cmsghdr* %72 to i32*
  %74 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %75 = bitcast %struct.cmsghdr* %74 to i32*
  %76 = call i32 @checkptr(i32* %73, i32* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_funcname(i8*, i32) #2

declare dso_local i32 @init_hdrs(%struct.msghdr*, %struct.cmsghdr*, i8*, i32) #2

declare dso_local i32 @CMSG_SPACE(i32) #2

declare dso_local i8* @CMSG_LEN(i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #2

declare dso_local i32 @checkstr(i8*, i8*, i32, i8*) #2

declare dso_local i32 @checkptr(i32*, i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
