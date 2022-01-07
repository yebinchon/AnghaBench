; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tee.c_ng_tee_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ng_tee_stats = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_tee_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tee_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca %struct.ng_tee_stats*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_17__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %19 = call i32 @NGI_GET_MSG(i32 %17, %struct.ng_mesg* %18)
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %137 [
    i32 130, label %24
    i32 132, label %100
  ]

24:                                               ; preds = %3
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %97 [
    i32 128, label %29
    i32 131, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %24, %24, %24
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %31 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %36, %struct.ng_mesg* %37, i32 16, i32 %38)
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %41 = icmp eq %struct.ng_mesg* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %10, align 4
  br label %140

44:                                               ; preds = %35
  %45 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %46 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ng_tee_stats*
  store %struct.ng_tee_stats* %48, %struct.ng_tee_stats** %12, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.ng_tee_stats*, %struct.ng_tee_stats** %12, align 8
  %53 = getelementptr inbounds %struct.ng_tee_stats, %struct.ng_tee_stats* %52, i32 0, i32 3
  %54 = call i32 @bcopy(i32* %51, i32* %53, i32 4)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.ng_tee_stats*, %struct.ng_tee_stats** %12, align 8
  %59 = getelementptr inbounds %struct.ng_tee_stats, %struct.ng_tee_stats* %58, i32 0, i32 2
  %60 = call i32 @bcopy(i32* %57, i32* %59, i32 4)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.ng_tee_stats*, %struct.ng_tee_stats** %12, align 8
  %65 = getelementptr inbounds %struct.ng_tee_stats, %struct.ng_tee_stats* %64, i32 0, i32 1
  %66 = call i32 @bcopy(i32* %63, i32* %65, i32 4)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.ng_tee_stats*, %struct.ng_tee_stats** %12, align 8
  %71 = getelementptr inbounds %struct.ng_tee_stats, %struct.ng_tee_stats* %70, i32 0, i32 0
  %72 = call i32 @bcopy(i32* %69, i32* %71, i32 4)
  br label %73

73:                                               ; preds = %44, %29
  %74 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %75 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = call i32 @bzero(i32* %82, i32 4)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = call i32 @bzero(i32* %86, i32 4)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = call i32 @bzero(i32* %90, i32 4)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @bzero(i32* %94, i32 4)
  br label %96

96:                                               ; preds = %79, %73
  br label %99

97:                                               ; preds = %24
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %96
  br label %139

100:                                              ; preds = %3
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %101, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %107, %100
  %115 = load i32, i32* %7, align 4
  %116 = call %struct.TYPE_18__* @NG_HOOK_PRIVATE(i32 %115)
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %13, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %118 = icmp ne %struct.TYPE_18__* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = icmp ne %struct.TYPE_16__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  store %struct.ng_mesg* %125, %struct.ng_mesg** %14, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.ng_mesg*, %struct.ng_mesg** %14, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @NG_FWD_ITEM_HOOK(i32 %126, %struct.ng_mesg* %127, i32 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %149

135:                                              ; preds = %119, %114
  br label %136

136:                                              ; preds = %135, %107
  br label %139

137:                                              ; preds = %3
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %136, %99
  br label %140

140:                                              ; preds = %139, %42
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %145 = call i32 @NG_RESPOND_MSG(i32 %141, i32 %142, i32 %143, %struct.ng_mesg* %144)
  %146 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %147 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %146)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %140, %124
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_17__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, %struct.ng_mesg*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
