; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_IpPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_IpPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @IpPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IpPort(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.servent*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IPPROTO_TCP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.servent* @getservbyname(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %21, %struct.servent** %9, align 8
  br label %31

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IPPROTO_UDP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.servent* @getservbyname(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.servent* %28, %struct.servent** %9, align 8
  br label %30

29:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %43

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.servent*, %struct.servent** %9, align 8
  %33 = icmp eq %struct.servent* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %43

35:                                               ; preds = %31
  %36 = load %struct.servent*, %struct.servent** %9, align 8
  %37 = getelementptr inbounds %struct.servent, %struct.servent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %34, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
