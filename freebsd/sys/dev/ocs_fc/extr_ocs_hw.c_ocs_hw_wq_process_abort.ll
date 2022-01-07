; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_wq_process_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_wq_process_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i8*, i64, i32, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@SLI4_FC_WCQE_STATUS_LOCAL_REJECT = common dso_local global i32 0, align 4
@SLI4_FC_LOCAL_REJECT_NO_XRI = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @ocs_hw_wq_process_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_hw_wq_process_abort(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @sli_fc_ext_status(i32* %22, i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SLI4_FC_WCQE_STATUS_LOCAL_REJECT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @SLI4_FC_LOCAL_REJECT_NO_XRI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  %35 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 9
  %40 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %39, align 8
  store i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* %40, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 10
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 9
  store i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* null, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %12, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 %57(%struct.TYPE_9__* %58, i32 %61, i64 %62, i32 %63, i64 %64, i8* %65)
  br label %67

67:                                               ; preds = %37, %32, %28, %3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 5
  %75 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %74, align 8
  store i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* %75, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %14, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)* null, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %80, align 8
  %81 = load i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)*, i32 (%struct.TYPE_9__*, i32, i64, i32, i64, i8*)** %14, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 %81(%struct.TYPE_9__* %82, i32 %85, i64 %86, i32 %87, i64 %88, i8* %89)
  br label %91

91:                                               ; preds = %72, %67
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = call i32 @ocs_lock(i32* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @ocs_unlock(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UINT32_MAX, align 8
  %104 = icmp ne i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @ocs_hw_assert(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32* @ocs_hw_reqtag_get_instance(%struct.TYPE_8__* %107, i64 %110)
  store i32* %111, i32** %11, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @ocs_hw_reqtag_free(%struct.TYPE_8__* %112, i32* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = call i32 @ocs_hw_io_free(%struct.TYPE_8__* %115, %struct.TYPE_9__* %116)
  ret void
}

declare dso_local i64 @sli_fc_ext_status(i32*, i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32* @ocs_hw_reqtag_get_instance(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ocs_hw_reqtag_free(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ocs_hw_io_free(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
