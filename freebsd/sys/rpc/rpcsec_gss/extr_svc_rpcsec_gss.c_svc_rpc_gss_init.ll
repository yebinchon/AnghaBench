; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svc_rpc_gss_client_hash_size = common dso_local global i32 0, align 4
@svc_rpc_gss_client_hash = common dso_local global i32* null, align 8
@svc_rpc_gss_clients = common dso_local global i32 0, align 4
@RPCSEC_GSS = common dso_local global i32 0, align 4
@svc_rpc_gss = common dso_local global i32 0, align 4
@rpc_gss_svc_getcred = common dso_local global i32 0, align 4
@svc_rpc_gss_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gsslock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @svc_rpc_gss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @svc_rpc_gss_client_hash_size, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 4, %5
  %7 = trunc i64 %6 to i32
  %8 = call i32* @mem_alloc(i32 %7)
  store i32* %8, i32** @svc_rpc_gss_client_hash, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @svc_rpc_gss_client_hash_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** @svc_rpc_gss_client_hash, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @TAILQ_INIT(i32* %17)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %9

22:                                               ; preds = %9
  %23 = call i32 @TAILQ_INIT(i32* @svc_rpc_gss_clients)
  %24 = load i32, i32* @RPCSEC_GSS, align 4
  %25 = load i32, i32* @svc_rpc_gss, align 4
  %26 = load i32, i32* @rpc_gss_svc_getcred, align 4
  %27 = call i32 @svc_auth_reg(i32 %24, i32 %25, i32 %26)
  %28 = call i32 @sx_init(i32* @svc_rpc_gss_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @svc_auth_reg(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
