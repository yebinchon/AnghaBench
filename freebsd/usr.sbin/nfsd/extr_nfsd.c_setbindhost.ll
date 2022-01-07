; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_setbindhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_setbindhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@AI_NUMERICHOST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"getaddrinfo %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo**, i8*, i32, i8*)* @setbindhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setbindhost(%struct.addrinfo** %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = bitcast %struct.addrinfo* %6 to { i32, i8* }*
  %13 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %12, i32 0, i32 0
  store i32 %2, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %12, i32 0, i32 1
  store i8* %3, i8** %14, align 8
  store %struct.addrinfo** %0, %struct.addrinfo*** %7, align 8
  store i8* %1, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  store i8* null, i8** %11, align 8
  br label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %62 [
    i32 129, label %30
    i32 128, label %46
  ]

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %33 = call i32 @inet_pton(i32 129, i8* %31, i32* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** @AI_NUMERICHOST, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  br label %45

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %41 = call i32 @inet_pton(i32 128, i8* %39, i32* %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %77

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %35
  br label %63

46:                                               ; preds = %27
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %49 = call i32 @inet_pton(i32 128, i8* %47, i32* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** @AI_NUMERICHOST, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  br label %61

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %57 = call i32 @inet_pton(i32 129, i8* %55, i32* %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %77

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %51
  br label %63

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %61, %45
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  %67 = call i32 @getaddrinfo(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %6, %struct.addrinfo** %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @gai_strerror(i32 %73)
  %75 = call i32 @syslog(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %74)
  store i32 1, i32* %5, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %70, %59, %43
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
