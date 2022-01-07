; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2inetaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2inetaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32* }

@MAX_OCTSTRING_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SNMP_INADDRS_STRSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"inet_ntop failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*)* @snmp_oct2inetaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_oct2inetaddr(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in6_addr, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_OCTSTRING_LEN, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i8* null, i8** %4, align 8
  br label %49

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %37 [
    i32 4, label %24
    i32 16, label %30
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memcpy(i32* %25, i8* %26, i32 4)
  %28 = load i32, i32* @AF_INET, align 4
  store i32 %28, i32* %8, align 4
  %29 = bitcast %struct.in_addr* %10 to i8*
  store i8* %29, i8** %9, align 8
  br label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @memcpy(i32* %32, i8* %33, i32 8)
  %35 = load i32, i32* @AF_INET6, align 4
  store i32 %35, i32* %8, align 4
  %36 = bitcast %struct.in6_addr* %11 to i8*
  store i8* %36, i8** %9, align 8
  br label %38

37:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %49

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @SNMP_INADDRS_STRSZ, align 4
  %43 = call i32* @inet_ntop(i32 %39, i8* %40, i8* %41, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %47, %45, %37, %21
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32* @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
