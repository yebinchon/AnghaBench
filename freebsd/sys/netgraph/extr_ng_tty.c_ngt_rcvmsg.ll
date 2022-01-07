; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tty.c_ngt_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tty.c_ngt_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.ng_mesg = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ngt_hook = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ngt_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngt_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_6__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %128 [
    i32 131, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %124 [
    i32 128, label %28
    i32 129, label %77
    i32 130, label %106
  ]

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %28
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.proc* @pfind(i32 %41)
  store %struct.proc* %42, %struct.proc** %8, align 8
  %43 = load %struct.proc*, %struct.proc** %8, align 8
  %44 = icmp eq %struct.proc* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %35
  %46 = load %struct.proc*, %struct.proc** %8, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @P_WEXIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %35
  %53 = load i32, i32* @ESRCH, align 4
  store i32 %53, i32* %4, align 4
  br label %141

54:                                               ; preds = %45
  %55 = load %struct.proc*, %struct.proc** %8, align 8
  %56 = call i32 @_PHOLD(%struct.proc* %55)
  %57 = load %struct.proc*, %struct.proc** %8, align 8
  %58 = call i32 @PROC_UNLOCK(%struct.proc* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.proc*, %struct.proc** %8, align 8
  %62 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %63 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = call i32 @ttyhook_register(i32** %60, %struct.proc* %61, i32 %67, i32* @ngt_hook, %struct.TYPE_6__* %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.proc*, %struct.proc** %8, align 8
  %71 = call i32 @PRELE(%struct.proc* %70)
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %141

76:                                               ; preds = %54
  br label %127

77:                                               ; preds = %23
  %78 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %79 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = call i32 @ERROUT(i32 %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %89 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @ERROUT(i32 %100)
  br label %102

102:                                              ; preds = %99, %96, %87
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %127

106:                                              ; preds = %23
  %107 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %108 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %109 = load i32, i32* @M_NOWAIT, align 4
  %110 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %107, %struct.ng_mesg* %108, i32 4, i32 %109)
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %112 = icmp ne %struct.ng_mesg* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = call i32 @ERROUT(i32 %114)
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %121 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  store i32 %119, i32* %123, align 4
  br label %127

124:                                              ; preds = %23
  %125 = load i32, i32* @EINVAL, align 4
  %126 = call i32 @ERROUT(i32 %125)
  br label %127

127:                                              ; preds = %124, %116, %102, %76
  br label %131

128:                                              ; preds = %3
  %129 = load i32, i32* @EINVAL, align 4
  %130 = call i32 @ERROUT(i32 %129)
  br label %131

131:                                              ; preds = %128, %127
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %137 = call i32 @NG_RESPOND_MSG(i32 %133, i32 %134, i32 %135, %struct.ng_mesg* %136)
  %138 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %139 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %132, %74, %52, %33
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_6__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @ttyhook_register(i32**, %struct.proc*, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
