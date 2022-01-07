; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.ng_mesg = type { i32 }

@LINK_STATE_UP = common dso_local global i32 0, align 4
@NGM_LINK_IS_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@NGM_LINK_IS_DOWN = common dso_local global i32 0, align 4
@NGM_FLOW_COOKIE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @ng_ether_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_ether_link_state(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = call i32 @IFP2NG(%struct.ifnet* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LINK_STATE_UP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @NGM_LINK_IS_UP, align 4
  store i32 %18, i32* %8, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LINK_STATE_DOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @NGM_LINK_IS_DOWN, align 4
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %34 = load i32, i32* @NGM_FLOW_COOKIE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %33, i32 %34, i32 %35, i32 0, i32 %36)
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %39 = icmp ne %struct.ng_mesg* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @NG_SEND_MSG_HOOK(i32 %41, i32 %42, %struct.ng_mesg* %43, i32* %46, i32 0)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %56 = load i32, i32* @NGM_FLOW_COOKIE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %55, i32 %56, i32 %57, i32 0, i32 %58)
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %61 = icmp ne %struct.ng_mesg* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @NG_SEND_MSG_HOOK(i32 %63, i32 %64, %struct.ng_mesg* %65, i32* %68, i32 0)
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %25, %70, %49
  ret void
}

declare dso_local i32 @IFP2NG(%struct.ifnet*) #1

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
