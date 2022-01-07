; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_relookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_relookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.componentname = type { i32, i32, i8*, i64 }

@ISLASTCN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"relookup: Not given last component.\00", align 1
@LOCKPARENT = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"relookup: parent not wanted.\00", align 1
@RDONLY = common dso_local global i32 0, align 4
@ISSYMLINK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"nameiop must be LOOKUP\00", align 1
@VDIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"dp is not a directory\00", align 1
@LOCKLEAF = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"lookup: SAVESTART\00", align 1
@ISDOTDOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"relookup: lookup on dot-dot\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"leaf should be empty\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@FOLLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"relookup: symlink found.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relookup(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode** %1, %struct.vnode*** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store %struct.vnode* null, %struct.vnode** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.componentname*, %struct.componentname** %7, align 8
  %13 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ISLASTCN, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.componentname*, %struct.componentname** %7, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LOCKPARENT, align 4
  %22 = load i32, i32* @WANTPARENT, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.componentname*, %struct.componentname** %7, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RDONLY, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @ISSYMLINK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.componentname*, %struct.componentname** %7, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %38, %struct.vnode** %8, align 8
  %39 = load i32, i32* @LK_EXCLUSIVE, align 4
  %40 = load %struct.componentname*, %struct.componentname** %7, align 8
  %41 = getelementptr inbounds %struct.componentname, %struct.componentname* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vnode*, %struct.vnode** %8, align 8
  %43 = load i32, i32* @LK_EXCLUSIVE, align 4
  %44 = load i32, i32* @LK_RETRY, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vn_lock(%struct.vnode* %42, i32 %45)
  %47 = load %struct.componentname*, %struct.componentname** %7, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %3
  %55 = load %struct.componentname*, %struct.componentname** %7, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LOOKUP, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.vnode*, %struct.vnode** %8, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VDIR, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.componentname*, %struct.componentname** %7, align 8
  %70 = getelementptr inbounds %struct.componentname, %struct.componentname* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LOCKLEAF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %54
  %76 = load %struct.vnode*, %struct.vnode** %8, align 8
  %77 = call i32 @VOP_UNLOCK(%struct.vnode* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %54
  %79 = load %struct.vnode*, %struct.vnode** %8, align 8
  %80 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %79, %struct.vnode** %80, align 8
  %81 = load %struct.componentname*, %struct.componentname** %7, align 8
  %82 = getelementptr inbounds %struct.componentname, %struct.componentname* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SAVESTART, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %78
  store i32 0, i32* %4, align 4
  br label %241

90:                                               ; preds = %3
  %91 = load %struct.componentname*, %struct.componentname** %7, align 8
  %92 = getelementptr inbounds %struct.componentname, %struct.componentname* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ISDOTDOT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.vnode*, %struct.vnode** %8, align 8
  %101 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %102 = load %struct.componentname*, %struct.componentname** %7, align 8
  %103 = call i32 @VOP_LOOKUP(%struct.vnode* %100, %struct.vnode** %101, %struct.componentname* %102)
  store i32 %103, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %99
  %106 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %107 = load %struct.vnode*, %struct.vnode** %106, align 8
  %108 = icmp eq %struct.vnode* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @KASSERT(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @EJUSTRETURN, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %236

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @EROFS, align 4
  store i32 %119, i32* %11, align 4
  br label %236

120:                                              ; preds = %115
  %121 = load %struct.componentname*, %struct.componentname** %7, align 8
  %122 = getelementptr inbounds %struct.componentname, %struct.componentname* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SAVESTART, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.vnode*, %struct.vnode** %5, align 8
  %129 = call i32 @VREF(%struct.vnode* %128)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.componentname*, %struct.componentname** %7, align 8
  %132 = getelementptr inbounds %struct.componentname, %struct.componentname* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LOCKPARENT, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.vnode*, %struct.vnode** %8, align 8
  %139 = call i32 @VOP_UNLOCK(%struct.vnode* %138, i32 0)
  br label %140

140:                                              ; preds = %137, %130
  store i32 0, i32* %4, align 4
  br label %241

141:                                              ; preds = %99
  %142 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  store %struct.vnode* %143, %struct.vnode** %8, align 8
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load %struct.componentname*, %struct.componentname** %7, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DELETE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.componentname*, %struct.componentname** %7, align 8
  %154 = getelementptr inbounds %struct.componentname, %struct.componentname* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @RENAME, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152, %146
  %159 = load %struct.vnode*, %struct.vnode** %5, align 8
  %160 = load %struct.vnode*, %struct.vnode** %8, align 8
  %161 = icmp eq %struct.vnode* %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.vnode*, %struct.vnode** %5, align 8
  %164 = call i32 @vrele(%struct.vnode* %163)
  br label %168

165:                                              ; preds = %158
  %166 = load %struct.vnode*, %struct.vnode** %5, align 8
  %167 = call i32 @vput(%struct.vnode* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* @EROFS, align 4
  store i32 %169, i32* %11, align 4
  br label %236

170:                                              ; preds = %152, %141
  %171 = load %struct.componentname*, %struct.componentname** %7, align 8
  %172 = getelementptr inbounds %struct.componentname, %struct.componentname* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @LOCKPARENT, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %170
  %178 = load %struct.vnode*, %struct.vnode** %5, align 8
  %179 = load %struct.vnode*, %struct.vnode** %8, align 8
  %180 = icmp ne %struct.vnode* %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.vnode*, %struct.vnode** %5, align 8
  %186 = call i32 @VOP_UNLOCK(%struct.vnode* %185, i32 0)
  br label %190

187:                                              ; preds = %181
  %188 = load %struct.vnode*, %struct.vnode** %5, align 8
  %189 = call i32 @vput(%struct.vnode* %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %198

191:                                              ; preds = %177, %170
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load %struct.vnode*, %struct.vnode** %5, align 8
  %196 = call i32 @vrele(%struct.vnode* %195)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %190
  %199 = load %struct.vnode*, %struct.vnode** %8, align 8
  %200 = getelementptr inbounds %struct.vnode, %struct.vnode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VLNK, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %198
  %205 = load %struct.componentname*, %struct.componentname** %7, align 8
  %206 = getelementptr inbounds %struct.componentname, %struct.componentname* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @FOLLOW, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %204, %198
  %213 = phi i1 [ true, %198 ], [ %211, %204 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @KASSERT(i32 %214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %216 = load %struct.componentname*, %struct.componentname** %7, align 8
  %217 = getelementptr inbounds %struct.componentname, %struct.componentname* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @SAVESTART, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %212
  %223 = load %struct.vnode*, %struct.vnode** %5, align 8
  %224 = call i32 @VREF(%struct.vnode* %223)
  br label %225

225:                                              ; preds = %222, %212
  %226 = load %struct.componentname*, %struct.componentname** %7, align 8
  %227 = getelementptr inbounds %struct.componentname, %struct.componentname* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @LOCKLEAF, align 4
  %230 = and i32 %228, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.vnode*, %struct.vnode** %8, align 8
  %234 = call i32 @VOP_UNLOCK(%struct.vnode* %233, i32 0)
  br label %235

235:                                              ; preds = %232, %225
  store i32 0, i32* %4, align 4
  br label %241

236:                                              ; preds = %168, %118, %114
  %237 = load %struct.vnode*, %struct.vnode** %8, align 8
  %238 = call i32 @vput(%struct.vnode* %237)
  %239 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* null, %struct.vnode** %239, align 8
  %240 = load i32, i32* %11, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %236, %235, %140, %89
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
