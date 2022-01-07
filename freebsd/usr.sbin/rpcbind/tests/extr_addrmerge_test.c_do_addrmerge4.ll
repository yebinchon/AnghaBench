; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_do_addrmerge4.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_do_addrmerge4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i32, i32, i8* }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"192.0.2.1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"192.0.2.1.3.46\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"0.0.0.0.3.46\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @do_addrmerge4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_addrmerge4(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netbuf, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %3, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %3, i32 0, i32 1
  store i32 16, i32* %9, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 16, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 1234, i32* %13, align 4
  %14 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = bitcast %struct.sockaddr_in* %4 to i8*
  %18 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %3, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %6, align 8
  br label %24

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %24

24:                                               ; preds = %23, %21
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @addrmerge(%struct.netbuf* %3, i8* %25, i8* %26, i8* %27)
  ret i8* %28
}

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i8* @addrmerge(%struct.netbuf*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
