; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_server.c_ypu_delete_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypupdated/extr_ypupdated_server.c_ypu_delete_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypdelete_args = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.svc_req = type { i64, i32 }
%struct.authdes_cred = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@ypu_delete_1_svc.res = internal global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/etc/publickey\00", align 1
@YPOP_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ypu_delete_1_svc(%struct.ypdelete_args* %0, %struct.svc_req* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ypdelete_args*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.authdes_cred*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ypdelete_args* %0, %struct.ypdelete_args** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  store i32 0, i32* @ypu_delete_1_svc.res, align 4
  %9 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %10 = call i32 @yp_checkauth(%struct.svc_req* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @AUTH_OK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %16 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @svcerr_auth(i32 %17, i32 %18)
  store i32* @ypu_delete_1_svc.res, i32** %3, align 8
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.authdes_cred*
  store %struct.authdes_cred* %24, %struct.authdes_cred** %6, align 8
  %25 = load %struct.authdes_cred*, %struct.authdes_cred** %6, align 8
  %26 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @YPOP_DELETE, align 4
  %31 = load %struct.ypdelete_args*, %struct.ypdelete_args** %4, align 8
  %32 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ypdelete_args*, %struct.ypdelete_args** %4, align 8
  %36 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @localupdate(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %38, i32 0, i32* null)
  store i32 %39, i32* @ypu_delete_1_svc.res, align 4
  %40 = load i32, i32* @ypu_delete_1_svc.res, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i32* @ypu_delete_1_svc.res, i32** %3, align 8
  br label %58

43:                                               ; preds = %20
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.ypdelete_args*, %struct.ypdelete_args** %4, align 8
  %46 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @YPOP_DELETE, align 4
  %49 = load %struct.ypdelete_args*, %struct.ypdelete_args** %4, align 8
  %50 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ypdelete_args*, %struct.ypdelete_args** %4, align 8
  %54 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ypmap_update(i8* %44, i32 %47, i32 %48, i32 %52, i32 %56, i32 0, i32* null)
  store i32 %57, i32* @ypu_delete_1_svc.res, align 4
  store i32* @ypu_delete_1_svc.res, i32** %3, align 8
  br label %58

58:                                               ; preds = %43, %42, %14
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @yp_checkauth(%struct.svc_req*) #1

declare dso_local i32 @svcerr_auth(i32, i32) #1

declare dso_local i32 @localupdate(i8*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ypmap_update(i8*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
