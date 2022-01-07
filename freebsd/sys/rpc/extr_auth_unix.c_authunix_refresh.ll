; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.audata = type { %struct.TYPE_11__, i32 }
%struct.xucred = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @authunix_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authunix_refresh(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.audata*, align 8
  %7 = alloca %struct.xucred, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_13__* %12)
  store %struct.audata* %13, %struct.audata** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.audata*, %struct.audata** %6, align 8
  %19 = getelementptr inbounds %struct.audata, %struct.audata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.audata*, %struct.audata** %6, align 8
  %27 = getelementptr inbounds %struct.audata, %struct.audata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.audata*, %struct.audata** %6, align 8
  %31 = getelementptr inbounds %struct.audata, %struct.audata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.audata*, %struct.audata** %6, align 8
  %35 = getelementptr inbounds %struct.audata, %struct.audata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XDR_DECODE, align 4
  %39 = call i32 @xdrmem_create(%struct.TYPE_12__* %10, i64 %33, i32 %37, i32 %38)
  %40 = call i32 @xdr_authunix_parms(%struct.TYPE_12__* %10, i32* %8, %struct.xucred* %7)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %25
  br label %64

44:                                               ; preds = %25
  %45 = call i32 @getmicrotime(%struct.timeval* %9)
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @XDR_ENCODE, align 4
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = call i32 @XDR_SETPOS(%struct.TYPE_12__* %10, i32 0)
  %51 = call i32 @xdr_authunix_parms(%struct.TYPE_12__* %10, i32* %8, %struct.xucred* %7)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %64

55:                                               ; preds = %44
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.audata*, %struct.audata** %6, align 8
  %59 = getelementptr inbounds %struct.audata, %struct.audata* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_11__* %57 to i8*
  %61 = bitcast %struct.TYPE_11__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @marshal_new_auth(%struct.TYPE_13__* %62)
  br label %64

64:                                               ; preds = %55, %54, %43
  %65 = call i32 @XDR_DESTROY(%struct.TYPE_12__* %10)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_13__*) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @xdr_authunix_parms(%struct.TYPE_12__*, i32*, %struct.xucred*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @XDR_SETPOS(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @marshal_new_auth(%struct.TYPE_13__*) #1

declare dso_local i32 @XDR_DESTROY(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
