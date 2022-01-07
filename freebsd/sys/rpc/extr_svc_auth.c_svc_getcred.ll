; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth.c_svc_getcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth.c_svc_getcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32*, i32*, i32, i32, i32, i32, i32 }
%struct.xucred = type { i32, i32, i32 }

@prison0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_getcred(%struct.svc_req* %0, %struct.ucred** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.ucred**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xucred*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store %struct.ucred** %1, %struct.ucred*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ucred* null, %struct.ucred** %8, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %68 [
    i32 129, label %22
    i32 128, label %63
  ]

22:                                               ; preds = %20
  %23 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %24 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.xucred*
  store %struct.xucred* %26, %struct.xucred** %10, align 8
  %27 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %27, %struct.ucred** %8, align 8
  %28 = load %struct.xucred*, %struct.xucred** %10, align 8
  %29 = getelementptr inbounds %struct.xucred, %struct.xucred* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ucred*, %struct.ucred** %8, align 8
  %32 = getelementptr inbounds %struct.ucred, %struct.ucred* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ucred*, %struct.ucred** %8, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 5
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ucred*, %struct.ucred** %8, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 6
  store i32 %30, i32* %36, align 8
  %37 = load %struct.ucred*, %struct.ucred** %8, align 8
  %38 = load %struct.xucred*, %struct.xucred** %10, align 8
  %39 = getelementptr inbounds %struct.xucred, %struct.xucred* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xucred*, %struct.xucred** %10, align 8
  %42 = getelementptr inbounds %struct.xucred, %struct.xucred* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @crsetgroups(%struct.ucred* %37, i32 %40, i32 %43)
  %45 = load %struct.ucred*, %struct.ucred** %8, align 8
  %46 = getelementptr inbounds %struct.ucred, %struct.ucred* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ucred*, %struct.ucred** %8, align 8
  %51 = getelementptr inbounds %struct.ucred, %struct.ucred* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ucred*, %struct.ucred** %8, align 8
  %53 = getelementptr inbounds %struct.ucred, %struct.ucred* %52, i32 0, i32 3
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ucred*, %struct.ucred** %8, align 8
  %55 = getelementptr inbounds %struct.ucred, %struct.ucred* %54, i32 0, i32 0
  store i32* @prison0, i32** %55, align 8
  %56 = load %struct.ucred*, %struct.ucred** %8, align 8
  %57 = getelementptr inbounds %struct.ucred, %struct.ucred* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @prison_hold(i32* %58)
  %60 = load %struct.ucred*, %struct.ucred** %8, align 8
  %61 = load %struct.ucred**, %struct.ucred*** %6, align 8
  store %struct.ucred* %60, %struct.ucred** %61, align 8
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %20
  %64 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %65 = load %struct.ucred**, %struct.ucred*** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @_svcauth_rpcsec_gss_getcred(%struct.svc_req* %64, %struct.ucred** %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %20
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %63, %22
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @crsetgroups(%struct.ucred*, i32, i32) #1

declare dso_local i32 @prison_hold(i32*) #1

declare dso_local i32 @_svcauth_rpcsec_gss_getcred(%struct.svc_req*, %struct.ucred**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
