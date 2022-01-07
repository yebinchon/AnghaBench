; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_logit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_logit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i32 }
%struct.rpcent = type { i8* }

@NI_MAXHOST = common dso_local global i32 0, align 4
@logit.procmap = internal global [13 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"getport/addr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"callit\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"gettime\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"uaddr2taddr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"taddr2uaddr\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"getversaddr\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"getaddrlist\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"getstat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"logit\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@AF_LOCAL = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"connect from %s to %s(%s)%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logit(i32 %0, %struct.sockaddr* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.rpcent*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = call i64 (...) @fork()
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %5
  %25 = call i32 @setproctitle(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %44

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = call %struct.rpcent* @getrpcbynumber(i32 %31)
  store %struct.rpcent* %32, %struct.rpcent** %17, align 8
  %33 = icmp ne %struct.rpcent* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rpcent*, %struct.rpcent** %17, align 8
  %36 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %13, align 8
  br label %43

38:                                               ; preds = %29
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  store i8* %39, i8** %13, align 8
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @snprintf(i8* %39, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 13
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snprintf(i8* %49, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8* %52, i8** %11, align 8
  br label %58

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [13 x i8*], [13 x i8*]* @logit.procmap, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %11, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_LOCAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %74

66:                                               ; preds = %58
  %67 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = trunc i64 %19 to i32
  %72 = load i32, i32* @NI_NUMERICHOST, align 4
  %73 = call i32 @getnameinfo(%struct.sockaddr* %67, i32 %70, i8* %21, i32 %71, i32* null, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %66, %64
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @syslog(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %21, i8* %76, i8* %77, i8* %78)
  %80 = call i32 @_exit(i32 0) #4
  unreachable

81:                                               ; preds = %5
  %82 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fork(...) #2

declare dso_local i32 @setproctitle(i8*) #2

declare dso_local %struct.rpcent* @getrpcbynumber(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
