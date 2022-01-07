; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_socreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_socreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.protosw*, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.protosw = type { i32, %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 (%struct.socket*, i32, %struct.thread*)* }
%struct.TYPE_6__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@PF_ROUTE = common dso_local global i64 0, align 8
@so_rdknl_lock = common dso_local global i32 0, align 4
@so_rdknl_unlock = common dso_local global i32 0, align 4
@so_rdknl_assert_locked = common dso_local global i32 0, align 4
@so_rdknl_assert_unlocked = common dso_local global i32 0, align 4
@so_wrknl_lock = common dso_local global i32 0, align 4
@so_wrknl_unlock = common dso_local global i32 0, align 4
@so_wrknl_assert_locked = common dso_local global i32 0, align 4
@so_wrknl_assert_unlocked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socreate(i32 %0, %struct.socket** %1, i32 %2, i32 %3, %struct.ucred* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.protosw*, align 8
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.socket** %1, %struct.socket*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ucred* %4, %struct.ucred** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.protosw* @pffindproto(i32 %20, i32 %21, i32 %22)
  store %struct.protosw* %23, %struct.protosw** %14, align 8
  br label %28

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.protosw* @pffindtype(i32 %25, i32 %26)
  store %struct.protosw* %27, %struct.protosw** %14, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.protosw*, %struct.protosw** %14, align 8
  %30 = icmp eq %struct.protosw* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = call i32* @pffinddomain(i32 %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %36, i32* %7, align 4
  br label %179

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %44, i32* %7, align 4
  br label %179

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %46, i32* %7, align 4
  br label %179

47:                                               ; preds = %28
  %48 = load %struct.protosw*, %struct.protosw** %14, align 8
  %49 = getelementptr inbounds %struct.protosw, %struct.protosw* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32 (%struct.socket*, i32, %struct.thread*)*, i32 (%struct.socket*, i32, %struct.thread*)** %51, align 8
  %53 = icmp eq i32 (%struct.socket*, i32, %struct.thread*)* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.protosw*, %struct.protosw** %14, align 8
  %56 = getelementptr inbounds %struct.protosw, %struct.protosw* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32 (%struct.socket*, i32, %struct.thread*)*, i32 (%struct.socket*, i32, %struct.thread*)** %58, align 8
  %60 = icmp eq i32 (%struct.socket*, i32, %struct.thread*)* %59, @pru_attach_notsupp
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %47
  %62 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %62, i32* %7, align 4
  br label %179

63:                                               ; preds = %54
  %64 = load %struct.ucred*, %struct.ucred** %12, align 8
  %65 = load %struct.protosw*, %struct.protosw** %14, align 8
  %66 = getelementptr inbounds %struct.protosw, %struct.protosw* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @prison_check_af(%struct.ucred* %64, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %73, i32* %7, align 4
  br label %179

74:                                               ; preds = %63
  %75 = load %struct.protosw*, %struct.protosw** %14, align 8
  %76 = getelementptr inbounds %struct.protosw, %struct.protosw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %81, i32* %7, align 4
  br label %179

82:                                               ; preds = %74
  %83 = load %struct.ucred*, %struct.ucred** %12, align 8
  %84 = call i32 @CRED_TO_VNET(%struct.ucred* %83)
  %85 = call %struct.socket* @soalloc(i32 %84)
  store %struct.socket* %85, %struct.socket** %15, align 8
  %86 = load %struct.socket*, %struct.socket** %15, align 8
  %87 = icmp eq %struct.socket* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOBUFS, align 4
  store i32 %89, i32* %7, align 4
  br label %179

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.socket*, %struct.socket** %15, align 8
  %93 = getelementptr inbounds %struct.socket, %struct.socket* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ucred*, %struct.ucred** %12, align 8
  %95 = call i32 @crhold(%struct.ucred* %94)
  %96 = load %struct.socket*, %struct.socket** %15, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.protosw*, %struct.protosw** %14, align 8
  %99 = getelementptr inbounds %struct.protosw, %struct.protosw* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PF_INET, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %90
  %106 = load %struct.protosw*, %struct.protosw** %14, align 8
  %107 = getelementptr inbounds %struct.protosw, %struct.protosw* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PF_INET6, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.protosw*, %struct.protosw** %14, align 8
  %115 = getelementptr inbounds %struct.protosw, %struct.protosw* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PF_ROUTE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %113, %105, %90
  %122 = load %struct.thread*, %struct.thread** %13, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.socket*, %struct.socket** %15, align 8
  %128 = getelementptr inbounds %struct.socket, %struct.socket* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  br label %132

129:                                              ; preds = %113
  %130 = load %struct.socket*, %struct.socket** %15, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %121
  %133 = load %struct.protosw*, %struct.protosw** %14, align 8
  %134 = load %struct.socket*, %struct.socket** %15, align 8
  %135 = getelementptr inbounds %struct.socket, %struct.socket* %134, i32 0, i32 4
  store %struct.protosw* %133, %struct.protosw** %135, align 8
  %136 = load %struct.socket*, %struct.socket** %15, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.socket*, %struct.socket** %15, align 8
  %140 = load i32, i32* @so_rdknl_lock, align 4
  %141 = load i32, i32* @so_rdknl_unlock, align 4
  %142 = load i32, i32* @so_rdknl_assert_locked, align 4
  %143 = load i32, i32* @so_rdknl_assert_unlocked, align 4
  %144 = call i32 @knlist_init(i32* %138, %struct.socket* %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.socket*, %struct.socket** %15, align 8
  %146 = getelementptr inbounds %struct.socket, %struct.socket* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.socket*, %struct.socket** %15, align 8
  %149 = load i32, i32* @so_wrknl_lock, align 4
  %150 = load i32, i32* @so_wrknl_unlock, align 4
  %151 = load i32, i32* @so_wrknl_assert_locked, align 4
  %152 = load i32, i32* @so_wrknl_assert_unlocked, align 4
  %153 = call i32 @knlist_init(i32* %147, %struct.socket* %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.socket*, %struct.socket** %15, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @CURVNET_SET(i32 %156)
  %158 = load %struct.protosw*, %struct.protosw** %14, align 8
  %159 = getelementptr inbounds %struct.protosw, %struct.protosw* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32 (%struct.socket*, i32, %struct.thread*)*, i32 (%struct.socket*, i32, %struct.thread*)** %161, align 8
  %163 = load %struct.socket*, %struct.socket** %15, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.thread*, %struct.thread** %13, align 8
  %166 = call i32 %162(%struct.socket* %163, i32 %164, %struct.thread* %165)
  store i32 %166, i32* %16, align 4
  %167 = call i32 (...) @CURVNET_RESTORE()
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %132
  %171 = load %struct.socket*, %struct.socket** %15, align 8
  %172 = call i32 @sodealloc(%struct.socket* %171)
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %7, align 4
  br label %179

174:                                              ; preds = %132
  %175 = load %struct.socket*, %struct.socket** %15, align 8
  %176 = call i32 @soref(%struct.socket* %175)
  %177 = load %struct.socket*, %struct.socket** %15, align 8
  %178 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* %177, %struct.socket** %178, align 8
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %174, %170, %88, %80, %72, %61, %45, %43, %35
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local %struct.protosw* @pffindproto(i32, i32, i32) #1

declare dso_local %struct.protosw* @pffindtype(i32, i32) #1

declare dso_local i32* @pffinddomain(i32) #1

declare dso_local i32 @pru_attach_notsupp(%struct.socket*, i32, %struct.thread*) #1

declare dso_local i64 @prison_check_af(%struct.ucred*, i64) #1

declare dso_local %struct.socket* @soalloc(i32) #1

declare dso_local i32 @CRED_TO_VNET(%struct.ucred*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @knlist_init(i32*, %struct.socket*, i32, i32, i32, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @sodealloc(%struct.socket*) #1

declare dso_local i32 @soref(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
