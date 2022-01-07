; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vnode = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.vnode* }
%struct.vattr = type { i32, i64, i32 }

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OBJT_VNODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"wrong object type\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_vnode(%struct.thread* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.vnode* %5, i32* %6, %struct.TYPE_9__** %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.vattr, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ucred*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.vnode* %5, %struct.vnode** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_9__** %7, %struct.TYPE_9__*** %18, align 8
  store i64* %8, i64** %19, align 8
  %27 = load %struct.thread*, %struct.thread** %11, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.ucred*, %struct.ucred** %28, align 8
  store %struct.ucred* %29, %struct.ucred** %23, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %9
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAP_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %35, %9
  %42 = phi i1 [ false, %9 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %26, align 4
  %44 = load %struct.vnode*, %struct.vnode** %16, align 8
  %45 = load i32, i32* @LK_SHARED, align 4
  %46 = load %struct.thread*, %struct.thread** %11, align 8
  %47 = call i32 @vget(%struct.vnode* %44, i32 %45, %struct.thread* %46)
  store i32 %47, i32* %24, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %24, align 4
  store i32 %50, i32* %10, align 4
  br label %222

51:                                               ; preds = %41
  %52 = load %struct.vnode*, %struct.vnode** %16, align 8
  %53 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %52)
  %54 = load i32*, i32** %17, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %22, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %25, align 4
  %58 = load %struct.vnode*, %struct.vnode** %16, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %21, align 8
  %61 = load %struct.vnode*, %struct.vnode** %16, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VREG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %51
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %68 = icmp eq %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %24, align 4
  br label %205

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @OBJT_VNODE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.vnode*, %struct.vnode** %79, align 8
  %81 = load %struct.vnode*, %struct.vnode** %16, align 8
  %82 = icmp ne %struct.vnode* %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.vnode*, %struct.vnode** %16, align 8
  %85 = call i32 @vput(%struct.vnode* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.vnode*, %struct.vnode** %87, align 8
  store %struct.vnode* %88, %struct.vnode** %16, align 8
  %89 = load %struct.vnode*, %struct.vnode** %16, align 8
  %90 = load i32, i32* @LK_SHARED, align 4
  %91 = load %struct.thread*, %struct.thread** %11, align 8
  %92 = call i32 @vget(%struct.vnode* %89, i32 %90, %struct.thread* %91)
  store i32 %92, i32* %24, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %24, align 4
  store i32 %96, i32* %10, align 4
  br label %222

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %77, %71
  %99 = load i32, i32* %26, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i64, i64* @TRUE, align 8
  %103 = load i64*, i64** %19, align 8
  store i64 %102, i64* %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @vm_pager_update_writecount(%struct.TYPE_9__* %104, i32 0, i32 %105)
  br label %107

107:                                              ; preds = %101, %98
  br label %110

108:                                              ; preds = %51
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %24, align 4
  br label %205

110:                                              ; preds = %107
  %111 = load %struct.vnode*, %struct.vnode** %16, align 8
  %112 = load %struct.ucred*, %struct.ucred** %23, align 8
  %113 = call i32 @VOP_GETATTR(%struct.vnode* %111, %struct.vattr* %20, %struct.ucred* %112)
  store i32 %113, i32* %24, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %205

116:                                              ; preds = %110
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* @MAP_SHARED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SF_SNAPSHOT, align 4
  %125 = load i32, i32* @IMMUTABLE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @APPEND, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %121
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @VM_PROT_WRITE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @EPERM, align 4
  store i32 %137, i32* %24, align 4
  br label %205

138:                                              ; preds = %131
  %139 = load i32, i32* @VM_PROT_WRITE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %121
  br label %145

145:                                              ; preds = %144, %116
  %146 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @round_page(i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @MAP_NOSYNC, align 4
  %154 = load i32, i32* %25, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %25, align 4
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @OBJT_VNODE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load i64, i64* @OBJT_VNODE, align 8
  %164 = load %struct.vnode*, %struct.vnode** %16, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load %struct.ucred*, %struct.ucred** %23, align 8
  %169 = call %struct.TYPE_9__* @vm_pager_allocate(i64 %163, %struct.vnode* %164, i32 %165, i32 %166, i32 %167, %struct.ucred* %168)
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %21, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %171 = icmp eq %struct.TYPE_9__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* @ENOMEM, align 4
  store i32 %173, i32* %24, align 4
  br label %205

174:                                              ; preds = %162
  br label %197

175:                                              ; preds = %156
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @OBJT_DEFAULT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @OBJT_SWAP, align 8
  %186 = icmp eq i64 %184, %185
  br label %187

187:                                              ; preds = %181, %175
  %188 = phi i1 [ true, %175 ], [ %186, %181 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @KASSERT(i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %192 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__* %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %194 = call i32 @vm_object_reference_locked(%struct.TYPE_9__* %193)
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %196 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__* %195)
  br label %197

197:                                              ; preds = %187, %174
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %199 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %199, align 8
  %200 = load i32, i32* %25, align 4
  %201 = load i32*, i32** %15, align 8
  store i32 %200, i32* %201, align 4
  %202 = load %struct.vnode*, %struct.vnode** %16, align 8
  %203 = load %struct.ucred*, %struct.ucred** %23, align 8
  %204 = call i32 @vfs_mark_atime(%struct.vnode* %202, %struct.ucred* %203)
  br label %205

205:                                              ; preds = %197, %172, %136, %115, %108, %69
  %206 = load i32, i32* %24, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load i64*, i64** %19, align 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i64, i64* @FALSE, align 8
  %214 = load i64*, i64** %19, align 8
  store i64 %213, i64* %214, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @vm_pager_update_writecount(%struct.TYPE_9__* %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %212, %208, %205
  %219 = load %struct.vnode*, %struct.vnode** %16, align 8
  %220 = call i32 @vput(%struct.vnode* %219)
  %221 = load i32, i32* %24, align 4
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %218, %95, %49
  %223 = load i32, i32* %10, align 4
  ret i32 %223
}

declare dso_local i32 @vget(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vm_pager_update_writecount(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local %struct.TYPE_9__* @vm_pager_allocate(i64, %struct.vnode*, i32, i32, i32, %struct.ucred*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @vfs_mark_atime(%struct.vnode*, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
