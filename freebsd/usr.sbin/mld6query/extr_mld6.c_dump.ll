; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mld6query/extr_mld6.c_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mld6query/extr_mld6.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mld_hdr = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"too short!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"from %s, \00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"type=Multicast Listener Query, \00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"type=Multicast Listener Report, \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"type=Multicast Listener Done, \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"addr=%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mld_hdr*, align 8
  %5 = alloca [1024 x i32], align 16
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 4, i32* %7, align 4
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %11 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %12 = call i32 @recvfrom(i32 %9, i32* %10, i32 4096, i32 0, %struct.sockaddr* %11, i32* %7)
  store i32 %12, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %47

21:                                               ; preds = %15
  %22 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %23 = bitcast i32* %22 to %struct.mld_hdr*
  store %struct.mld_hdr* %23, %struct.mld_hdr** %4, align 8
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %27 = call i8* @inet_ntop(i32 %24, i32* %25, i8* %26, i32 256)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load %struct.mld_hdr*, %struct.mld_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.mld_hdr, %struct.mld_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 128, label %34
    i32 129, label %36
  ]

32:                                               ; preds = %21
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %38

34:                                               ; preds = %21
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %38

36:                                               ; preds = %21
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %21, %36, %34, %32
  %39 = load i32, i32* @AF_INET6, align 4
  %40 = load %struct.mld_hdr*, %struct.mld_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.mld_hdr, %struct.mld_hdr* %40, i32 0, i32 1
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %43 = call i8* @inet_ntop(i32 %39, i32* %41, i8* %42, i32 256)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fflush(i32 %45)
  br label %47

47:                                               ; preds = %38, %19, %14
  ret void
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
