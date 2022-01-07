; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.opaque_auth = type { i64, i32, i32 }
%struct.mbuf = type { i32 }
%struct.audata = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@AUTH_SHORT = common dso_local global i64 0, align 8
@XDR_DECODE = common dso_local global i32 0, align 4
@XDR_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.opaque_auth*, %struct.mbuf**)* @authunix_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authunix_validate(%struct.TYPE_10__* %0, i32 %1, %struct.opaque_auth* %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.opaque_auth*, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.audata*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.opaque_auth* %2, %struct.opaque_auth** %8, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  %12 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %13 = icmp ne %struct.opaque_auth* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %5, align 4
  br label %83

16:                                               ; preds = %4
  %17 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %18 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AUTH_SHORT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_10__* %23)
  store %struct.audata* %24, %struct.audata** %10, align 8
  %25 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %26 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.opaque_auth*, %struct.opaque_auth** %8, align 8
  %29 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XDR_DECODE, align 4
  %32 = call i32 @xdrmem_create(%struct.TYPE_9__* %11, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.audata*, %struct.audata** %10, align 8
  %34 = getelementptr inbounds %struct.audata, %struct.audata* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %22
  %39 = load %struct.audata*, %struct.audata** %10, align 8
  %40 = getelementptr inbounds %struct.audata, %struct.audata* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.audata*, %struct.audata** %10, align 8
  %44 = getelementptr inbounds %struct.audata, %struct.audata* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mem_free(i32* %42, i32 %46)
  %48 = load %struct.audata*, %struct.audata** %10, align 8
  %49 = getelementptr inbounds %struct.audata, %struct.audata* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %38, %22
  %52 = load %struct.audata*, %struct.audata** %10, align 8
  %53 = getelementptr inbounds %struct.audata, %struct.audata* %52, i32 0, i32 1
  %54 = call i64 @xdr_opaque_auth(%struct.TYPE_9__* %11, %struct.TYPE_11__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.audata*, %struct.audata** %10, align 8
  %60 = getelementptr inbounds %struct.audata, %struct.audata* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_11__* %58 to i8*
  %62 = bitcast %struct.TYPE_11__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %78

63:                                               ; preds = %51
  %64 = load i32, i32* @XDR_FREE, align 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.audata*, %struct.audata** %10, align 8
  %67 = getelementptr inbounds %struct.audata, %struct.audata* %66, i32 0, i32 1
  %68 = call i64 @xdr_opaque_auth(%struct.TYPE_9__* %11, %struct.TYPE_11__* %67)
  %69 = load %struct.audata*, %struct.audata** %10, align 8
  %70 = getelementptr inbounds %struct.audata, %struct.audata* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.audata*, %struct.audata** %10, align 8
  %75 = getelementptr inbounds %struct.audata, %struct.audata* %74, i32 0, i32 0
  %76 = bitcast %struct.TYPE_11__* %73 to i8*
  %77 = bitcast %struct.TYPE_11__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  br label %78

78:                                               ; preds = %63, %56
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = call i32 @marshal_new_auth(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %78, %16
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %14
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_10__*) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @mem_free(i32*, i32) #1

declare dso_local i64 @xdr_opaque_auth(%struct.TYPE_9__*, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @marshal_new_auth(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
