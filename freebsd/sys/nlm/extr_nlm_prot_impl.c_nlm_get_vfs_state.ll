; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_get_vfs_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_get_vfs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vfs_state = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ucred = type { i64 }
%struct.sockaddr = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@MNT_EXRDONLY = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_EXPORTANON = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_host*, %struct.svc_req*, %struct.TYPE_6__*, %struct.vfs_state*, i64)* @nlm_get_vfs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_get_vfs_state(%struct.nlm_host* %0, %struct.svc_req* %1, %struct.TYPE_6__* %2, %struct.vfs_state* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlm_host*, align 8
  %8 = alloca %struct.svc_req*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.vfs_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca %struct.ucred*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %7, align 8
  store %struct.svc_req* %1, %struct.svc_req** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.vfs_state* %3, %struct.vfs_state** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.ucred* null, %struct.ucred** %14, align 8
  store %struct.ucred* null, %struct.ucred** %15, align 8
  %16 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %17 = call i32 @memset(%struct.vfs_state* %16, i32 0, i32 16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call %struct.TYPE_7__* @vfs_getvfs(i32* %19)
  %21 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %22 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %21, i32 0, i32 2
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %24 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ESTALE, align 4
  store i32 %28, i32* %6, align 4
  br label %149

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %34 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %37 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.sockaddr*
  %39 = call i32 @VFS_CHECKEXP(%struct.TYPE_7__* %35, %struct.sockaddr* %38, i32* %13, %struct.ucred** %15, i32* null, i32* null)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %135

43:                                               ; preds = %32
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MNT_EXRDONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %50 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MNT_RDONLY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48, %43
  %58 = load i32, i32* @EROFS, align 4
  store i32 %58, i32* %12, align 4
  br label %135

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %62 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* @LK_EXCLUSIVE, align 4
  %67 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %68 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %67, i32 0, i32 1
  %69 = call i32 @VFS_FHTOVP(%struct.TYPE_7__* %63, i32* %65, i32 %66, i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %135

73:                                               ; preds = %60
  %74 = load i32, i32* @TRUE, align 4
  %75 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %76 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %73
  %80 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %81 = call i32 @svc_getcred(%struct.svc_req* %80, %struct.ucred** %14, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %12, align 4
  br label %135

85:                                               ; preds = %79
  %86 = load %struct.ucred*, %struct.ucred** %14, align 8
  %87 = getelementptr inbounds %struct.ucred, %struct.ucred* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @MNT_EXPORTANON, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90, %85
  %96 = load %struct.ucred*, %struct.ucred** %14, align 8
  %97 = call i32 @crfree(%struct.ucred* %96)
  %98 = load %struct.ucred*, %struct.ucred** %15, align 8
  store %struct.ucred* %98, %struct.ucred** %14, align 8
  store %struct.ucred* null, %struct.ucred** %15, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %101 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.ucred*, %struct.ucred** %14, align 8
  %105 = load i32, i32* @curthread, align 4
  %106 = call i32 @VOP_ACCESS(i32 %102, i64 %103, %struct.ucred* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %99
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @VWRITE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %115 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @VWRITE, align 8
  %118 = load %struct.ucred*, %struct.ucred** %14, align 8
  %119 = load i32, i32* @curthread, align 4
  %120 = call i32 @VOP_ACCESS(i32 %116, i64 %117, %struct.ucred* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %113, %109, %99
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %135

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %128 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @curthread, align 4
  %131 = call i32 (i32, i32, ...) @VOP_UNLOCK(i32 %129, i32 0, i32 %130)
  %132 = load i32, i32* @FALSE, align 4
  %133 = load %struct.vfs_state*, %struct.vfs_state** %10, align 8
  %134 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %124, %83, %72, %57, %42
  %136 = load %struct.ucred*, %struct.ucred** %14, align 8
  %137 = icmp ne %struct.ucred* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.ucred*, %struct.ucred** %14, align 8
  %140 = call i32 @crfree(%struct.ucred* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.ucred*, %struct.ucred** %15, align 8
  %143 = icmp ne %struct.ucred* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.ucred*, %struct.ucred** %15, align 8
  %146 = call i32 @crfree(%struct.ucred* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %27
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.vfs_state*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @vfs_getvfs(i32*) #1

declare dso_local i32 @VFS_CHECKEXP(%struct.TYPE_7__*, %struct.sockaddr*, i32*, %struct.ucred**, i32*, i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @svc_getcred(%struct.svc_req*, %struct.ucred**, i32*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @VOP_ACCESS(i32, i64, %struct.ucred*, i32) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
