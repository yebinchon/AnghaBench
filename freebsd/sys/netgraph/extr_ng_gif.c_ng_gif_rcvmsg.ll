; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_gif.c_ng_gif_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_gif.c_ng_gif_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_gif_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_gif_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %15 = call i32 @NGI_GET_MSG(i32 %13, %struct.ng_mesg* %14)
  %16 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %17 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %68 [
    i32 130, label %20
  ]

20:                                               ; preds = %3
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %65 [
    i32 128, label %25
    i32 129, label %46
  ]

25:                                               ; preds = %20
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %26, %struct.ng_mesg* %27, i32 %28, i32 %29)
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = icmp eq %struct.ng_mesg* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %9, align 4
  br label %67

35:                                               ; preds = %25
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFNAMSIZ, align 4
  %45 = call i32 @strlcpy(i64 %38, i32 %43, i32 %44)
  br label %67

46:                                               ; preds = %20
  %47 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %48 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %47, %struct.ng_mesg* %48, i32 4, i32 %49)
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %52 = icmp eq %struct.ng_mesg* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %9, align 4
  br label %67

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %62 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32 %60, i32* %64, align 4
  br label %67

65:                                               ; preds = %20
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %55, %53, %35, %33
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %75 = call i32 @NG_RESPOND_MSG(i32 %71, i32 %72, i32 %73, %struct.ng_mesg* %74)
  %76 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %77 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %76)
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlcpy(i64, i32, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
