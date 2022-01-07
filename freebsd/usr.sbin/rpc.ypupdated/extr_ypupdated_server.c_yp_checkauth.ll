; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_server.c_yp_checkauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_server.c_yp_checkauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.authdes_cred = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"warning: client-specified window size was too large -- possible spoof attempt\00", align 1
@AUTH_BADCRED = common dso_local global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"warning: client didn't use DES authentication\00", align 1
@AUTH_TOOWEAK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"client used unknown auth flavor\00", align 1
@AUTH_REJECTEDCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_req*)* @yp_checkauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yp_checkauth(%struct.svc_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca %struct.authdes_cred*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  %5 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %6 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %28 [
    i32 130, label %9
    i32 128, label %25
    i32 129, label %25
  ]

9:                                                ; preds = %1
  %10 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %11 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.authdes_cred*
  store %struct.authdes_cred* %13, %struct.authdes_cred** %4, align 8
  %14 = load %struct.authdes_cred*, %struct.authdes_cred** %4, align 8
  %15 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WINDOW, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = call i32 @yp_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %9
  %24 = load i32, i32* @AUTH_OK, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1, %1
  %26 = call i32 @yp_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @AUTH_TOOWEAK, align 4
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = call i32 @yp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25, %23, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @yp_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
