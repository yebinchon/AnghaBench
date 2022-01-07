; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfsvattr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@VREG = common dso_local global i64 0, align 8
@MNT_EXPORTED = common dso_local global i32 0, align 4
@nfsrv_devidcnt = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i64 0, align 8
@NFSPROC_SETATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_setattr(%struct.vnode* %0, %struct.nfsvattr* %1, %struct.ucred* %2, %struct.thread* %3, %struct.nfsexstuff* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.nfsvattr*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.nfsexstuff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.nfsexstuff* %4, %struct.nfsexstuff** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VREG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %5
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MNT_EXPORTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %92

28:                                               ; preds = %19
  %29 = load i64, i64* @nfsrv_devidcnt, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %92

31:                                               ; preds = %28
  %32 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %33 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VNOVAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %31
  %39 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %40 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %46 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* @VNOVAL, align 8
  %50 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %51 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %54 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VNOVAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %89, label %59

59:                                               ; preds = %44
  %60 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %61 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VNOVAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %89, label %66

66:                                               ; preds = %59
  %67 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %68 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VNOVAL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %66
  %74 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %75 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VNOVAL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %83 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VNOVAL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %73, %66, %59, %44
  store i32 1, i32* %13, align 4
  br label %91

90:                                               ; preds = %81
  store i32 2, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %38, %31, %28, %19, %5
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.vnode*, %struct.vnode** %6, align 8
  %97 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %98 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %97, i32 0, i32 0
  %99 = load %struct.ucred*, %struct.ucred** %8, align 8
  %100 = call i32 @VOP_SETATTR(%struct.vnode* %96, %struct.TYPE_8__* %98, %struct.ucred* %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %107 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %168

112:                                              ; preds = %109
  %113 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %114 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VNOVAL, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %156, label %119

119:                                              ; preds = %112
  %120 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %121 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @VNOVAL, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %156, label %126

126:                                              ; preds = %119
  %127 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %128 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VNOVAL, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %156, label %133

133:                                              ; preds = %126
  %134 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %135 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @VNOVAL, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %156, label %140

140:                                              ; preds = %133
  %141 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %142 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VNOVAL, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %150 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VNOVAL, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %148, %140, %133, %126, %119, %112
  %157 = load %struct.vnode*, %struct.vnode** %6, align 8
  %158 = load %struct.ucred*, %struct.ucred** %8, align 8
  %159 = load %struct.thread*, %struct.thread** %9, align 8
  %160 = load i32, i32* @NFSPROC_SETATTR, align 4
  %161 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %162 = call i32 @nfsrv_proxyds(%struct.vnode* %157, i32 0, i32 0, %struct.ucred* %158, %struct.thread* %159, i32 %160, i32* null, i32* null, i32* null, %struct.nfsvattr* %161, i32* null)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @ENOENT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %166, %156
  br label %168

168:                                              ; preds = %167, %148, %109
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @NFSEXITCODE(i32 %169)
  %171 = load i32, i32* %12, align 4
  ret i32 %171
}

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.TYPE_8__*, %struct.ucred*) #1

declare dso_local i32 @nfsrv_proxyds(%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*, i32, i32*, i32*, i32*, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
