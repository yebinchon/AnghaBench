; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c__seterr_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c__seterr_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_msg = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rpc_err = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_seterr_reply(%struct.rpc_msg* %0, %struct.rpc_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_msg*, align 8
  %5 = alloca %struct.rpc_err*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_msg* %0, %struct.rpc_msg** %4, align 8
  store %struct.rpc_err* %1, %struct.rpc_err** %5, align 8
  %7 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %8 = icmp ne %struct.rpc_msg* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %12 = icmp ne %struct.rpc_err* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %42 [
    i32 147, label %19
    i32 146, label %35
  ]

19:                                               ; preds = %2
  %20 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  store i32 133, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %100

28:                                               ; preds = %19
  %29 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %34 = call i32 @accepted(i32 %32, %struct.rpc_err* %33)
  store i32 %34, i32* %6, align 4
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %41 = call i32 @rejected(i32 %39, %struct.rpc_err* %40)
  store i32 %41, i32* %6, align 4
  br label %50

42:                                               ; preds = %2
  store i32 139, i32* %6, align 4
  %43 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %48 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %35, %28
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %53 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %97 [
    i32 128, label %55
    i32 145, label %72
    i32 134, label %79
    i32 139, label %96
    i32 133, label %96
    i32 136, label %96
    i32 138, label %96
    i32 129, label %96
    i32 130, label %96
    i32 132, label %96
    i32 144, label %96
    i32 137, label %96
    i32 135, label %96
    i32 131, label %96
    i32 141, label %96
    i32 140, label %96
    i32 143, label %96
    i32 142, label %96
  ]

55:                                               ; preds = %50
  %56 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %62 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %65 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %70 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %98

72:                                               ; preds = %50
  %73 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %74 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %78 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %98

79:                                               ; preds = %50
  %80 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %81 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %86 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.rpc_msg*, %struct.rpc_msg** %4, align 8
  %89 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %94 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %98

96:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50
  br label %97

97:                                               ; preds = %50, %96
  br label %98

98:                                               ; preds = %97, %79, %72, %55
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @accepted(i32, %struct.rpc_err*) #1

declare dso_local i32 @rejected(i32, %struct.rpc_err*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
