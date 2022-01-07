; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env = type { %struct.yp_data* }
%struct.yp_data = type { i32*, i32*, i32 }

@env = common dso_local global %struct.env* null, align 8
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot create udp service\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot create tcp service\00", align 1
@yp_dispatch = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to register (YPPROG, YPVERS, udp)\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to register (YPPROG, YPVERS, tcp)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_init(%struct.env* %0) #0 {
  %2 = alloca %struct.env*, align 8
  %3 = alloca %struct.yp_data*, align 8
  store %struct.env* %0, %struct.env** %2, align 8
  %4 = call %struct.yp_data* @calloc(i32 1, i32 24)
  store %struct.yp_data* %4, %struct.yp_data** %3, align 8
  %5 = icmp eq %struct.yp_data* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @fatal(i8* null)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %10 = getelementptr inbounds %struct.yp_data, %struct.yp_data* %9, i32 0, i32 2
  %11 = call i32 @TAILQ_INIT(i32* %10)
  %12 = load %struct.env*, %struct.env** %2, align 8
  store %struct.env* %12, %struct.env** @env, align 8
  %13 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %14 = load %struct.env*, %struct.env** @env, align 8
  %15 = getelementptr inbounds %struct.env, %struct.env* %14, i32 0, i32 0
  store %struct.yp_data* %13, %struct.yp_data** %15, align 8
  %16 = load i32, i32* @YPPROG, align 4
  %17 = load i32, i32* @YPVERS, align 4
  %18 = call i32 @pmap_unset(i32 %16, i32 %17)
  %19 = load i32, i32* @RPC_ANYSOCK, align 4
  %20 = call i32* @svcudp_create(i32 %19)
  %21 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %22 = getelementptr inbounds %struct.yp_data, %struct.yp_data* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* @RPC_ANYSOCK, align 4
  %28 = call i32* @svctcp_create(i32 %27, i32 0, i32 0)
  %29 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %30 = getelementptr inbounds %struct.yp_data, %struct.yp_data* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %36 = getelementptr inbounds %struct.yp_data, %struct.yp_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @YPPROG, align 4
  %39 = load i32, i32* @YPVERS, align 4
  %40 = load i32, i32* @yp_dispatch, align 4
  %41 = load i32, i32* @IPPROTO_UDP, align 4
  %42 = call i32 @svc_register(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %34
  %47 = load %struct.yp_data*, %struct.yp_data** %3, align 8
  %48 = getelementptr inbounds %struct.yp_data, %struct.yp_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @YPPROG, align 4
  %51 = load i32, i32* @YPVERS, align 4
  %52 = load i32, i32* @yp_dispatch, align 4
  %53 = load i32, i32* @IPPROTO_TCP, align 4
  %54 = call i32 @svc_register(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %46
  ret void
}

declare dso_local %struct.yp_data* @calloc(i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pmap_unset(i32, i32) #1

declare dso_local i32* @svcudp_create(i32) #1

declare dso_local i32* @svctcp_create(i32, i32, i32) #1

declare dso_local i32 @svc_register(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
