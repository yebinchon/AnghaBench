; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_run_dnsq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_run_dnsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circleq_dnsentry = type { i64, %struct.circleq_dnsentry*, i32, i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i8*, i32, i32 }
%struct.sockaddr = type { i32 }

@MAXPACKET = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"running dns queue\00", align 1
@resfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"recvfrom failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@pending = common dso_local global i32 0, align 4
@BY_DNS_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"got dns reply from %s\00", align 1
@T_PTR = common dso_local global i64 0, align 8
@qhead = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_run_dnsq() #0 {
  %1 = alloca %struct.circleq_dnsentry*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAXPACKET, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 4, %11
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i64, i64* @debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = trunc i64 %12 to i32
  %21 = call i32 @bzero(i8* %14, i32 %20)
  store i32 4, i32* %5, align 4
  %22 = load i32, i32* @resfd, align 4
  %23 = trunc i64 %12 to i32
  %24 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %25 = call i32 @recvfrom(i32 %22, i8* %14, i32 %23, i32 0, %struct.sockaddr* %24, i32* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 1, i32* %9, align 4
  br label %105

32:                                               ; preds = %19
  %33 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %7, align 8
  %34 = load i32, i32* @pending, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = load i32, i32* @BY_DNS_ID, align 4
  %42 = call %struct.circleq_dnsentry* @yp_find_dnsqent(i32 %40, i32 %41)
  store %struct.circleq_dnsentry* %42, %struct.circleq_dnsentry** %1, align 8
  %43 = icmp eq %struct.circleq_dnsentry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %32
  store i32 1, i32* %9, align 4
  br label %105

45:                                               ; preds = %36
  %46 = load i64, i64* @debug, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @inet_ntoa(i32 %50)
  %52 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %56 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %55, i32 0, i32 1
  %57 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %56, align 8
  %58 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %59 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.hostent* @__dns_getanswer(i8* %14, i32 %54, %struct.circleq_dnsentry* %57, i64 %60)
  store %struct.hostent* %61, %struct.hostent** %8, align 8
  %62 = load %struct.hostent*, %struct.hostent** %8, align 8
  %63 = icmp ne %struct.hostent* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %53
  %65 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %66 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @T_PTR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %72 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.hostent*, %struct.hostent** %8, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %78 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hostent*, %struct.hostent** %8, align 8
  %81 = getelementptr inbounds %struct.hostent, %struct.hostent* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %83 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.hostent*, %struct.hostent** %8, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %70, %64
  br label %88

88:                                               ; preds = %87, %53
  %89 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %90 = load %struct.hostent*, %struct.hostent** %8, align 8
  %91 = call i32 @parse(%struct.hostent* %90)
  %92 = call i32 @yp_send_dns_reply(%struct.circleq_dnsentry* %89, i32 %91)
  %93 = load i32, i32* @pending, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* @pending, align 4
  %95 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %96 = load i32, i32* @links, align 4
  %97 = call i32 @TAILQ_REMOVE(i32* @qhead, %struct.circleq_dnsentry* %95, i32 %96)
  %98 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %99 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %98, i32 0, i32 1
  %100 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %99, align 8
  %101 = call i32 @free(%struct.circleq_dnsentry* %100)
  %102 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %1, align 8
  %103 = call i32 @free(%struct.circleq_dnsentry* %102)
  %104 = call i32 (...) @yp_prune_dnsq()
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %88, %44, %28
  %106 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local %struct.circleq_dnsentry* @yp_find_dnsqent(i32, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @inet_ntoa(i32) #2

declare dso_local %struct.hostent* @__dns_getanswer(i8*, i32, %struct.circleq_dnsentry*, i64) #2

declare dso_local i32 @yp_send_dns_reply(%struct.circleq_dnsentry*, i32) #2

declare dso_local i32 @parse(%struct.hostent*) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.circleq_dnsentry*, i32) #2

declare dso_local i32 @free(%struct.circleq_dnsentry*) #2

declare dso_local i32 @yp_prune_dnsq(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
