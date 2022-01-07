; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_cmsg_firsthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_cmsg_firsthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32* }
%struct.cmsghdr = type { i32 }

@__const.test_cmsg_firsthdr.magic = private unnamed_addr constant [6 x i8] c"MAGIC\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"test_cmsg_firsthdr\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"msg_control is NULL\00\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"msg_controllen < sizeof cmsghdr\00\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"msg_controllen == 0\00\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"with payload\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cmsg_firsthdr() #0 {
  %1 = alloca %struct.msghdr, align 8
  %2 = alloca %struct.cmsghdr, align 4
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [6 x i8], align 1
  %6 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_cmsg_firsthdr.magic, i32 0, i32 0), i64 6, i1 false)
  %7 = call i32 @set_funcname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 19)
  %8 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* null, i8* null, i32 0)
  %9 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %10, %struct.cmsghdr** %3, align 8
  %11 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %12 = bitcast %struct.cmsghdr* %11 to i8*
  %13 = call i32 @checkptr(i32* null, i8* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* null, i8* null, i32 0)
  %15 = bitcast %struct.cmsghdr* %2 to i8*
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 3, i32* %18, align 8
  %19 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %19, %struct.cmsghdr** %3, align 8
  %20 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %21 = bitcast %struct.cmsghdr* %20 to i8*
  %22 = call i32 @checkptr(i32* null, i8* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* null, i8* null, i32 0)
  %24 = bitcast %struct.cmsghdr* %2 to i8*
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %28, %struct.cmsghdr** %3, align 8
  %29 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %30 = bitcast %struct.cmsghdr* %29 to i8*
  %31 = call i32 @checkptr(i32* null, i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %33 = call i32 @init_hdrs(%struct.msghdr* %1, %struct.cmsghdr* %2, i8* %32, i32 1024)
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i32 0, i32 1024)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 1
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %1, i32 0, i32 0
  store i32 1024, i32* %39, align 8
  %40 = bitcast %struct.cmsghdr* %2 to i8*
  %41 = bitcast [6 x i8]* %5 to i8*
  %42 = call i32 @strlcpy(i8* %40, i8* %41, i32 6)
  %43 = bitcast %struct.cmsghdr* %2 to i8*
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %45 = call i32 @bcopy(i8* %43, i8* %44, i32 4)
  %46 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %1)
  store %struct.cmsghdr* %46, %struct.cmsghdr** %3, align 8
  %47 = bitcast [6 x i8]* %5 to i8*
  %48 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %49 = bitcast %struct.cmsghdr* %48 to i8*
  %50 = call i32 @checkstr(i8* %47, i8* %49, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_funcname(i8*, i32) #2

declare dso_local i32 @init_hdrs(%struct.msghdr*, %struct.cmsghdr*, i8*, i32) #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i32 @checkptr(i32*, i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @checkstr(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
