; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pst_request = type { i32, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"pst: timeout mfa=0x%08x cmd=0x%02x\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pst: timeout no mfa possible\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pst_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pst_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pst_request*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pst_request*
  store %struct.pst_request* %5, %struct.pst_request** %3, align 8
  %6 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %7 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %10 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %13)
  %15 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %16 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @mtx_assert(i32* %20, i32 %21)
  %23 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %24 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %29 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @iop_free_mfa(%struct.TYPE_6__* %27, i32 %30)
  %32 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %33 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @iop_get_mfa(%struct.TYPE_6__* %36)
  %38 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %39 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = icmp eq i32 %37, -1
  br i1 %40, label %41, label %56

41:                                               ; preds = %1
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %44 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @EIO, align 4
  %47 = call i32 @biofinish(%struct.TYPE_7__* %45, i32* null, i32 %46)
  %48 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %49 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %83

56:                                               ; preds = %1
  %57 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %58 = call i64 @pst_rw(%struct.pst_request* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %62 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %67 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @iop_free_mfa(%struct.TYPE_6__* %65, i32 %68)
  %70 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %71 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* @EIO, align 4
  %74 = call i32 @biofinish(%struct.TYPE_7__* %72, i32* null, i32 %73)
  %75 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %76 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %41, %60, %56
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @iop_free_mfa(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @iop_get_mfa(%struct.TYPE_6__*) #1

declare dso_local i32 @biofinish(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @pst_rw(%struct.pst_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
