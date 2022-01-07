; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_files.c_addr_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_files.c_addr_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.sockaddr_un = type { i8* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_storage*, i8*, i32)* @addr_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_to_string(%struct.sockaddr_storage* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_un*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %93 [
    i32 128, label %19
    i32 130, label %39
    i32 129, label %72
  ]

19:                                               ; preds = %3
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %21 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %21, %struct.sockaddr_un** %11, align 8
  %22 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %38

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @strlcpy(i8* %32, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %97

39:                                               ; preds = %3
  %40 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %41 = bitcast %struct.sockaddr_storage* %40 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %41, %struct.sockaddr_in** %10, align 8
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @INADDR_ANY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %71

56:                                               ; preds = %39
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 1
  %59 = trunc i64 %13 to i32
  %60 = call i32* @inet_ntop(i32 130, %struct.TYPE_2__* %58, i8* %15, i32 %59)
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %68)
  br label %70

70:                                               ; preds = %62, %56
  br label %71

71:                                               ; preds = %70, %48
  br label %97

72:                                               ; preds = %3
  %73 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %74 = bitcast %struct.sockaddr_storage* %73 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %74, %struct.sockaddr_in6** %9, align 8
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 1
  %77 = trunc i64 %13 to i32
  %78 = call i32* @inet_ntop(i32 129, %struct.TYPE_2__* %76, i8* %15, i32 %77)
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ntohs(i32 %85)
  %87 = call i32 @snprintf(i8* %81, i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %86)
  br label %92

88:                                               ; preds = %72
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @strlcpy(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %80
  br label %97

93:                                               ; preds = %3
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @strlcpy(i8* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %92, %71, %38
  %98 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32* @inet_ntop(i32, %struct.TYPE_2__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
