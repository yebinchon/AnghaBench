; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.hostent = type { i64 }

@getaddr.reply = internal global %struct.sockaddr_in zeroinitializer, align 8
@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockaddr_in* (i8*)* @getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockaddr_in* @getaddr(i8* %0) #0 {
  %2 = alloca %struct.sockaddr_in*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 @bzero(%struct.sockaddr_in* @getaddr.reply, i32 24)
  store i32 24, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @getaddr.reply, i32 0, i32 0), align 8
  %6 = load i32, i32* @AF_INET, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @getaddr.reply, i32 0, i32 2), align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @inet_addr(i8* %7)
  store i64 %8, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @getaddr.reply, i32 0, i32 1, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @getaddr.reply, i32 0, i32 1, i32 0), align 8
  %10 = load i64, i64* @INADDR_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.hostent* @gethostbyname(i8* %13)
  store %struct.hostent* %14, %struct.hostent** %4, align 8
  %15 = icmp ne %struct.hostent* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @h_errno, align 4
  %19 = call i32 @hstrerror(i32 %18)
  %20 = call i32 @xo_warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %2, align 8
  br label %28

21:                                               ; preds = %12
  %22 = load %struct.hostent*, %struct.hostent** %4, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @bcopy(i8* %25, i8* bitcast (%struct.TYPE_2__* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @getaddr.reply, i32 0, i32 1) to i8*), i32 8)
  br label %27

27:                                               ; preds = %21, %1
  store %struct.sockaddr_in* @getaddr.reply, %struct.sockaddr_in** %2, align 8
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  ret %struct.sockaddr_in* %29
}

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @xo_warnx(i8*, i8*, i32) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
