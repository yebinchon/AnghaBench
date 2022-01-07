; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_request.c_free_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_request.c_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.req_user*, %struct.req_user*, %struct.req_user*, %struct.req_user* }
%struct.req_user = type { i32 }
%struct.req_jobid = type opaque

@ru_link = common dso_local global i32 0, align 4
@rj_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.req_user*, align 8
  %4 = alloca %struct.req_jobid*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 5
  %7 = load %struct.req_user*, %struct.req_user** %6, align 8
  %8 = icmp ne %struct.req_user* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 5
  %12 = load %struct.req_user*, %struct.req_user** %11, align 8
  %13 = call i32 @free(%struct.req_user* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.request*, %struct.request** %2, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 4
  %17 = load %struct.req_user*, %struct.req_user** %16, align 8
  %18 = icmp ne %struct.req_user* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.request*, %struct.request** %2, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 4
  %22 = load %struct.req_user*, %struct.req_user** %21, align 8
  %23 = call i32 @free(%struct.req_user* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 3
  %27 = load %struct.req_user*, %struct.req_user** %26, align 8
  %28 = icmp ne %struct.req_user* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.request*, %struct.request** %2, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 3
  %32 = load %struct.req_user*, %struct.req_user** %31, align 8
  %33 = call i32 @free(%struct.req_user* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.request*, %struct.request** %2, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 2
  %37 = load %struct.req_user*, %struct.req_user** %36, align 8
  %38 = icmp ne %struct.req_user* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.request*, %struct.request** %2, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 2
  %42 = load %struct.req_user*, %struct.req_user** %41, align 8
  %43 = call i32 @free(%struct.req_user* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %50, %44
  %46 = load %struct.request*, %struct.request** %2, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  %48 = call %struct.req_user* @TAILQ_FIRST(i32* %47)
  store %struct.req_user* %48, %struct.req_user** %3, align 8
  %49 = icmp ne %struct.req_user* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.request*, %struct.request** %2, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 1
  %53 = load %struct.req_user*, %struct.req_user** %3, align 8
  %54 = load i32, i32* @ru_link, align 4
  %55 = call i32 @TAILQ_REMOVE(i32* %52, %struct.req_user* %53, i32 %54)
  %56 = load %struct.req_user*, %struct.req_user** %3, align 8
  %57 = call i32 @free(%struct.req_user* %56)
  br label %45

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %65, %58
  %60 = load %struct.request*, %struct.request** %2, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = call %struct.req_user* @TAILQ_FIRST(i32* %61)
  %63 = bitcast %struct.req_user* %62 to %struct.req_jobid*
  store %struct.req_jobid* %63, %struct.req_jobid** %4, align 8
  %64 = icmp ne %struct.req_jobid* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.request*, %struct.request** %2, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 0
  %68 = load %struct.req_jobid*, %struct.req_jobid** %4, align 8
  %69 = bitcast %struct.req_jobid* %68 to %struct.req_user*
  %70 = load i32, i32* @rj_link, align 4
  %71 = call i32 @TAILQ_REMOVE(i32* %67, %struct.req_user* %69, i32 %70)
  %72 = load %struct.req_jobid*, %struct.req_jobid** %4, align 8
  %73 = bitcast %struct.req_jobid* %72 to %struct.req_user*
  %74 = call i32 @free(%struct.req_user* %73)
  br label %59

75:                                               ; preds = %59
  %76 = load %struct.request*, %struct.request** %2, align 8
  %77 = call i32 @init_request(%struct.request* %76)
  ret void
}

declare dso_local i32 @free(%struct.req_user*) #1

declare dso_local %struct.req_user* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.req_user*, i32) #1

declare dso_local i32 @init_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
