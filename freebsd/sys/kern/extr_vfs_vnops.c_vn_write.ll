; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32, %struct.vnode* }
%struct.vnode = type { i64, %struct.mount* }
%struct.mount = type { i32 }
%struct.uio = type { i64, %struct.thread* }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"uio_td %p is not td %p\00", align 1
@FOF_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"No FOF_OFFSET\00", align 1
@VREG = common dso_local global i64 0, align 8
@IO_UNIT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@MNT_SYNCHRONOUS = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@POSIX_FADV_DONTNEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @vn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %18 = load %struct.uio*, %struct.uio** %7, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %20 = load %struct.thread*, %struct.thread** %19, align 8
  %21 = load %struct.thread*, %struct.thread** %10, align 8
  %22 = icmp eq %struct.thread* %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.uio*, %struct.uio** %7, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %26 = load %struct.thread*, %struct.thread** %25, align 8
  %27 = load %struct.thread*, %struct.thread** %10, align 8
  %28 = bitcast %struct.thread* %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FOF_OFFSET, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 3
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %11, align 8
  %37 = load %struct.vnode*, %struct.vnode** %11, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VREG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = call i32 (...) @bwillwrite()
  br label %44

44:                                               ; preds = %42, %5
  %45 = load i32, i32* @IO_UNIT, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.vnode*, %struct.vnode** %11, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VREG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.file*, %struct.file** %6, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @O_APPEND, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @IO_APPEND, align 4
  %60 = load i32, i32* %15, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %51, %44
  %63 = load %struct.file*, %struct.file** %6, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FNONBLOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @IO_NDELAY, align 4
  %71 = load i32, i32* %15, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.file*, %struct.file** %6, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @O_DIRECT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @IO_DIRECT, align 4
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load %struct.file*, %struct.file** %6, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @O_FSYNC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = load %struct.vnode*, %struct.vnode** %11, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 1
  %94 = load %struct.mount*, %struct.mount** %93, align 8
  %95 = icmp ne %struct.mount* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.vnode*, %struct.vnode** %11, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 1
  %99 = load %struct.mount*, %struct.mount** %98, align 8
  %100 = getelementptr inbounds %struct.mount, %struct.mount* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MNT_SYNCHRONOUS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96, %84
  %106 = load i32, i32* @IO_SYNC, align 4
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %105, %96, %91
  store %struct.mount* null, %struct.mount** %12, align 8
  %110 = load %struct.vnode*, %struct.vnode** %11, align 8
  %111 = getelementptr inbounds %struct.vnode, %struct.vnode* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VCHR, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct.vnode*, %struct.vnode** %11, align 8
  %117 = load i32, i32* @V_WAIT, align 4
  %118 = load i32, i32* @PCATCH, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @vn_start_write(%struct.vnode* %116, %struct.mount** %12, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %205

123:                                              ; preds = %115, %109
  %124 = load %struct.file*, %struct.file** %6, align 8
  %125 = load %struct.uio*, %struct.uio** %7, align 8
  %126 = call i32 @get_advice(%struct.file* %124, %struct.uio* %125)
  store i32 %126, i32* %17, align 4
  %127 = load %struct.mount*, %struct.mount** %12, align 8
  %128 = call i64 @MNT_SHARED_WRITES(%struct.mount* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %123
  %131 = load %struct.mount*, %struct.mount** %12, align 8
  %132 = icmp eq %struct.mount* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.vnode*, %struct.vnode** %11, align 8
  %135 = getelementptr inbounds %struct.vnode, %struct.vnode* %134, i32 0, i32 1
  %136 = load %struct.mount*, %struct.mount** %135, align 8
  %137 = call i64 @MNT_SHARED_WRITES(%struct.mount* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133, %123
  %140 = load i32, i32* @LK_SHARED, align 4
  store i32 %140, i32* %16, align 4
  br label %143

141:                                              ; preds = %133, %130
  %142 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = load %struct.vnode*, %struct.vnode** %11, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @LK_RETRY, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @vn_lock(%struct.vnode* %144, i32 %147)
  %149 = load i32, i32* %17, align 4
  switch i32 %149, label %157 [
    i32 130, label %150
    i32 128, label %150
    i32 131, label %150
    i32 129, label %156
  ]

150:                                              ; preds = %143, %143, %143
  %151 = load %struct.uio*, %struct.uio** %7, align 8
  %152 = load %struct.file*, %struct.file** %6, align 8
  %153 = call i32 @sequential_heuristic(%struct.uio* %151, %struct.file* %152)
  %154 = load i32, i32* %15, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %15, align 4
  br label %157

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %143, %156, %150
  %158 = load %struct.uio*, %struct.uio** %7, align 8
  %159 = getelementptr inbounds %struct.uio, %struct.uio* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %13, align 8
  %161 = load %struct.vnode*, %struct.vnode** %11, align 8
  %162 = load %struct.uio*, %struct.uio** %7, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.file*, %struct.file** %6, align 8
  %165 = getelementptr inbounds %struct.file, %struct.file* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @VOP_WRITE(%struct.vnode* %161, %struct.uio* %162, i32 %163, i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load %struct.uio*, %struct.uio** %7, align 8
  %169 = getelementptr inbounds %struct.uio, %struct.uio* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.file*, %struct.file** %6, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.vnode*, %struct.vnode** %11, align 8
  %174 = call i32 @VOP_UNLOCK(%struct.vnode* %173, i32 0)
  %175 = load %struct.vnode*, %struct.vnode** %11, align 8
  %176 = getelementptr inbounds %struct.vnode, %struct.vnode* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VCHR, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %157
  %181 = load %struct.mount*, %struct.mount** %12, align 8
  %182 = call i32 @vn_finished_write(%struct.mount* %181)
  br label %183

183:                                              ; preds = %180, %157
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %183
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, 131
  br i1 %188, label %189, label %204

189:                                              ; preds = %186
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.uio*, %struct.uio** %7, align 8
  %192 = getelementptr inbounds %struct.uio, %struct.uio* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load %struct.vnode*, %struct.vnode** %11, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.uio*, %struct.uio** %7, align 8
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, 1
  %202 = load i32, i32* @POSIX_FADV_DONTNEED, align 4
  %203 = call i32 @VOP_ADVISE(%struct.vnode* %196, i64 %197, i64 %201, i32 %202)
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %195, %189, %186, %183
  br label %205

205:                                              ; preds = %204, %122
  %206 = load i32, i32* %14, align 4
  ret i32 %206
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @get_advice(%struct.file*, %struct.uio*) #1

declare dso_local i64 @MNT_SHARED_WRITES(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @sequential_heuristic(%struct.uio*, %struct.file*) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VOP_ADVISE(%struct.vnode*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
