; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }
%struct.ng_mesg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_iface_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %9, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %20 = call i32 @NGI_GET_MSG(i32 %18, %struct.ng_mesg* %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %125 [
    i32 133, label %25
    i32 135, label %110
  ]

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %107 [
    i32 131, label %30
    i32 130, label %49
    i32 134, label %49
    i32 132, label %88
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %31, %struct.ng_mesg* %32, i32 %33, i32 %34)
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %37 = icmp eq %struct.ng_mesg* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %11, align 4
  br label %109

40:                                               ; preds = %30
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFNAMSIZ, align 4
  %48 = call i32 @strlcpy(i64 %43, i32 %46, i32 %47)
  br label %109

49:                                               ; preds = %25, %25
  %50 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @EBUSY, align 4
  store i32 %57, i32* %4, align 4
  br label %136

58:                                               ; preds = %49
  %59 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %60 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %87 [
    i32 130, label %63
    i32 134, label %75
  ]

63:                                               ; preds = %58
  %64 = load i32, i32* @IFF_POINTOPOINT, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @IFF_BROADCAST, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %87

75:                                               ; preds = %58
  %76 = load i32, i32* @IFF_POINTOPOINT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @IFF_BROADCAST, align 4
  %83 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %58, %75, %63
  br label %109

88:                                               ; preds = %25
  %89 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %91 = load i32, i32* @M_NOWAIT, align 4
  %92 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %89, %struct.ng_mesg* %90, i32 4, i32 %91)
  %93 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %94 = icmp eq %struct.ng_mesg* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %11, align 4
  br label %109

97:                                               ; preds = %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.ifnet*, %struct.ifnet** %99, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %104 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  store i32 %102, i32* %106, align 4
  br label %109

107:                                              ; preds = %25
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %97, %95, %87, %40, %38
  br label %127

110:                                              ; preds = %3
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %112 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %123 [
    i32 128, label %115
    i32 129, label %119
  ]

115:                                              ; preds = %110
  %116 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %117 = load i32, i32* @LINK_STATE_UP, align 4
  %118 = call i32 @if_link_state_change(%struct.ifnet* %116, i32 %117)
  br label %124

119:                                              ; preds = %110
  %120 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %121 = load i32, i32* @LINK_STATE_DOWN, align 4
  %122 = call i32 @if_link_state_change(%struct.ifnet* %120, i32 %121)
  br label %124

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %119, %115
  br label %127

125:                                              ; preds = %3
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %125, %124, %109
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %132 = call i32 @NG_RESPOND_MSG(i32 %128, i32 %129, i32 %130, %struct.ng_mesg* %131)
  %133 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %134 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %133)
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %127, %56
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlcpy(i64, i32, i32) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
