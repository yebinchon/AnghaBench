; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_advlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_advlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_5__*, %struct.ucred* }
%struct.TYPE_5__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vop_advlock_args = type { i32, i32, %struct.flock*, %struct.vnode* }
%struct.flock = type { i64, i64, i64, i32 }
%struct.vnode = type { i32 }
%struct.fuse_filehandle = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_lk_out*, %struct.fuse_lk_in* }
%struct.fuse_lk_out = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.fuse_lk_in = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@FSESS_POSIX_LOCKS = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@FUSE_GETLK = common dso_local global i32 0, align 4
@FUSE_SETLK = common dso_local global i32 0, align 4
@FUSE_SETLKW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_advlock_args*)* @fuse_vnop_advlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_advlock(%struct.vop_advlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlock_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.flock*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_filehandle*, align 8
  %10 = alloca %struct.fuse_dispatcher, align 8
  %11 = alloca %struct.fuse_lk_in*, align 8
  %12 = alloca %struct.fuse_lk_out*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vop_advlock_args* %0, %struct.vop_advlock_args** %3, align 8
  %17 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %17, i32 0, i32 3
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %19, %struct.vnode** %4, align 8
  %20 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %20, i32 0, i32 2
  %22 = load %struct.flock*, %struct.flock** %21, align 8
  store %struct.flock* %22, %struct.flock** %5, align 8
  %23 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %23, %struct.thread** %6, align 8
  %24 = load %struct.thread*, %struct.thread** %6, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load %struct.ucred*, %struct.ucred** %25, align 8
  store %struct.ucred* %26, %struct.ucred** %7, align 8
  %27 = load %struct.thread*, %struct.thread** %6, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = call i32 @vnode_mount(%struct.vnode* %35)
  %37 = call %struct.TYPE_8__* @fuse_get_mpdata(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = call i64 @fuse_isdeadfs(%struct.vnode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %209

45:                                               ; preds = %1
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @FSESS_POSIX_LOCKS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %52 = call i32 @vop_stdadvlock(%struct.vop_advlock_args* %51)
  store i32 %52, i32* %2, align 4
  br label %209

53:                                               ; preds = %45
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @F_FLOCK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %60 = call i32 @vop_stdadvlock(%struct.vop_advlock_args* %59)
  store i32 %60, i32* %2, align 4
  br label %209

61:                                               ; preds = %53
  %62 = load %struct.vnode*, %struct.vnode** %4, align 8
  %63 = load %struct.ucred*, %struct.ucred** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @fuse_filehandle_get_anyflags(%struct.vnode* %62, %struct.fuse_filehandle** %9, %struct.ucred* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %2, align 4
  br label %209

70:                                               ; preds = %61
  %71 = call i32 @fdisp_init(%struct.fuse_dispatcher* %10, i32 40)
  %72 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %73 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %81 [
    i32 130, label %75
    i32 129, label %77
    i32 128, label %79
  ]

75:                                               ; preds = %70
  %76 = load i32, i32* @FUSE_GETLK, align 4
  store i32 %76, i32* %13, align 4
  br label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @FUSE_SETLK, align 4
  store i32 %78, i32* %13, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @FUSE_SETLKW, align 4
  store i32 %80, i32* %13, align 4
  br label %83

81:                                               ; preds = %70
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %2, align 4
  br label %209

83:                                               ; preds = %79, %77, %75
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.vnode*, %struct.vnode** %4, align 8
  %86 = load %struct.thread*, %struct.thread** %6, align 8
  %87 = load %struct.ucred*, %struct.ucred** %7, align 8
  %88 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %10, i32 %84, %struct.vnode* %85, %struct.thread* %86, %struct.ucred* %87)
  %89 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %10, i32 0, i32 1
  %90 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %89, align 8
  store %struct.fuse_lk_in* %90, %struct.fuse_lk_in** %11, align 8
  %91 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %9, align 8
  %92 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %95 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.flock*, %struct.flock** %5, align 8
  %97 = getelementptr inbounds %struct.flock, %struct.flock* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %100 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.flock*, %struct.flock** %5, align 8
  %102 = getelementptr inbounds %struct.flock, %struct.flock* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %105 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.flock*, %struct.flock** %5, align 8
  %108 = getelementptr inbounds %struct.flock, %struct.flock* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %83
  %112 = load %struct.flock*, %struct.flock** %5, align 8
  %113 = getelementptr inbounds %struct.flock, %struct.flock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.flock*, %struct.flock** %5, align 8
  %116 = getelementptr inbounds %struct.flock, %struct.flock* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = sub nsw i64 %118, 1
  %120 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %121 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i64 %119, i64* %122, align 8
  br label %128

123:                                              ; preds = %83
  %124 = load i64, i64* @INT64_MAX, align 8
  %125 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %126 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i64 %124, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %111
  %129 = load %struct.flock*, %struct.flock** %5, align 8
  %130 = getelementptr inbounds %struct.flock, %struct.flock* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %133 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i64 %131, i64* %134, align 8
  %135 = load %struct.flock*, %struct.flock** %5, align 8
  %136 = getelementptr inbounds %struct.flock, %struct.flock* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fuse_lk_in*, %struct.fuse_lk_in** %11, align 8
  %139 = getelementptr inbounds %struct.fuse_lk_in, %struct.fuse_lk_in* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 8
  %141 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %10)
  store i32 %141, i32* %15, align 4
  %142 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %10)
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %207

145:                                              ; preds = %128
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @FUSE_GETLK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %207

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %10, i32 0, i32 0
  %151 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %150, align 8
  store %struct.fuse_lk_out* %151, %struct.fuse_lk_out** %12, align 8
  %152 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %153 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.flock*, %struct.flock** %5, align 8
  %157 = getelementptr inbounds %struct.flock, %struct.flock* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %159 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.flock*, %struct.flock** %5, align 8
  %163 = getelementptr inbounds %struct.flock, %struct.flock* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %165 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @F_UNLCK, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %206

170:                                              ; preds = %149
  %171 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %172 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.flock*, %struct.flock** %5, align 8
  %176 = getelementptr inbounds %struct.flock, %struct.flock* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %178 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @INT64_MAX, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load %struct.flock*, %struct.flock** %5, align 8
  %185 = getelementptr inbounds %struct.flock, %struct.flock* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  br label %199

186:                                              ; preds = %170
  %187 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %188 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %192 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %190, %194
  %196 = add nsw i64 %195, 1
  %197 = load %struct.flock*, %struct.flock** %5, align 8
  %198 = getelementptr inbounds %struct.flock, %struct.flock* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %186, %183
  %200 = load %struct.fuse_lk_out*, %struct.fuse_lk_out** %12, align 8
  %201 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.flock*, %struct.flock** %5, align 8
  %205 = getelementptr inbounds %struct.flock, %struct.flock* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %199, %149
  br label %207

207:                                              ; preds = %206, %145, %128
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %81, %68, %58, %50, %43
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_8__* @fuse_get_mpdata(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @vop_stdadvlock(%struct.vop_advlock_args*) #1

declare dso_local i32 @fuse_filehandle_get_anyflags(%struct.vnode*, %struct.fuse_filehandle**, %struct.ucred*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
