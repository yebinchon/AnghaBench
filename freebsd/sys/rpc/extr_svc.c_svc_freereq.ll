; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_freereq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_freereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, %struct.svc_req*, i64, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, %struct.svc_req*)* }

@M_SONAME = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_freereq(%struct.svc_req* %0) #0 {
  %2 = alloca %struct.svc_req*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %2, align 8
  %5 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %6 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %5, i32 0, i32 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_5__*, %struct.svc_req*)*, i32 (%struct.TYPE_5__*, %struct.svc_req*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_5__*, %struct.svc_req*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_5__*, %struct.svc_req*)*, i32 (%struct.TYPE_5__*, %struct.svc_req*)** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %24 = call i32 %21(%struct.TYPE_5__* %22, %struct.svc_req* %23)
  br label %25

25:                                               ; preds = %18, %10
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %28 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %34 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %33, i32 0, i32 3
  %35 = call i32 @SVCAUTH_RELEASE(%struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %38 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %43 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @SVC_RELEASE(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %48 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %47, i32 0, i32 1
  %49 = load %struct.svc_req*, %struct.svc_req** %48, align 8
  %50 = icmp ne %struct.svc_req* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %53 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %52, i32 0, i32 1
  %54 = load %struct.svc_req*, %struct.svc_req** %53, align 8
  %55 = load i32, i32* @M_SONAME, align 4
  %56 = call i32 @free(%struct.svc_req* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %59 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %64 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @m_freem(i64 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.svc_req*, %struct.svc_req** %2, align 8
  %69 = load i32, i32* @M_RPC, align 4
  %70 = call i32 @free(%struct.svc_req* %68, i32 %69)
  ret void
}

declare dso_local i32 @SVCAUTH_RELEASE(%struct.TYPE_7__*) #1

declare dso_local i32 @SVC_RELEASE(i64) #1

declare dso_local i32 @free(%struct.svc_req*, i32) #1

declare dso_local i32 @m_freem(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
