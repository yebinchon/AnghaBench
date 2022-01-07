; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_getnbrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_getnbrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_nbrinfo = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }

@getnbrinfo.nbi = internal global %struct.in6_nbrinfo zeroinitializer, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SIOCGNBRINFO_IN6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ioctl(SIOCGNBRINFO_IN6)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_nbrinfo* (%struct.in6_addr*, i32, i32)* @getnbrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_nbrinfo* @getnbrinfo(%struct.in6_addr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in6_nbrinfo*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  %11 = call i32 @socket(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = call i32 @bzero(%struct.in6_nbrinfo* @getnbrinfo.nbi, i32 8)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.in6_nbrinfo, %struct.in6_nbrinfo* @getnbrinfo.nbi, i32 0, i32 1), align 4
  %19 = call i32 @if_indextoname(i32 %17, i32 %18)
  %20 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %21 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.in6_nbrinfo* @getnbrinfo.nbi to i8*), i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SIOCGNBRINFO_IN6, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, i32 ptrtoint (%struct.in6_nbrinfo* @getnbrinfo.nbi to i32))
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 %32)
  store %struct.in6_nbrinfo* null, %struct.in6_nbrinfo** %4, align 8
  br label %37

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  store %struct.in6_nbrinfo* @getnbrinfo.nbi, %struct.in6_nbrinfo** %4, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.in6_nbrinfo*, %struct.in6_nbrinfo** %4, align 8
  ret %struct.in6_nbrinfo* %38
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.in6_nbrinfo*, i32) #1

declare dso_local i32 @if_indextoname(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
