; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_add_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_add_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.mxge_add_maddr_ctx = type { i64, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@MXGEFW_JOIN_MULTICAST_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @mxge_add_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_add_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxge_add_maddr_ctx*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mxge_add_maddr_ctx*
  store %struct.mxge_add_maddr_ctx* %11, %struct.mxge_add_maddr_ctx** %8, align 8
  %12 = load %struct.mxge_add_maddr_ctx*, %struct.mxge_add_maddr_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %19 = call i64 @LLADDR(%struct.sockaddr_dl* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %21 = call i32 @bcopy(i64 %19, i8** %20, i32 4)
  %22 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %23 = call i64 @LLADDR(%struct.sockaddr_dl* %22)
  %24 = add nsw i64 %23, 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %26 = call i32 @bcopy(i64 %24, i8** %25, i32 2)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @htonl(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @htonl(i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load %struct.mxge_add_maddr_ctx*, %struct.mxge_add_maddr_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MXGEFW_JOIN_MULTICAST_GROUP, align 4
  %39 = call i64 @mxge_send_cmd(i32 %37, i32 %38, %struct.TYPE_3__* %9)
  %40 = load %struct.mxge_add_maddr_ctx*, %struct.mxge_add_maddr_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.mxge_add_maddr_ctx, %struct.mxge_add_maddr_ctx* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %17, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @bcopy(i64, i8**, i32) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i8* @htonl(i8*) #1

declare dso_local i64 @mxge_send_cmd(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
