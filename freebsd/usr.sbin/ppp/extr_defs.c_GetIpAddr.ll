; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_defs.c_GetIpAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_defs.c_GetIpAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8* }
%struct.hostent = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-.\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetIpAddr(i8* %0) #0 {
  %2 = alloca %struct.in_addr, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strcasecmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @INADDR_ANY, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  br label %71

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @inet_aton(i8* %13, %struct.in_addr* %2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %35, %16
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isalnum(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  br label %18

38:                                               ; preds = %33, %18
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call %struct.hostent* @gethostbyname(i8* %44)
  store %struct.hostent* %45, %struct.hostent** %5, align 8
  %46 = load %struct.hostent*, %struct.hostent** %5, align 8
  %47 = icmp ne %struct.hostent* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.hostent*, %struct.hostent** %5, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.hostent*, %struct.hostent** %5, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hostent*, %struct.hostent** %5, align 8
  %59 = getelementptr inbounds %struct.hostent, %struct.hostent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(%struct.in_addr* %2, i32 %57, i32 %60)
  br label %65

62:                                               ; preds = %48, %43
  %63 = load i8*, i8** @INADDR_NONE, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %62, %54
  br label %69

66:                                               ; preds = %38
  %67 = load i8*, i8** @INADDR_NONE, align 8
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %12
  br label %71

71:                                               ; preds = %70, %9
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  ret i8* %73
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
