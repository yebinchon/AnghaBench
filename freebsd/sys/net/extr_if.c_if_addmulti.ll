; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_addmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_addmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)*, i32, i32 (%struct.ifnet*, i32, i32)*, i32 }
%struct.sockaddr = type { i32 }
%struct.ifmultiaddr = type { i32, %struct.ifmultiaddr*, i32 }
%struct.sockaddr_dl = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFMA_F_ENQUEUED = common dso_local global i32 0, align 4
@ifma_link = common dso_local global i32 0, align 4
@RTM_NEWMADDR = common dso_local global i32 0, align 4
@SIOCADDMULTI = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_addmulti(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.ifmultiaddr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.ifmultiaddr**, align 8
  %8 = alloca %struct.ifmultiaddr*, align 8
  %9 = alloca %struct.ifmultiaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr_dl, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.ifmultiaddr** %2, %struct.ifmultiaddr*** %7, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = call i32 @IF_ADDR_WLOCK(%struct.ifnet* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = call %struct.ifmultiaddr* @if_findmulti(%struct.ifnet* %15, %struct.sockaddr* %16)
  store %struct.ifmultiaddr* %17, %struct.ifmultiaddr** %8, align 8
  %18 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %19 = icmp ne %struct.ifmultiaddr* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %22 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %7, align 8
  %26 = icmp ne %struct.ifmultiaddr** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %29 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %7, align 8
  store %struct.ifmultiaddr* %28, %struct.ifmultiaddr** %29, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = call i32 @IF_ADDR_WUNLOCK(%struct.ifnet* %31)
  store i32 0, i32* %4, align 4
  br label %173

33:                                               ; preds = %3
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %9, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)*, i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)** %35, align 8
  %37 = icmp ne i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = bitcast %struct.sockaddr_dl* %11 to %struct.sockaddr*
  store %struct.sockaddr* %40, %struct.sockaddr** %10, align 8
  %41 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)*, i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)** %42, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = call i32 %43(%struct.ifnet* %44, %struct.sockaddr** %10, %struct.sockaddr* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %169

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %55 = load i32, i32* @M_NOWAIT, align 4
  %56 = call %struct.ifmultiaddr* @if_allocmulti(%struct.ifnet* %52, %struct.sockaddr* %53, %struct.sockaddr* %54, i32 %55)
  store %struct.ifmultiaddr* %56, %struct.ifmultiaddr** %8, align 8
  %57 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %58 = icmp eq %struct.ifmultiaddr* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %12, align 4
  br label %158

61:                                               ; preds = %51
  %62 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %63 = icmp ne %struct.sockaddr* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %61
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %67 = call %struct.ifmultiaddr* @if_findmulti(%struct.ifnet* %65, %struct.sockaddr* %66)
  store %struct.ifmultiaddr* %67, %struct.ifmultiaddr** %9, align 8
  %68 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %69 = icmp eq %struct.ifmultiaddr* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %73 = load i32, i32* @M_NOWAIT, align 4
  %74 = call %struct.ifmultiaddr* @if_allocmulti(%struct.ifnet* %71, %struct.sockaddr* %72, %struct.sockaddr* null, i32 %73)
  store %struct.ifmultiaddr* %74, %struct.ifmultiaddr** %9, align 8
  %75 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %76 = icmp eq %struct.ifmultiaddr* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %79 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %83 = call i32 @if_freemulti(%struct.ifmultiaddr* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %12, align 4
  br label %158

85:                                               ; preds = %70
  %86 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %87 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %88 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 3
  %93 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %94 = load i32, i32* @ifma_link, align 4
  %95 = call i32 @CK_STAILQ_INSERT_HEAD(i32* %92, %struct.ifmultiaddr* %93, i32 %94)
  br label %101

96:                                               ; preds = %64
  %97 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %98 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %96, %85
  %102 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %9, align 8
  %103 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %104 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %103, i32 0, i32 1
  store %struct.ifmultiaddr* %102, %struct.ifmultiaddr** %104, align 8
  br label %105

105:                                              ; preds = %101, %61
  %106 = load i32, i32* @IFMA_F_ENQUEUED, align 4
  %107 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %108 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 3
  %113 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %114 = load i32, i32* @ifma_link, align 4
  %115 = call i32 @CK_STAILQ_INSERT_HEAD(i32* %112, %struct.ifmultiaddr* %113, i32 %114)
  %116 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %7, align 8
  %117 = icmp ne %struct.ifmultiaddr** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %120 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %7, align 8
  store %struct.ifmultiaddr* %119, %struct.ifmultiaddr** %120, align 8
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32, i32* @RTM_NEWMADDR, align 4
  %123 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %8, align 8
  %124 = call i32 @rt_newmaddrmsg(i32 %122, %struct.ifmultiaddr* %123)
  %125 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %126 = call i32 @IF_ADDR_WUNLOCK(%struct.ifnet* %125)
  %127 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 2
  %129 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.ifnet*, i32, i32)* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %121
  %132 = call i64 (...) @THREAD_CAN_SLEEP()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 2
  %137 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %136, align 8
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = load i32, i32* @SIOCADDMULTI, align 4
  %140 = call i32 %137(%struct.ifnet* %138, i32 %139, i32 0)
  br label %146

141:                                              ; preds = %131
  %142 = load i32, i32* @taskqueue_swi, align 4
  %143 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 1
  %145 = call i32 @taskqueue_enqueue(i32 %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %134
  br label %147

147:                                              ; preds = %146, %121
  %148 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %149 = icmp ne %struct.sockaddr* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %152 = bitcast %struct.sockaddr_dl* %11 to %struct.sockaddr*
  %153 = icmp ne %struct.sockaddr* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %156 = call i32 @link_free_sdl(%struct.sockaddr* %155)
  br label %157

157:                                              ; preds = %154, %150, %147
  store i32 0, i32* %4, align 4
  br label %173

158:                                              ; preds = %77, %59
  %159 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %160 = icmp ne %struct.sockaddr* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %163 = bitcast %struct.sockaddr_dl* %11 to %struct.sockaddr*
  %164 = icmp ne %struct.sockaddr* %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %167 = call i32 @link_free_sdl(%struct.sockaddr* %166)
  br label %168

168:                                              ; preds = %165, %161, %158
  br label %169

169:                                              ; preds = %168, %49
  %170 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %171 = call i32 @IF_ADDR_WUNLOCK(%struct.ifnet* %170)
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %169, %157, %30
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @IF_ADDR_WLOCK(%struct.ifnet*) #1

declare dso_local %struct.ifmultiaddr* @if_findmulti(%struct.ifnet*, %struct.sockaddr*) #1

declare dso_local i32 @IF_ADDR_WUNLOCK(%struct.ifnet*) #1

declare dso_local %struct.ifmultiaddr* @if_allocmulti(%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @if_freemulti(%struct.ifmultiaddr*) #1

declare dso_local i32 @CK_STAILQ_INSERT_HEAD(i32*, %struct.ifmultiaddr*, i32) #1

declare dso_local i32 @rt_newmaddrmsg(i32, %struct.ifmultiaddr*) #1

declare dso_local i64 @THREAD_CAN_SLEEP(...) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @link_free_sdl(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
