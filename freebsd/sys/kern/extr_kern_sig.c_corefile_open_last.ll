; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_corefile_open_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_corefile_open_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.nameidata = type { %struct.vnode* }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@VN_OPEN_NOAUDIT = common dso_local global i32 0, align 4
@VN_OPEN_NAMECACHE = common dso_local global i32 0, align 4
@capmode_coredump = common dso_local global i64 0, align 8
@VN_OPEN_NOCAPCHECK = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*u\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i32, i32, %struct.vnode**)* @corefile_open_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corefile_open_last(%struct.thread* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.vnode** %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode**, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vattr, align 8
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca %struct.timespec, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.vnode** %5, %struct.vnode*** %12, align 8
  store %struct.vnode* null, %struct.vnode** %13, align 8
  store %struct.vnode* null, %struct.vnode** %14, align 8
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* @VN_OPEN_NOAUDIT, align 4
  %29 = load i32, i32* @VN_OPEN_NAMECACHE, align 4
  %30 = or i32 %28, %29
  %31 = load i64, i64* @capmode_coredump, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @VN_OPEN_NOCAPCHECK, align 4
  br label %36

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %30, %37
  store i32 %38, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %39

39:                                               ; preds = %152, %36
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %155

43:                                               ; preds = %39
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = load i32, i32* @FWRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @O_NOFOLLOW, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %23, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @snprintf(i8* %59, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i8, i8* %23, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %65, i8* %71, align 1
  %72 = load i32, i32* @LOOKUP, align 4
  %73 = load i32, i32* @NOFOLLOW, align 4
  %74 = load i32, i32* @UIO_SYSSPACE, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.thread*, %struct.thread** %7, align 8
  %77 = call i32 @NDINIT(%struct.nameidata* %17, i32 %72, i32 %73, i32 %74, i8* %75, %struct.thread* %76)
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load %struct.thread*, %struct.thread** %7, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @vn_open_cred(%struct.nameidata* %17, i32* %20, i32 %78, i32 %79, i32 %82, i32* null)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %43
  br label %155

87:                                               ; preds = %43
  %88 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %89 = load %struct.vnode*, %struct.vnode** %88, align 8
  store %struct.vnode* %89, %struct.vnode** %15, align 8
  %90 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %91 = call i32 @NDFREE(%struct.nameidata* %17, i32 %90)
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @O_CREAT, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @O_CREAT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %98, %struct.vnode** %14, align 8
  br label %155

99:                                               ; preds = %87
  %100 = load %struct.vnode*, %struct.vnode** %15, align 8
  %101 = load %struct.thread*, %struct.thread** %7, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @VOP_GETATTR(%struct.vnode* %100, %struct.vattr* %16, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.thread*, %struct.thread** %7, align 8
  %109 = load %struct.vnode*, %struct.vnode** %15, align 8
  %110 = call i32 @vnode_close_locked(%struct.thread* %108, %struct.vnode* %109)
  br label %155

111:                                              ; preds = %99
  %112 = load %struct.vnode*, %struct.vnode** %13, align 8
  %113 = icmp eq %struct.vnode* %112, null
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  %125 = getelementptr inbounds %struct.timespec, %struct.timespec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  %132 = getelementptr inbounds %struct.timespec, %struct.timespec* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %128, %114, %111
  %136 = load %struct.vnode*, %struct.vnode** %13, align 8
  %137 = icmp ne %struct.vnode* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.thread*, %struct.thread** %7, align 8
  %140 = load %struct.vnode*, %struct.vnode** %13, align 8
  %141 = call i32 @vnode_close_locked(%struct.thread* %139, %struct.vnode* %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %143, %struct.vnode** %13, align 8
  %144 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  %145 = bitcast %struct.timespec* %24 to i8*
  %146 = bitcast %struct.timespec* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 16, i1 false)
  br label %151

147:                                              ; preds = %128, %121
  %148 = load %struct.thread*, %struct.thread** %7, align 8
  %149 = load %struct.vnode*, %struct.vnode** %15, align 8
  %150 = call i32 @vnode_close_locked(%struct.thread* %148, %struct.vnode* %149)
  br label %151

151:                                              ; preds = %147, %142
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %39

155:                                              ; preds = %107, %97, %86, %39
  %156 = load %struct.vnode*, %struct.vnode** %13, align 8
  %157 = icmp ne %struct.vnode* %156, null
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  %159 = load %struct.vnode*, %struct.vnode** %14, align 8
  %160 = icmp eq %struct.vnode* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load %struct.thread*, %struct.thread** %7, align 8
  %163 = getelementptr inbounds %struct.thread, %struct.thread* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @P_SUGID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load i32, i32* @EFAULT, align 4
  store i32 %171, i32* %18, align 4
  %172 = load %struct.thread*, %struct.thread** %7, align 8
  %173 = load %struct.vnode*, %struct.vnode** %13, align 8
  %174 = call i32 @vnode_close_locked(%struct.thread* %172, %struct.vnode* %173)
  br label %177

175:                                              ; preds = %161
  %176 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %176, %struct.vnode** %14, align 8
  br label %177

177:                                              ; preds = %175, %170
  br label %182

178:                                              ; preds = %158
  %179 = load %struct.thread*, %struct.thread** %7, align 8
  %180 = load %struct.vnode*, %struct.vnode** %13, align 8
  %181 = call i32 @vnode_close_locked(%struct.thread* %179, %struct.vnode* %180)
  br label %182

182:                                              ; preds = %178, %177
  br label %183

183:                                              ; preds = %182, %155
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load %struct.vnode*, %struct.vnode** %14, align 8
  %188 = icmp ne %struct.vnode* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load %struct.thread*, %struct.thread** %7, align 8
  %191 = load %struct.vnode*, %struct.vnode** %13, align 8
  %192 = call i32 @vnode_close_locked(%struct.thread* %190, %struct.vnode* %191)
  br label %193

193:                                              ; preds = %189, %186
  br label %197

194:                                              ; preds = %183
  %195 = load %struct.vnode*, %struct.vnode** %14, align 8
  %196 = load %struct.vnode**, %struct.vnode*** %12, align 8
  store %struct.vnode* %195, %struct.vnode** %196, align 8
  br label %197

197:                                              ; preds = %194, %193
  %198 = load i32, i32* %18, align 4
  ret i32 %198
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @vn_open_cred(%struct.nameidata*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @vnode_close_locked(%struct.thread*, %struct.vnode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
