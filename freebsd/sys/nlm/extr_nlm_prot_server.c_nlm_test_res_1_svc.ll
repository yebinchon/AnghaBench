; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_res_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_res_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@nlm_denied = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_test_res_1_svc(%struct.TYPE_13__* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.svc_req* %2, %struct.svc_req** %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @nlm_denied, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @nlm_convert_to_nlm4_holder(i32* %21, i32* %25)
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %30 = call i32 @nlm4_test_res_4_svc(%struct.TYPE_14__* %7, i8* %28, %struct.svc_req* %29)
  ret i32 %30
}

declare dso_local i32 @nlm_convert_to_nlm4_holder(i32*, i32*) #1

declare dso_local i32 @nlm4_test_res_4_svc(%struct.TYPE_14__*, i8*, %struct.svc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
