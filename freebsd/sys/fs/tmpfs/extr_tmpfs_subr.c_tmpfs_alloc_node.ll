; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.tmpfs_mount = type { i64, i64, i32, i32, i32*, i32, i32 }
%struct.tmpfs_node = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tmpfs_node*, i32*, i32, i32, i32 }

@VNOVAL = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@MNTK_UNMOUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_TMPFSNAME = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@OBJ_TMPFS_NODE = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"tmpfs_alloc_node: type %p %d\00", align 1
@tn_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_alloc_node(%struct.mount* %0, %struct.tmpfs_mount* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.tmpfs_node* %6, i8* %7, i64 %8, %struct.tmpfs_node** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.tmpfs_mount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tmpfs_node*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.tmpfs_node**, align 8
  %22 = alloca %struct.tmpfs_node*, align 8
  %23 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %12, align 8
  store %struct.tmpfs_mount* %1, %struct.tmpfs_mount** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.tmpfs_node* %6, %struct.tmpfs_node** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store %struct.tmpfs_node** %9, %struct.tmpfs_node*** %21, align 8
  %24 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %25 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = load %struct.tmpfs_node*, %struct.tmpfs_node** %18, align 8
  %30 = icmp eq %struct.tmpfs_node* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 132
  br label %34

34:                                               ; preds = %31, %10
  %35 = phi i1 [ false, %10 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @IMPLIES(i32 %28, i32 %36)
  %38 = call i32 @MPASS(i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 130
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %19, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @IFF(i32 %41, i32 %44)
  %46 = call i32 @MPASS(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 134
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 133
  br label %52

52:                                               ; preds = %49, %34
  %53 = phi i1 [ true, %34 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %20, align 8
  %56 = load i64, i64* @VNOVAL, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @IFF(i32 %54, i32 %58)
  %60 = call i32 @MPASS(i32 %59)
  %61 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %62 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %65 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @ENOSPC, align 4
  store i32 %69, i32* %11, align 4
  br label %277

70:                                               ; preds = %52
  %71 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %72 = call i64 @tmpfs_pages_check_avail(%struct.tmpfs_mount* %71, i32 1)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOSPC, align 4
  store i32 %75, i32* %11, align 4
  br label %277

76:                                               ; preds = %70
  %77 = load %struct.mount*, %struct.mount** %12, align 8
  %78 = getelementptr inbounds %struct.mount, %struct.mount* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MNTK_UNMOUNT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @EBUSY, align 4
  store i32 %84, i32* %11, align 4
  br label %277

85:                                               ; preds = %76
  %86 = load %struct.mount*, %struct.mount** %12, align 8
  %87 = getelementptr inbounds %struct.mount, %struct.mount* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MNT_RDONLY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @EROFS, align 4
  store i32 %93, i32* %11, align 4
  br label %277

94:                                               ; preds = %85
  %95 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %96 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = call i64 @uma_zalloc_arg(i32 %97, %struct.tmpfs_mount* %98, i32 %99)
  %101 = inttoptr i64 %100 to %struct.tmpfs_node*
  store %struct.tmpfs_node* %101, %struct.tmpfs_node** %22, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %104 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %106 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %105, i32 0, i32 13
  %107 = call i32 @vfs_timestamp(i32* %106)
  %108 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %109 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %112 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 4
  %113 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %114 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %113, i32 0, i32 15
  store i32 %110, i32* %114, align 8
  %115 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %116 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %115, i32 0, i32 16
  store i32 %110, i32* %116, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %119 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %118, i32 0, i32 12
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %122 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %125 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %127 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %126, i32 0, i32 5
  %128 = call i32 @alloc_unr64(i32* %127)
  %129 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %130 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  %131 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %132 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %134 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %249 [
    i32 134, label %136
    i32 133, label %136
    i32 132, label %140
    i32 131, label %202
    i32 128, label %202
    i32 130, label %203
    i32 129, label %230
  ]

136:                                              ; preds = %94, %94
  %137 = load i64, i64* %20, align 8
  %138 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %139 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %138, i32 0, i32 8
  store i64 %137, i64* %139, align 8
  br label %255

140:                                              ; preds = %94
  %141 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %142 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = call i32 @RB_INIT(i32* %143)
  %145 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %146 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = call i32 @LIST_INIT(i32* %147)
  %149 = load %struct.tmpfs_node*, %struct.tmpfs_node** %18, align 8
  %150 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %151 = icmp ne %struct.tmpfs_node* %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @MPASS(i32 %152)
  %154 = load %struct.tmpfs_node*, %struct.tmpfs_node** %18, align 8
  %155 = icmp eq %struct.tmpfs_node* %154, null
  %156 = zext i1 %155 to i32
  %157 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %158 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i32 @IMPLIES(i32 %156, i32 %161)
  %163 = call i32 @MPASS(i32 %162)
  %164 = load %struct.tmpfs_node*, %struct.tmpfs_node** %18, align 8
  %165 = icmp eq %struct.tmpfs_node* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %140
  %167 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  br label %170

168:                                              ; preds = %140
  %169 = load %struct.tmpfs_node*, %struct.tmpfs_node** %18, align 8
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi %struct.tmpfs_node* [ %167, %166 ], [ %169, %168 ]
  %172 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %173 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store %struct.tmpfs_node* %171, %struct.tmpfs_node** %174, align 8
  %175 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %176 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  store i32 0, i32* %177, align 8
  %178 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %179 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i32* null, i32** %180, align 8
  %181 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %182 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %186 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load %struct.tmpfs_node*, %struct.tmpfs_node** %187, align 8
  %189 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %188)
  %190 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %191 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load %struct.tmpfs_node*, %struct.tmpfs_node** %192, align 8
  %194 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %198 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load %struct.tmpfs_node*, %struct.tmpfs_node** %199, align 8
  %201 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %200)
  br label %255

202:                                              ; preds = %94, %94
  br label %255

203:                                              ; preds = %94
  %204 = load i8*, i8** %19, align 8
  %205 = call i32 @strlen(i8* %204)
  %206 = load i32, i32* @MAXPATHLEN, align 4
  %207 = icmp slt i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @MPASS(i32 %208)
  %210 = load i8*, i8** %19, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %213 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %215 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @M_TMPFSNAME, align 4
  %218 = load i32, i32* @M_WAITOK, align 4
  %219 = call i32 @malloc(i32 %216, i32 %217, i32 %218)
  %220 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %221 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  %222 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %223 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load i8*, i8** %19, align 8
  %226 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %227 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @memcpy(i32 %224, i8* %225, i32 %228)
  br label %255

230:                                              ; preds = %94
  %231 = load i32, i32* @OBJT_SWAP, align 4
  %232 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %233 = call i32 @vm_pager_allocate(i32 %231, i32* null, i32 0, i32 %232, i32 0, i32* null)
  %234 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %235 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  store i32 %233, i32* %23, align 4
  %237 = load i32, i32* %23, align 4
  %238 = call i32 @VM_OBJECT_WLOCK(i32 %237)
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* @OBJ_NOSPLIT, align 4
  %241 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @vm_object_set_flag(i32 %239, i32 %242)
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %246 = call i32 @vm_object_clear_flag(i32 %244, i32 %245)
  %247 = load i32, i32* %23, align 4
  %248 = call i32 @VM_OBJECT_WUNLOCK(i32 %247)
  br label %255

249:                                              ; preds = %94
  %250 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %251 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %252 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.tmpfs_node* %250, i32 %253)
  br label %255

255:                                              ; preds = %249, %230, %203, %202, %170, %136
  %256 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %257 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %256)
  %258 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %259 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %258, i32 0, i32 3
  %260 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %261 = load i32, i32* @tn_entries, align 4
  %262 = call i32 @LIST_INSERT_HEAD(i32* %259, %struct.tmpfs_node* %260, i32 %261)
  %263 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %264 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %263, i32 0, i32 2
  store i32 1, i32* %264, align 8
  %265 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %266 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %266, align 8
  %269 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %270 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %13, align 8
  %274 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %273)
  %275 = load %struct.tmpfs_node*, %struct.tmpfs_node** %22, align 8
  %276 = load %struct.tmpfs_node**, %struct.tmpfs_node*** %21, align 8
  store %struct.tmpfs_node* %275, %struct.tmpfs_node** %276, align 8
  store i32 0, i32* %11, align 4
  br label %277

277:                                              ; preds = %255, %92, %83, %74, %68
  %278 = load i32, i32* %11, align 4
  ret i32 %278
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @IMPLIES(i32, i32) #1

declare dso_local i32 @IFF(i32, i32) #1

declare dso_local i64 @tmpfs_pages_check_avail(%struct.tmpfs_mount*, i32) #1

declare dso_local i64 @uma_zalloc_arg(i32, %struct.tmpfs_mount*, i32) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @alloc_unr64(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @vm_pager_allocate(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_object_set_flag(i32, i32) #1

declare dso_local i32 @vm_object_clear_flag(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @panic(i8*, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @TMPFS_LOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @TMPFS_UNLOCK(%struct.tmpfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
