; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_parse_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_parse_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"getaddrinfo failed for %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid prefix length: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.in6_addrpolicy*)* @parse_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_prefix(i8* %0, %struct.in6_addrpolicy* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in6_addrpolicy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.addrinfo, align 4
  %10 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.in6_addrpolicy* %1, %struct.in6_addrpolicy** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %64

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  store i8 0, i8* %22, align 1
  %23 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 16)
  %24 = load i32, i32* @AI_NUMERICHOST, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @getaddrinfo(i8* %28, i32* null, %struct.addrinfo* %9, %struct.addrinfo** %10)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @gai_strerror(i32 %33)
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %34)
  br label %64

36:                                               ; preds = %21
  %37 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %38 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %37, i32 0, i32 1
  %39 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %38, i32 %41, i32 %44)
  %46 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %47 = call i32 @freeaddrinfo(%struct.addrinfo* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 128
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %36
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %5, align 4
  br label %64

59:                                               ; preds = %53
  %60 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %61 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @plen2mask(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56, %31, %20
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @plen2mask(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
