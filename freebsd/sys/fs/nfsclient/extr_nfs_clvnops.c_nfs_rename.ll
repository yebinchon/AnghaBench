; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vnode = type { i64, i64 }
%struct.nfsnode = type { %struct.nfsv4node*, %struct.TYPE_2__*, i32 }
%struct.nfsv4node = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HASBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nfs_rename: no name\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"nfs_rename: fvp == tvp (can't happen)\0A\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@M_NFSV4NODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @nfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_rename(%struct.vop_rename_args* %0) #0 {
  %2 = alloca %struct.vop_rename_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca %struct.nfsnode*, align 8
  %11 = alloca %struct.nfsv4node*, align 8
  %12 = alloca i32, align 4
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %2, align 8
  %13 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %3, align 8
  %16 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %16, i32 0, i32 5
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %4, align 8
  %19 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %20 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %19, i32 0, i32 4
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %5, align 8
  %22 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %23 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %22, i32 0, i32 0
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %6, align 8
  %25 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %26 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %25, i32 0, i32 3
  %27 = load %struct.componentname*, %struct.componentname** %26, align 8
  store %struct.componentname* %27, %struct.componentname** %7, align 8
  %28 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %29 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %28, i32 0, i32 2
  %30 = load %struct.componentname*, %struct.componentname** %29, align 8
  store %struct.componentname* %30, %struct.componentname** %8, align 8
  %31 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %32 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %31, i32 0, i32 1
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  %34 = call %struct.nfsnode* @VTONFS(%struct.vnode* %33)
  store %struct.nfsnode* %34, %struct.nfsnode** %9, align 8
  %35 = load %struct.vop_rename_args*, %struct.vop_rename_args** %2, align 8
  %36 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %35, i32 0, i32 0
  %37 = load %struct.vnode*, %struct.vnode** %36, align 8
  %38 = call %struct.nfsnode* @VTONFS(%struct.vnode* %37)
  store %struct.nfsnode* %38, %struct.nfsnode** %10, align 8
  store %struct.nfsv4node* null, %struct.nfsv4node** %11, align 8
  %39 = load %struct.componentname*, %struct.componentname** %7, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HASBUF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.componentname*, %struct.componentname** %8, align 8
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HASBUF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %45, %1
  %53 = phi i1 [ false, %1 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.vnode*, %struct.vnode** %3, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vnode*, %struct.vnode** %6, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %52
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = icmp ne %struct.vnode* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.vnode*, %struct.vnode** %3, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vnode*, %struct.vnode** %4, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66, %52
  %75 = load i32, i32* @EXDEV, align 4
  store i32 %75, i32* %12, align 4
  br label %344

76:                                               ; preds = %66, %63
  %77 = load %struct.vnode*, %struct.vnode** %3, align 8
  %78 = load %struct.vnode*, %struct.vnode** %4, align 8
  %79 = icmp eq %struct.vnode* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %344

82:                                               ; preds = %76
  %83 = load %struct.vnode*, %struct.vnode** %3, align 8
  %84 = load i32, i32* @LK_EXCLUSIVE, align 4
  %85 = call i32 @NFSVOPLOCK(%struct.vnode* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %344

88:                                               ; preds = %82
  %89 = load %struct.vnode*, %struct.vnode** %3, align 8
  %90 = load i32, i32* @MNT_WAIT, align 4
  %91 = load %struct.componentname*, %struct.componentname** %8, align 8
  %92 = getelementptr inbounds %struct.componentname, %struct.componentname* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VOP_FSYNC(%struct.vnode* %89, i32 %90, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.vnode*, %struct.vnode** %3, align 8
  %96 = call i32 @NFSVOPUNLOCK(%struct.vnode* %95, i32 0)
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %88
  %100 = load %struct.vnode*, %struct.vnode** %4, align 8
  %101 = icmp ne %struct.vnode* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.vnode*, %struct.vnode** %4, align 8
  %104 = load i32, i32* @MNT_WAIT, align 4
  %105 = load %struct.componentname*, %struct.componentname** %7, align 8
  %106 = getelementptr inbounds %struct.componentname, %struct.componentname* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @VOP_FSYNC(%struct.vnode* %103, i32 %104, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %102, %99, %88
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %344

113:                                              ; preds = %109
  %114 = load %struct.vnode*, %struct.vnode** %4, align 8
  %115 = icmp ne %struct.vnode* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load %struct.vnode*, %struct.vnode** %4, align 8
  %118 = call i32 @vrefcnt(%struct.vnode* %117)
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load %struct.vnode*, %struct.vnode** %4, align 8
  %122 = call %struct.nfsnode* @VTONFS(%struct.vnode* %121)
  %123 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %120
  %127 = load %struct.vnode*, %struct.vnode** %4, align 8
  %128 = getelementptr inbounds %struct.vnode, %struct.vnode* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VDIR, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.vnode*, %struct.vnode** %6, align 8
  %134 = load %struct.vnode*, %struct.vnode** %4, align 8
  %135 = load %struct.componentname*, %struct.componentname** %7, align 8
  %136 = call i32 @nfs_sillyrename(%struct.vnode* %133, %struct.vnode* %134, %struct.componentname* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load %struct.vnode*, %struct.vnode** %4, align 8
  %140 = call i32 @vput(%struct.vnode* %139)
  store %struct.vnode* null, %struct.vnode** %4, align 8
  br label %141

141:                                              ; preds = %138, %132, %126, %120, %116, %113
  %142 = load %struct.vnode*, %struct.vnode** %5, align 8
  %143 = load %struct.vnode*, %struct.vnode** %3, align 8
  %144 = load %struct.componentname*, %struct.componentname** %8, align 8
  %145 = getelementptr inbounds %struct.componentname, %struct.componentname* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.componentname*, %struct.componentname** %8, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vnode*, %struct.vnode** %6, align 8
  %151 = load %struct.vnode*, %struct.vnode** %4, align 8
  %152 = load %struct.componentname*, %struct.componentname** %7, align 8
  %153 = getelementptr inbounds %struct.componentname, %struct.componentname* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.componentname*, %struct.componentname** %7, align 8
  %156 = getelementptr inbounds %struct.componentname, %struct.componentname* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.componentname*, %struct.componentname** %7, align 8
  %159 = getelementptr inbounds %struct.componentname, %struct.componentname* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.componentname*, %struct.componentname** %7, align 8
  %162 = getelementptr inbounds %struct.componentname, %struct.componentname* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @nfs_renamerpc(%struct.vnode* %142, %struct.vnode* %143, i32 %146, i32 %149, %struct.vnode* %150, %struct.vnode* %151, i32 %154, i32 %157, i32 %160, i32 %163)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %322

167:                                              ; preds = %141
  %168 = load %struct.vnode*, %struct.vnode** %6, align 8
  %169 = call i64 @NFS_ISV4(%struct.vnode* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %322

171:                                              ; preds = %167
  %172 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %173 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 24, %177
  %179 = load %struct.componentname*, %struct.componentname** %7, align 8
  %180 = getelementptr inbounds %struct.componentname, %struct.componentname* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %178, %182
  %184 = sub i64 %183, 1
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @M_NFSV4NODE, align 4
  %187 = load i32, i32* @M_WAITOK, align 4
  %188 = call %struct.nfsv4node* @malloc(i32 %185, i32 %186, i32 %187)
  store %struct.nfsv4node* %188, %struct.nfsv4node** %11, align 8
  %189 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %190 = call i32 @NFSLOCKNODE(%struct.nfsnode* %189)
  %191 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %192 = call i32 @NFSLOCKNODE(%struct.nfsnode* %191)
  %193 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %194 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %193, i32 0, i32 0
  %195 = load %struct.nfsv4node*, %struct.nfsv4node** %194, align 8
  %196 = icmp ne %struct.nfsv4node* %195, null
  br i1 %196, label %197, label %310

197:                                              ; preds = %171
  %198 = load %struct.vnode*, %struct.vnode** %3, align 8
  %199 = getelementptr inbounds %struct.vnode, %struct.vnode* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @VREG, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %310

203:                                              ; preds = %197
  %204 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %205 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %204, i32 0, i32 0
  %206 = load %struct.nfsv4node*, %struct.nfsv4node** %205, align 8
  %207 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.componentname*, %struct.componentname** %7, align 8
  %210 = getelementptr inbounds %struct.componentname, %struct.componentname* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %257, label %213

213:                                              ; preds = %203
  %214 = load %struct.componentname*, %struct.componentname** %7, align 8
  %215 = getelementptr inbounds %struct.componentname, %struct.componentname* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %218 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %217, i32 0, i32 0
  %219 = load %struct.nfsv4node*, %struct.nfsv4node** %218, align 8
  %220 = call i32 @NFS4NODENAME(%struct.nfsv4node* %219)
  %221 = load %struct.componentname*, %struct.componentname** %7, align 8
  %222 = getelementptr inbounds %struct.componentname, %struct.componentname* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @NFSBCMP(i32 %216, i32 %220, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %257, label %226

226:                                              ; preds = %213
  %227 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %228 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %227, i32 0, i32 1
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %234 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %233, i32 0, i32 0
  %235 = load %struct.nfsv4node*, %struct.nfsv4node** %234, align 8
  %236 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %232, %237
  br i1 %238, label %257, label %239

239:                                              ; preds = %226
  %240 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %241 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %246 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %245, i32 0, i32 0
  %247 = load %struct.nfsv4node*, %struct.nfsv4node** %246, align 8
  %248 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %251 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %250, i32 0, i32 1
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @NFSBCMP(i32 %244, i32 %249, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %310

257:                                              ; preds = %239, %226, %213, %203
  %258 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %259 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %258, i32 0, i32 0
  %260 = load %struct.nfsv4node*, %struct.nfsv4node** %259, align 8
  %261 = load i32, i32* @M_NFSV4NODE, align 4
  %262 = call i32 @free(%struct.nfsv4node* %260, i32 %261)
  %263 = load %struct.nfsv4node*, %struct.nfsv4node** %11, align 8
  %264 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %265 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %264, i32 0, i32 0
  store %struct.nfsv4node* %263, %struct.nfsv4node** %265, align 8
  store %struct.nfsv4node* null, %struct.nfsv4node** %11, align 8
  %266 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %267 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %266, i32 0, i32 1
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %273 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %272, i32 0, i32 0
  %274 = load %struct.nfsv4node*, %struct.nfsv4node** %273, align 8
  %275 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %274, i32 0, i32 1
  store i64 %271, i64* %275, align 8
  %276 = load %struct.componentname*, %struct.componentname** %7, align 8
  %277 = getelementptr inbounds %struct.componentname, %struct.componentname* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %280 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %279, i32 0, i32 0
  %281 = load %struct.nfsv4node*, %struct.nfsv4node** %280, align 8
  %282 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 8
  %283 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %284 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %283, i32 0, i32 1
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %289 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %288, i32 0, i32 0
  %290 = load %struct.nfsv4node*, %struct.nfsv4node** %289, align 8
  %291 = getelementptr inbounds %struct.nfsv4node, %struct.nfsv4node* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %294 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %293, i32 0, i32 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @NFSBCOPY(i32 %287, i32 %292, i32 %297)
  %299 = load %struct.componentname*, %struct.componentname** %7, align 8
  %300 = getelementptr inbounds %struct.componentname, %struct.componentname* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %303 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %302, i32 0, i32 0
  %304 = load %struct.nfsv4node*, %struct.nfsv4node** %303, align 8
  %305 = call i32 @NFS4NODENAME(%struct.nfsv4node* %304)
  %306 = load %struct.componentname*, %struct.componentname** %7, align 8
  %307 = getelementptr inbounds %struct.componentname, %struct.componentname* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @NFSBCOPY(i32 %301, i32 %305, i32 %308)
  br label %310

310:                                              ; preds = %257, %239, %197, %171
  %311 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %312 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %311)
  %313 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %314 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %313)
  %315 = load %struct.nfsv4node*, %struct.nfsv4node** %11, align 8
  %316 = icmp ne %struct.nfsv4node* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load %struct.nfsv4node*, %struct.nfsv4node** %11, align 8
  %319 = load i32, i32* @M_NFSV4NODE, align 4
  %320 = call i32 @free(%struct.nfsv4node* %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %310
  br label %322

322:                                              ; preds = %321, %167, %141
  %323 = load %struct.vnode*, %struct.vnode** %3, align 8
  %324 = getelementptr inbounds %struct.vnode, %struct.vnode* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @VDIR, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %343

328:                                              ; preds = %322
  %329 = load %struct.vnode*, %struct.vnode** %4, align 8
  %330 = icmp ne %struct.vnode* %329, null
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  %332 = load %struct.vnode*, %struct.vnode** %4, align 8
  %333 = getelementptr inbounds %struct.vnode, %struct.vnode* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @VDIR, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load %struct.vnode*, %struct.vnode** %6, align 8
  %339 = call i32 @cache_purge(%struct.vnode* %338)
  br label %340

340:                                              ; preds = %337, %331, %328
  %341 = load %struct.vnode*, %struct.vnode** %5, align 8
  %342 = call i32 @cache_purge(%struct.vnode* %341)
  br label %343

343:                                              ; preds = %340, %322
  br label %344

344:                                              ; preds = %343, %112, %87, %80, %74
  %345 = load %struct.vnode*, %struct.vnode** %6, align 8
  %346 = load %struct.vnode*, %struct.vnode** %4, align 8
  %347 = icmp eq %struct.vnode* %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = load %struct.vnode*, %struct.vnode** %6, align 8
  %350 = call i32 @vrele(%struct.vnode* %349)
  br label %354

351:                                              ; preds = %344
  %352 = load %struct.vnode*, %struct.vnode** %6, align 8
  %353 = call i32 @vput(%struct.vnode* %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load %struct.vnode*, %struct.vnode** %4, align 8
  %356 = icmp ne %struct.vnode* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load %struct.vnode*, %struct.vnode** %4, align 8
  %359 = call i32 @vput(%struct.vnode* %358)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load %struct.vnode*, %struct.vnode** %5, align 8
  %362 = call i32 @vrele(%struct.vnode* %361)
  %363 = load %struct.vnode*, %struct.vnode** %3, align 8
  %364 = call i32 @vrele(%struct.vnode* %363)
  %365 = load i32, i32* %12, align 4
  %366 = load i32, i32* @ENOENT, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %360
  store i32 0, i32* %12, align 4
  br label %369

369:                                              ; preds = %368, %360
  %370 = load i32, i32* %12, align 4
  ret i32 %370
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, i32) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vrefcnt(%struct.vnode*) #1

declare dso_local i32 @nfs_sillyrename(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @nfs_renamerpc(%struct.vnode*, %struct.vnode*, i32, i32, %struct.vnode*, %struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local %struct.nfsv4node* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @NFSBCMP(i32, i32, i32) #1

declare dso_local i32 @NFS4NODENAME(%struct.nfsv4node*) #1

declare dso_local i32 @free(%struct.nfsv4node*, i32) #1

declare dso_local i32 @NFSBCOPY(i32, i32, i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
