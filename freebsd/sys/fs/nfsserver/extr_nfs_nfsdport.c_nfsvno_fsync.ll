; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.bufobj, i64, %struct.TYPE_4__* }
%struct.bufobj = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.buf = type { i32 }

@MAX_COMMIT_COUNT = common dso_local global i32 0, align 4
@MNTK_USES_BCACHE = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SLEEPFAIL = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i64 0, align 8
@B_DELWRI = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@nfs_commit_miss = common dso_local global i32 0, align 4
@nfs_commit_blks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_fsync(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bufobj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buf*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAX_COMMIT_COUNT, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MNTK_USES_BCACHE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %23, %19, %5
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @vm_object_mightbedirty(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @VM_OBJECT_WLOCK(i64 %46)
  %48 = load %struct.vnode*, %struct.vnode** %6, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @OBJPC_SYNC, align 4
  %52 = call i32 @vm_object_page_clean(i64 %50, i32 0, i32 0, i32 %51)
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @VM_OBJECT_WUNLOCK(i64 %55)
  br label %57

57:                                               ; preds = %43, %37, %32
  %58 = load %struct.vnode*, %struct.vnode** %6, align 8
  %59 = load i32, i32* @MNT_WAIT, align 4
  %60 = load %struct.thread*, %struct.thread** %10, align 8
  %61 = call i32 @VOP_FSYNC(%struct.vnode* %58, i32 %59, %struct.thread* %60)
  store i32 %61, i32* %11, align 4
  br label %206

62:                                               ; preds = %23
  %63 = load %struct.vnode*, %struct.vnode** %6, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %13, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %75, %62
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PAGE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @PAGE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %90, %85
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %12, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %15, align 4
  %104 = load %struct.vnode*, %struct.vnode** %6, align 8
  %105 = getelementptr inbounds %struct.vnode, %struct.vnode* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %100
  %109 = load %struct.vnode*, %struct.vnode** %6, align 8
  %110 = getelementptr inbounds %struct.vnode, %struct.vnode* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @vm_object_mightbedirty(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @VM_OBJECT_WLOCK(i64 %117)
  %119 = load %struct.vnode*, %struct.vnode** %6, align 8
  %120 = getelementptr inbounds %struct.vnode, %struct.vnode* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* @OBJPC_SYNC, align 4
  %127 = call i32 @vm_object_page_clean(i64 %121, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.vnode*, %struct.vnode** %6, align 8
  %129 = getelementptr inbounds %struct.vnode, %struct.vnode* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @VM_OBJECT_WUNLOCK(i64 %130)
  br label %132

132:                                              ; preds = %114, %108, %100
  %133 = load %struct.vnode*, %struct.vnode** %6, align 8
  %134 = getelementptr inbounds %struct.vnode, %struct.vnode* %133, i32 0, i32 0
  store %struct.bufobj* %134, %struct.bufobj** %14, align 8
  %135 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %136 = call i32 @BO_LOCK(%struct.bufobj* %135)
  br label %137

137:                                              ; preds = %197, %158, %132
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %203

140:                                              ; preds = %137
  %141 = load %struct.vnode*, %struct.vnode** %6, align 8
  %142 = getelementptr inbounds %struct.vnode, %struct.vnode* %141, i32 0, i32 0
  %143 = load i32, i32* %15, align 4
  %144 = call %struct.buf* @gbincore(%struct.bufobj* %142, i32 %143)
  store %struct.buf* %144, %struct.buf** %16, align 8
  %145 = icmp ne %struct.buf* %144, null
  br i1 %145, label %146, label %190

146:                                              ; preds = %140
  %147 = load %struct.buf*, %struct.buf** %16, align 8
  %148 = load i32, i32* @LK_EXCLUSIVE, align 4
  %149 = load i32, i32* @LK_SLEEPFAIL, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @LK_INTERLOCK, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %154 = call i32 @BO_LOCKPTR(%struct.bufobj* %153)
  %155 = call i64 @BUF_LOCK(%struct.buf* %147, i32 %152, i32 %154)
  %156 = load i64, i64* @ENOLCK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %160 = call i32 @BO_LOCK(%struct.bufobj* %159)
  br label %137

161:                                              ; preds = %146
  %162 = load %struct.buf*, %struct.buf** %16, align 8
  %163 = getelementptr inbounds %struct.buf, %struct.buf* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @B_DELWRI, align 4
  %166 = load i32, i32* @B_INVAL, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = load i32, i32* @B_DELWRI, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %161
  %172 = load %struct.buf*, %struct.buf** %16, align 8
  %173 = call i32 @bremfree(%struct.buf* %172)
  %174 = load i32, i32* @B_ASYNC, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.buf*, %struct.buf** %16, align 8
  %177 = getelementptr inbounds %struct.buf, %struct.buf* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.buf*, %struct.buf** %16, align 8
  %181 = call i32 @bwrite(%struct.buf* %180)
  %182 = load i32, i32* @nfs_commit_miss, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* @nfs_commit_miss, align 4
  br label %187

184:                                              ; preds = %161
  %185 = load %struct.buf*, %struct.buf** %16, align 8
  %186 = call i32 @BUF_UNLOCK(%struct.buf* %185)
  br label %187

187:                                              ; preds = %184, %171
  %188 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %189 = call i32 @BO_LOCK(%struct.bufobj* %188)
  br label %190

190:                                              ; preds = %187, %140
  %191 = load i32, i32* @nfs_commit_blks, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @nfs_commit_blks, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %203

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %137

203:                                              ; preds = %196, %137
  %204 = load %struct.bufobj*, %struct.bufobj** %14, align 8
  %205 = call i32 @BO_UNLOCK(%struct.bufobj* %204)
  br label %206

206:                                              ; preds = %203, %57
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @NFSEXITCODE(i32 %207)
  %209 = load i32, i32* %11, align 4
  ret i32 %209
}

declare dso_local i64 @vm_object_mightbedirty(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @vm_object_page_clean(i64, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local %struct.buf* @gbincore(%struct.bufobj*, i32) #1

declare dso_local i64 @BUF_LOCK(%struct.buf*, i32, i32) #1

declare dso_local i32 @BO_LOCKPTR(%struct.bufobj*) #1

declare dso_local i32 @bremfree(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
