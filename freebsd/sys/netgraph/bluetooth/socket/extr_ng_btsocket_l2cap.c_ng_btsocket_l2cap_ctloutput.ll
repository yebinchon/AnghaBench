; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_node = common dso_local global i32* null, align 8
@SOL_L2CAP = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_CLOSED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_OPEN = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_W4_ENC_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_l2cap_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.TYPE_6__* @so2l2cap_pcb(%struct.socket* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %155

15:                                               ; preds = %2
  %16 = load i32*, i32** @ng_btsocket_l2cap_node, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %155

20:                                               ; preds = %15
  %21 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %22 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOL_L2CAP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %155

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %32 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %148 [
    i32 135, label %34
    i32 134, label %71
  ]

34:                                               ; preds = %27
  %35 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %68 [
    i32 130, label %38
    i32 128, label %43
    i32 131, label %48
    i32 129, label %53
    i32 132, label %58
    i32 133, label %63
  ]

38:                                               ; preds = %34
  %39 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @sooptcopyout(%struct.sockopt* %39, i32* %41, i32 4)
  store i32 %42, i32* %7, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @sooptcopyout(%struct.sockopt* %44, i32* %46, i32 4)
  store i32 %47, i32* %7, align 4
  br label %70

48:                                               ; preds = %34
  %49 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = call i32 @sooptcopyout(%struct.sockopt* %49, i32* %51, i32 4)
  store i32 %52, i32* %7, align 4
  br label %70

53:                                               ; preds = %34
  %54 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = call i32 @sooptcopyout(%struct.sockopt* %54, i32* %56, i32 4)
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %34
  %59 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = call i32 @sooptcopyout(%struct.sockopt* %59, i32* %61, i32 4)
  store i32 %62, i32* %7, align 4
  br label %70

63:                                               ; preds = %34
  %64 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = call i32 @sooptcopyout(%struct.sockopt* %64, i32* %66, i32 4)
  store i32 %67, i32* %7, align 4
  br label %70

68:                                               ; preds = %34
  %69 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %63, %58, %53, %48, %43, %38
  br label %150

71:                                               ; preds = %27
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NG_BTSOCKET_L2CAP_CLOSED, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @EACCES, align 4
  store i32 %78, i32* %7, align 4
  br label %150

79:                                               ; preds = %71
  %80 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %81 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %145 [
    i32 130, label %83
    i32 129, label %94
    i32 132, label %105
    i32 133, label %116
  ]

83:                                               ; preds = %79
  %84 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %85 = call i32 @sooptcopyin(%struct.sockopt* %84, %struct.TYPE_5__* %8, i32 16, i32 4)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %147

94:                                               ; preds = %79
  %95 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %96 = call i32 @sooptcopyin(%struct.sockopt* %95, %struct.TYPE_5__* %8, i32 16, i32 4)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = call i32 @bcopy(i32* %100, i32* %102, i32 4)
  br label %104

104:                                              ; preds = %99, %94
  br label %147

105:                                              ; preds = %79
  %106 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %107 = call i32 @sooptcopyin(%struct.sockopt* %106, %struct.TYPE_5__* %8, i32 16, i32 4)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %147

116:                                              ; preds = %79
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NG_BTSOCKET_L2CAP_OPEN, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NG_BTSOCKET_L2CAP_W4_ENC_CHANGE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %130 = call i32 @sooptcopyin(%struct.sockopt* %129, %struct.TYPE_5__* %8, i32 16, i32 4)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %128
  br label %144

142:                                              ; preds = %122, %116
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %141
  br label %147

145:                                              ; preds = %79
  %146 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %145, %144, %115, %104, %93
  br label %150

148:                                              ; preds = %27
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %147, %77, %70
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 6
  %153 = call i32 @mtx_unlock(i32* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %26, %18, %13
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_6__* @so2l2cap_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
