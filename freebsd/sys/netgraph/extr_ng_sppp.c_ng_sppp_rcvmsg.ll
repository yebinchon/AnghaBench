; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ng_mesg = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sppp = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_sppp_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sppp_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.sppp*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_6__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sppp* @IFP2SP(i32 %16)
  store %struct.sppp* %17, %struct.sppp** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %20 = call i32 @NGI_GET_MSG(i32 %18, %struct.ng_mesg* %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %53 [
    i32 129, label %25
  ]

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %50 [
    i32 128, label %30
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %31, %struct.ng_mesg* %32, i32 %33, i32 %34)
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %37 = icmp ne %struct.ng_mesg* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %11, align 4
  br label %52

40:                                               ; preds = %30
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sppp*, %struct.sppp** %10, align 8
  %45 = call %struct.TYPE_7__* @SP2IFP(%struct.sppp* %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFNAMSIZ, align 4
  %49 = call i32 @strlcpy(i32 %43, i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %25
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %40, %38
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %60 = call i32 @NG_RESPOND_MSG(i32 %56, i32 %57, i32 %58, %struct.ng_mesg* %59)
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %62 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %61)
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @NG_NODE_PRIVATE(i32) #1

declare dso_local %struct.sppp* @IFP2SP(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @SP2IFP(%struct.sppp*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
