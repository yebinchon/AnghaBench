; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_update_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_update_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i64, i32*, i32 }

@SVC_RPC_GSS_SEQWINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*, i64)* @svc_rpc_gss_update_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_update_seq(%struct.svc_rpc_gss_client* %0, i64 %1) #0 {
  %3 = alloca %struct.svc_rpc_gss_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %11, i32 0, i32 2
  %13 = call i32 @sx_xlock(i32* %12)
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %112

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %54, %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %31 = sdiv i32 %30, 32
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %51, %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %38 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %46 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %56 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 32
  store i32 %60, i32* %5, align 4
  br label %26

61:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %65 = sdiv i32 %64, 32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %69 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 32, %75
  %77 = ashr i32 %74, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %10, align 8
  %79 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %80 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %9, align 8
  %90 = or i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %93 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %67
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %62

102:                                              ; preds = %62
  %103 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %104 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %111 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %133

112:                                              ; preds = %2
  %113 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %114 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %4, align 8
  %117 = sub nsw i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sdiv i32 %119, 32
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = srem i32 %121, 32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 1, %123
  %125 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %126 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %124
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %112, %102
  %134 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %135 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %134, i32 0, i32 2
  %136 = call i32 @sx_xunlock(i32* %135)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
