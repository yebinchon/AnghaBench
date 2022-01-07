; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soshutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soshutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64, i32, i32, i32, %struct.protosw* }
%struct.protosw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*)*, {}* }

@SHUT_RD = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soshutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.protosw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 5
  %11 = load %struct.protosw*, %struct.protosw** %10, align 8
  store %struct.protosw* %11, %struct.protosw** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SHUT_RD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SHUT_WR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SHUT_RDWR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %135

25:                                               ; preds = %19, %15, %2
  store i32 0, i32* %8, align 4
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SS_ISCONNECTED, align 4
  %30 = load i32, i32* @SS_ISCONNECTING, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %25
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_DGRAM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = call i64 @SOLISTENING(%struct.socket* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENOTCONN, align 4
  store i32 %47, i32* %3, align 4
  br label %135

48:                                               ; preds = %42, %36
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.socket*, %struct.socket** %4, align 8
  %51 = call i64 @SOLISTENING(%struct.socket* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SHUT_WR, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.socket*, %struct.socket** %4, align 8
  %59 = call i32 @SOLISTEN_LOCK(%struct.socket* %58)
  %60 = load i32, i32* @ECONNABORTED, align 4
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.socket*, %struct.socket** %4, align 8
  %64 = call i32 @solisten_wakeup(%struct.socket* %63)
  br label %65

65:                                               ; preds = %57, %53
  br label %127

66:                                               ; preds = %49
  %67 = load %struct.socket*, %struct.socket** %4, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CURVNET_SET(i32 %69)
  %71 = load %struct.protosw*, %struct.protosw** %6, align 8
  %72 = getelementptr inbounds %struct.protosw, %struct.protosw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = bitcast {}** %74 to i32 (%struct.socket*, i32)**
  %76 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.socket*, i32)* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load %struct.protosw*, %struct.protosw** %6, align 8
  %80 = getelementptr inbounds %struct.protosw, %struct.protosw* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = bitcast {}** %82 to i32 (%struct.socket*, i32)**
  %84 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %83, align 8
  %85 = load %struct.socket*, %struct.socket** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 %84(%struct.socket* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %66
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SHUT_WR, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.socket*, %struct.socket** %4, align 8
  %94 = call i32 @sorflush(%struct.socket* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SHUT_RD, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.protosw*, %struct.protosw** %6, align 8
  %101 = getelementptr inbounds %struct.protosw, %struct.protosw* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %103, align 8
  %105 = load %struct.socket*, %struct.socket** %4, align 8
  %106 = call i32 %104(%struct.socket* %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.socket*, %struct.socket** %4, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 2
  %109 = call i32 @wakeup(i32* %108)
  %110 = call i32 (...) @CURVNET_RESTORE()
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @ENOTCONN, align 4
  br label %120

118:                                              ; preds = %113, %99
  %119 = load i32, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %3, align 4
  br label %135

122:                                              ; preds = %95
  %123 = load %struct.socket*, %struct.socket** %4, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 2
  %125 = call i32 @wakeup(i32* %124)
  %126 = call i32 (...) @CURVNET_RESTORE()
  br label %127

127:                                              ; preds = %122, %65
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @ENOTCONN, align 4
  br label %133

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %120, %46, %23
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOLISTEN_LOCK(%struct.socket*) #1

declare dso_local i32 @solisten_wakeup(%struct.socket*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @sorflush(%struct.socket*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
