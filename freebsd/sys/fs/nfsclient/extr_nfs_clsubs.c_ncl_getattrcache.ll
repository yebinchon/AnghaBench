; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_getattrcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_getattrcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64, i64, i32, i32 }
%struct.nfsnode = type { i32, i32, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vattr }
%struct.nfsmount = type { i32, i32, i32, i32 }

@time_second = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NMODIFIED = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@NCHG = common dso_local global i32 0, align 4
@NACC = common dso_local global i32 0, align 4
@NUPD = common dso_local global i32 0, align 4
@nfs_acdebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_getattrcache(%struct.vnode* %0, %struct.vattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.nfsnode*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.vattr* %1, %struct.vattr** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call %struct.nfsnode* @VTONFS(%struct.vnode* %13)
  store %struct.nfsnode* %14, %struct.nfsnode** %6, align 8
  %15 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %16 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.vattr* %17, %struct.vattr** %7, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nfsmount* @VFSTONFS(i32 %20)
  store %struct.nfsmount* %21, %struct.nfsmount** %8, align 8
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = call i32 @nfscl_mustflush(%struct.vnode* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %25 = call i32 @NFSLOCKNODE(%struct.nfsnode* %24)
  %26 = load i32, i32* @time_second, align 4
  %27 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %28 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %9, align 4
  %33 = load %struct.vattr*, %struct.vattr** %7, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDIR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %2
  %39 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %40 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NMODIFIED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %48 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %38
  %52 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %66

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %51
  br label %96

67:                                               ; preds = %2
  %68 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %69 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NMODIFIED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %77 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74, %67
  %81 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  br label %95

84:                                               ; preds = %74
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %87 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %92 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %95, %66
  %97 = load i32, i32* @time_second, align 4
  %98 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %99 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %109 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107, %104
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsstatsv1, i32 0, i32 1), align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsstatsv1, i32 0, i32 1), align 4
  %115 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %116 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %115)
  %117 = load %struct.vnode*, %struct.vnode** %4, align 8
  %118 = call i32 @KDTRACE_NFS_ATTRCACHE_GET_MISS(%struct.vnode* %117)
  %119 = load i32, i32* @ENOENT, align 4
  store i32 %119, i32* %3, align 4
  br label %232

120:                                              ; preds = %107, %96
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsstatsv1, i32 0, i32 0), align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsstatsv1, i32 0, i32 0), align 4
  store i32 0, i32* %12, align 4
  %123 = load %struct.vattr*, %struct.vattr** %7, align 8
  %124 = getelementptr inbounds %struct.vattr, %struct.vattr* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %127 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %180

130:                                              ; preds = %120
  %131 = load %struct.vattr*, %struct.vattr** %7, align 8
  %132 = getelementptr inbounds %struct.vattr, %struct.vattr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @VREG, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %173

136:                                              ; preds = %130
  %137 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %138 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NMODIFIED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %136
  %144 = load %struct.vattr*, %struct.vattr** %7, align 8
  %145 = getelementptr inbounds %struct.vattr, %struct.vattr* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %148 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %153 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.vattr*, %struct.vattr** %7, align 8
  %156 = getelementptr inbounds %struct.vattr, %struct.vattr* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %163

157:                                              ; preds = %143
  %158 = load %struct.vattr*, %struct.vattr** %7, align 8
  %159 = getelementptr inbounds %struct.vattr, %struct.vattr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %162 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %157, %151
  br label %170

164:                                              ; preds = %136
  %165 = load %struct.vattr*, %struct.vattr** %7, align 8
  %166 = getelementptr inbounds %struct.vattr, %struct.vattr* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %169 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %164, %163
  %171 = load %struct.vnode*, %struct.vnode** %4, align 8
  %172 = call i32 @ncl_pager_setsize(%struct.vnode* %171, i32* %11)
  store i32 %172, i32* %12, align 4
  br label %179

173:                                              ; preds = %130
  %174 = load %struct.vattr*, %struct.vattr** %7, align 8
  %175 = getelementptr inbounds %struct.vattr, %struct.vattr* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %178 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %173, %170
  br label %180

180:                                              ; preds = %179, %120
  %181 = load %struct.vattr*, %struct.vattr** %7, align 8
  %182 = ptrtoint %struct.vattr* %181 to i32
  %183 = load %struct.vattr*, %struct.vattr** %5, align 8
  %184 = ptrtoint %struct.vattr* %183 to i32
  %185 = call i32 @bcopy(i32 %182, i32 %184, i32 24)
  %186 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %187 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @NCHG, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %180
  %193 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %194 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NACC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %201 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.vattr*, %struct.vattr** %5, align 8
  %204 = getelementptr inbounds %struct.vattr, %struct.vattr* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %192
  %206 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %207 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @NUPD, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %214 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.vattr*, %struct.vattr** %5, align 8
  %217 = getelementptr inbounds %struct.vattr, %struct.vattr* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %212, %205
  br label %219

219:                                              ; preds = %218, %180
  %220 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %221 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %220)
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load %struct.vnode*, %struct.vnode** %4, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @vnode_pager_setsize(%struct.vnode* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %219
  %229 = load %struct.vnode*, %struct.vnode** %4, align 8
  %230 = load %struct.vattr*, %struct.vattr** %7, align 8
  %231 = call i32 @KDTRACE_NFS_ATTRCACHE_GET_HIT(%struct.vnode* %229, %struct.vattr* %230)
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %228, %112
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @nfscl_mustflush(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_GET_MISS(%struct.vnode*) #1

declare dso_local i32 @ncl_pager_setsize(%struct.vnode*, i32*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_GET_HIT(%struct.vnode*, %struct.vattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
