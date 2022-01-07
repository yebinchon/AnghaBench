; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_gethostinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_gethostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@AI_CANONNAME = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@EX_NOHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i8*, i32)* @gethostinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @gethostinfo(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 12)
  %9 = load i32, i32* @AI_CANONNAME, align 4
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @AF_UNSPEC, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @port, align 4
  %17 = call i32 @getaddrinfo(i8* %15, i32 %16, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EAI_NONAME, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @EX_NOHOST, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 @err(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %23, %2
  %34 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  ret %struct.addrinfo* %34
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @err(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
