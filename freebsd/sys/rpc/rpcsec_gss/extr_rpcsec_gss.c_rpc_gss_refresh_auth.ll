; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_refresh_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_refresh_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64 }

@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_gss_refresh_auth(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rpc_gss_data*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %5)
  store %struct.rpc_gss_data* %6, %struct.rpc_gss_data** %3, align 8
  %7 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @memset(i32* %4, i32 0, i32 4)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @rpc_gss_init(i32* %14, i32* %4)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rpc_gss_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
