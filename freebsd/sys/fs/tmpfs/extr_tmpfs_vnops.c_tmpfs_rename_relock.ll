; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rename_relock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rename_relock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.componentname = type { i32, i32, i8* }
%struct.tmpfs_dirent = type { i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@tmpfs_rename_restarts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode**, %struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*)* @tmpfs_rename_relock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_rename_relock(%struct.vnode* %0, %struct.vnode** %1, %struct.vnode* %2, %struct.vnode** %3, %struct.componentname* %4, %struct.componentname* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.mount*, align 8
  %16 = alloca %struct.tmpfs_dirent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store %struct.vnode** %1, %struct.vnode*** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store %struct.vnode** %3, %struct.vnode*** %11, align 8
  store %struct.componentname* %4, %struct.componentname** %12, align 8
  store %struct.componentname* %5, %struct.componentname** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.vnode*, %struct.vnode** %10, align 8
  %20 = call i32 @VOP_UNLOCK(%struct.vnode* %19, i32 0)
  %21 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  %23 = icmp ne %struct.vnode* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  %27 = load %struct.vnode*, %struct.vnode** %10, align 8
  %28 = icmp ne %struct.vnode* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  %32 = call i32 @VOP_UNLOCK(%struct.vnode* %31, i32 0)
  br label %33

33:                                               ; preds = %29, %24, %6
  %34 = load %struct.vnode*, %struct.vnode** %8, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load %struct.mount*, %struct.mount** %35, align 8
  store %struct.mount* %36, %struct.mount** %15, align 8
  br label %37

37:                                               ; preds = %222, %141, %62, %33
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %18, align 4
  %40 = load %struct.vnode*, %struct.vnode** %8, align 8
  %41 = load i32, i32* @LK_EXCLUSIVE, align 4
  %42 = call i32 @vn_lock(%struct.vnode* %40, i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %228

46:                                               ; preds = %37
  %47 = load %struct.vnode*, %struct.vnode** %10, align 8
  %48 = load i32, i32* @LK_EXCLUSIVE, align 4
  %49 = load i32, i32* @LK_NOWAIT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @vn_lock(%struct.vnode* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.vnode*, %struct.vnode** %8, align 8
  %55 = call i32 @VOP_UNLOCK(%struct.vnode* %54, i32 0)
  %56 = load %struct.vnode*, %struct.vnode** %10, align 8
  %57 = load i32, i32* @LK_EXCLUSIVE, align 4
  %58 = call i32 @vn_lock(%struct.vnode* %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %228

62:                                               ; preds = %53
  %63 = load %struct.vnode*, %struct.vnode** %10, align 8
  %64 = call i32 @VOP_UNLOCK(%struct.vnode* %63, i32 0)
  br label %37

65:                                               ; preds = %46
  %66 = load %struct.vnode*, %struct.vnode** %8, align 8
  %67 = call i32 @VP_TO_TMPFS_DIR(%struct.vnode* %66)
  %68 = load %struct.componentname*, %struct.componentname** %12, align 8
  %69 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32 %67, i32* null, %struct.componentname* %68)
  store %struct.tmpfs_dirent* %69, %struct.tmpfs_dirent** %16, align 8
  %70 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %71 = icmp eq %struct.tmpfs_dirent* %70, null
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  %73 = load %struct.vnode*, %struct.vnode** %8, align 8
  %74 = call i32 @VOP_UNLOCK(%struct.vnode* %73, i32 0)
  %75 = load %struct.vnode*, %struct.vnode** %10, align 8
  %76 = call i32 @VOP_UNLOCK(%struct.vnode* %75, i32 0)
  %77 = load %struct.componentname*, %struct.componentname** %12, align 8
  %78 = getelementptr inbounds %struct.componentname, %struct.componentname* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ISDOTDOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %72
  %84 = load %struct.componentname*, %struct.componentname** %12, align 8
  %85 = getelementptr inbounds %struct.componentname, %struct.componentname* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.componentname*, %struct.componentname** %12, align 8
  %90 = getelementptr inbounds %struct.componentname, %struct.componentname* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %96, label %98

96:                                               ; preds = %88, %72
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %17, align 4
  br label %100

98:                                               ; preds = %88, %83
  %99 = load i32, i32* @ENOENT, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %228

101:                                              ; preds = %65
  %102 = load %struct.mount*, %struct.mount** %15, align 8
  %103 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %104 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @LK_EXCLUSIVE, align 4
  %107 = load i32, i32* @LK_NOWAIT, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @tmpfs_alloc_vp(%struct.mount* %102, i32 %105, i32 %108, %struct.vnode** %14)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %101
  %113 = load %struct.vnode*, %struct.vnode** %8, align 8
  %114 = call i32 @VOP_UNLOCK(%struct.vnode* %113, i32 0)
  %115 = load %struct.vnode*, %struct.vnode** %10, align 8
  %116 = call i32 @VOP_UNLOCK(%struct.vnode* %115, i32 0)
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @EBUSY, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %228

121:                                              ; preds = %112
  %122 = load %struct.mount*, %struct.mount** %15, align 8
  %123 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %124 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LK_EXCLUSIVE, align 4
  %127 = call i32 @tmpfs_alloc_vp(%struct.mount* %122, i32 %125, i32 %126, %struct.vnode** %14)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %228

131:                                              ; preds = %121
  %132 = load %struct.vnode*, %struct.vnode** %14, align 8
  %133 = call i32 @VOP_UNLOCK(%struct.vnode* %132, i32 0)
  %134 = load %struct.vnode*, %struct.vnode** %14, align 8
  %135 = load %struct.vnode*, %struct.vnode** %10, align 8
  %136 = icmp eq %struct.vnode* %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.vnode*, %struct.vnode** %14, align 8
  %139 = call i32 @vrele(%struct.vnode* %138)
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %17, align 4
  br label %228

141:                                              ; preds = %131
  %142 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  %144 = call i32 @vrele(%struct.vnode* %143)
  %145 = load %struct.vnode*, %struct.vnode** %14, align 8
  %146 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %145, %struct.vnode** %146, align 8
  br label %37

147:                                              ; preds = %101
  %148 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %149 = load %struct.vnode*, %struct.vnode** %148, align 8
  %150 = call i32 @vrele(%struct.vnode* %149)
  %151 = load %struct.vnode*, %struct.vnode** %14, align 8
  %152 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %151, %struct.vnode** %152, align 8
  %153 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %154 = load %struct.vnode*, %struct.vnode** %153, align 8
  %155 = call i32 @VOP_UNLOCK(%struct.vnode* %154, i32 0)
  %156 = load %struct.vnode*, %struct.vnode** %10, align 8
  %157 = call i32 @VP_TO_TMPFS_DIR(%struct.vnode* %156)
  %158 = load %struct.componentname*, %struct.componentname** %13, align 8
  %159 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32 %157, i32* null, %struct.componentname* %158)
  store %struct.tmpfs_dirent* %159, %struct.tmpfs_dirent** %16, align 8
  %160 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %161 = icmp eq %struct.tmpfs_dirent* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %147
  %163 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %164 = load %struct.vnode*, %struct.vnode** %163, align 8
  %165 = icmp ne %struct.vnode* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %168 = load %struct.vnode*, %struct.vnode** %167, align 8
  %169 = call i32 @vrele(%struct.vnode* %168)
  %170 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* null, %struct.vnode** %170, align 8
  br label %171

171:                                              ; preds = %166, %162, %147
  %172 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %173 = icmp ne %struct.tmpfs_dirent* %172, null
  br i1 %173, label %174, label %224

174:                                              ; preds = %171
  store %struct.vnode* null, %struct.vnode** %14, align 8
  %175 = load %struct.mount*, %struct.mount** %15, align 8
  %176 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %177 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @LK_EXCLUSIVE, align 4
  %180 = load i32, i32* @LK_NOWAIT, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @tmpfs_alloc_vp(%struct.mount* %175, i32 %178, i32 %181, %struct.vnode** %14)
  store i32 %182, i32* %17, align 4
  %183 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %184 = load %struct.vnode*, %struct.vnode** %183, align 8
  %185 = icmp ne %struct.vnode* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %174
  %187 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %188 = load %struct.vnode*, %struct.vnode** %187, align 8
  %189 = call i32 @vrele(%struct.vnode* %188)
  br label %190

190:                                              ; preds = %186, %174
  %191 = load %struct.vnode*, %struct.vnode** %14, align 8
  %192 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %191, %struct.vnode** %192, align 8
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %223

195:                                              ; preds = %190
  %196 = load %struct.vnode*, %struct.vnode** %8, align 8
  %197 = call i32 @VOP_UNLOCK(%struct.vnode* %196, i32 0)
  %198 = load %struct.vnode*, %struct.vnode** %10, align 8
  %199 = call i32 @VOP_UNLOCK(%struct.vnode* %198, i32 0)
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* @EBUSY, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %228

204:                                              ; preds = %195
  %205 = load %struct.mount*, %struct.mount** %15, align 8
  %206 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %16, align 8
  %207 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @LK_EXCLUSIVE, align 4
  %210 = call i32 @tmpfs_alloc_vp(%struct.mount* %205, i32 %208, i32 %209, %struct.vnode** %14)
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %228

214:                                              ; preds = %204
  %215 = load %struct.vnode*, %struct.vnode** %14, align 8
  %216 = call i32 @VOP_UNLOCK(%struct.vnode* %215, i32 0)
  %217 = load %struct.vnode*, %struct.vnode** %14, align 8
  %218 = load %struct.vnode*, %struct.vnode** %8, align 8
  %219 = icmp eq %struct.vnode* %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %221, i32* %17, align 4
  br label %228

222:                                              ; preds = %214
  br label %37

223:                                              ; preds = %190
  br label %224

224:                                              ; preds = %223, %171
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @tmpfs_rename_restarts, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* @tmpfs_rename_restarts, align 4
  store i32 0, i32* %7, align 4
  br label %248

228:                                              ; preds = %220, %213, %203, %137, %130, %120, %100, %61, %45
  %229 = load %struct.vnode*, %struct.vnode** %8, align 8
  %230 = call i32 @vrele(%struct.vnode* %229)
  %231 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %232 = load %struct.vnode*, %struct.vnode** %231, align 8
  %233 = call i32 @vrele(%struct.vnode* %232)
  %234 = load %struct.vnode*, %struct.vnode** %10, align 8
  %235 = call i32 @vrele(%struct.vnode* %234)
  %236 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %237 = load %struct.vnode*, %struct.vnode** %236, align 8
  %238 = icmp ne %struct.vnode* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %241 = load %struct.vnode*, %struct.vnode** %240, align 8
  %242 = call i32 @vrele(%struct.vnode* %241)
  br label %243

243:                                              ; preds = %239, %228
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* @tmpfs_rename_restarts, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* @tmpfs_rename_restarts, align 4
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %243, %224
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32, i32*, %struct.componentname*) #1

declare dso_local i32 @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local i32 @tmpfs_alloc_vp(%struct.mount*, i32, i32, %struct.vnode**) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
