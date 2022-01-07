; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_process_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_process_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.ipoib_mcast_ctx = type { i32, %struct.ipoib_dev_priv* }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_mcast = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.ib_gid }
%union.ib_gid = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32 }

@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@IPOIB_FLAG_UMCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ignoring multicast entry for mgid %16D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"adding multicast entry for mgid %16D\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to allocate memory for multicast structure\0A\00", align 1
@IPOIB_MCAST_FLAG_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @ipoib_process_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_process_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipoib_mcast_ctx*, align 8
  %9 = alloca %struct.ipoib_dev_priv*, align 8
  %10 = alloca %struct.ipoib_mcast*, align 8
  %11 = alloca %struct.ib_sa_mcmember_rec, align 4
  %12 = alloca %union.ib_gid, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipoib_mcast*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ipoib_mcast_ctx*
  store %struct.ipoib_mcast_ctx* %17, %struct.ipoib_mcast_ctx** %8, align 8
  %18 = load %struct.ipoib_mcast_ctx*, %struct.ipoib_mcast_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.ipoib_mcast_ctx, %struct.ipoib_mcast_ctx* %18, i32 0, i32 1
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %19, align 8
  store %struct.ipoib_dev_priv* %20, %struct.ipoib_dev_priv** %9, align 8
  %21 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %22 = call i32* @LLADDR(%struct.sockaddr_dl* %21)
  store i32* %22, i32** %13, align 8
  %23 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ipoib_mcast_addr_is_valid(i32* %26, i32 %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %128

36:                                               ; preds = %3
  %37 = bitcast %union.ib_gid* %12 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i32 @memcpy(i32 %38, i32* %40, i32 4)
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %43 = call %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.ipoib_dev_priv* %42, %union.ib_gid* %12)
  store %struct.ipoib_mcast* %43, %struct.ipoib_mcast** %10, align 8
  %44 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %45 = icmp ne %struct.ipoib_mcast* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %48 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %49 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %119

52:                                               ; preds = %46, %36
  %53 = load i32, i32* @IPOIB_FLAG_UMCAST, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 4
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %63 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ib_sa_get_mcmember_rec(i32 %61, i32 %64, %union.ib_gid* %12, %struct.ib_sa_mcmember_rec* %11)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %69 = bitcast %union.ib_gid* %12 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %128

72:                                               ; preds = %58, %52
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %74 = bitcast %union.ib_gid* %12 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %78 = call %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.ipoib_dev_priv* %77, i32 0)
  store %struct.ipoib_mcast* %78, %struct.ipoib_mcast** %15, align 8
  %79 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %80 = icmp ne %struct.ipoib_mcast* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %83 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %128

84:                                               ; preds = %72
  %85 = load i32, i32* @IPOIB_MCAST_FLAG_FOUND, align 4
  %86 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %87 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %90 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = bitcast %union.ib_gid* %91 to i8*
  %93 = bitcast %union.ib_gid* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %95 = icmp ne %struct.ipoib_mcast* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %84
  %97 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %98 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %97, i32 0, i32 1
  %99 = load %struct.ipoib_mcast_ctx*, %struct.ipoib_mcast_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.ipoib_mcast_ctx, %struct.ipoib_mcast_ctx* %99, i32 0, i32 0
  %101 = call i32 @list_move_tail(i32* %98, i32* %100)
  %102 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %103 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %102, i32 0, i32 2
  %104 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %105 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %104, i32 0, i32 2
  %106 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %107 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %106, i32 0, i32 1
  %108 = call i32 @rb_replace_node(i32* %103, i32* %105, i32* %107)
  br label %113

109:                                              ; preds = %84
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %111 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %112 = call i32 @__ipoib_mcast_add(%struct.ipoib_dev_priv* %110, %struct.ipoib_mcast* %111)
  br label %113

113:                                              ; preds = %109, %96
  %114 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %15, align 8
  %115 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %114, i32 0, i32 1
  %116 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %117 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %116, i32 0, i32 0
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  br label %119

119:                                              ; preds = %113, %46
  %120 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %121 = icmp ne %struct.ipoib_mcast* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* @IPOIB_MCAST_FLAG_FOUND, align 4
  %124 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %10, align 8
  %125 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %124, i32 0, i32 0
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %122, %119
  store i32 1, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %81, %67, %35
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @ipoib_mcast_addr_is_valid(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.ipoib_dev_priv*, %union.ib_gid*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ib_sa_get_mcmember_rec(i32, i32, %union.ib_gid*, %struct.ib_sa_mcmember_rec*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i8*) #1

declare dso_local %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @rb_replace_node(i32*, i32*, i32*) #1

declare dso_local i32 @__ipoib_mcast_add(%struct.ipoib_dev_priv*, %struct.ipoib_mcast*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
