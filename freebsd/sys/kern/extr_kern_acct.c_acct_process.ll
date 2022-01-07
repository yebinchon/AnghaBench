; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32, %struct.plimit*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.plimit = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.timeval }
%struct.timeval = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.acctv3 = type { i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.rusage = type { i32, i32, i32, i32, i32 }

@acct_vp = common dso_local global i32* null, align 8
@acct_suspended = common dso_local global i64 0, align 8
@acct_sx = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@ANVER = common dso_local global i32 0, align 4
@acct_limit = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@acct_cred = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acct_process(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.acctv3, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.plimit*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.rusage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %13 = load i32*, i32** @acct_vp, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @acct_suspended, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %185

19:                                               ; preds = %15
  %20 = call i32 @sx_slock(i32* @acct_sx)
  %21 = load i32*, i32** @acct_vp, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @acct_suspended, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %19
  %27 = call i32 @sx_sunlock(i32* @acct_sx)
  store i32 0, i32* %2, align 4
  br label %185

28:                                               ; preds = %23
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load %struct.proc*, %struct.proc** %30, align 8
  store %struct.proc* %31, %struct.proc** %9, align 8
  %32 = call i32 @sx_slock(i32* @proctree_lock)
  %33 = load %struct.proc*, %struct.proc** %9, align 8
  %34 = call i32 @PROC_LOCK(%struct.proc* %33)
  %35 = load %struct.proc*, %struct.proc** %9, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @P_CONTROLT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %28
  %42 = load %struct.proc*, %struct.proc** %9, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 6
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.proc*, %struct.proc** %9, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 6
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @tty_udev(i64 %57)
  %59 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 14
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %41, %28
  %61 = load i32, i32* @NODEV, align 4
  %62 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 14
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %50
  %64 = call i32 @sx_sunlock(i32* @proctree_lock)
  %65 = load %struct.proc*, %struct.proc** %9, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 13
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bcopy(i32 %67, i32 %69, i32 4)
  %71 = load %struct.proc*, %struct.proc** %9, align 8
  %72 = call i32 @rufetchcalc(%struct.proc* %71, %struct.rusage* %10, %struct.timeval* %5, %struct.timeval* %6)
  %73 = bitcast %struct.timeval* %5 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = call i8* @encode_timeval(i64 %74)
  %76 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 12
  store i8* %75, i8** %76, align 8
  %77 = bitcast %struct.timeval* %6 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i8* @encode_timeval(i64 %78)
  %80 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 11
  store i8* %79, i8** %80, align 8
  %81 = call i32 @getboottime(%struct.timeval* %7)
  %82 = load %struct.proc*, %struct.proc** %9, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = call i32 @timevaladd(%struct.timeval* %7, %struct.timeval* %85)
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = call i32 @microuptime(%struct.timeval* %7)
  %91 = load %struct.proc*, %struct.proc** %9, align 8
  %92 = getelementptr inbounds %struct.proc, %struct.proc* %91, i32 0, i32 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i32 @timevalsub(%struct.timeval* %7, %struct.timeval* %94)
  %96 = bitcast %struct.timeval* %7 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = call i8* @encode_timeval(i64 %97)
  %99 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 10
  store i8* %98, i8** %99, align 8
  %100 = bitcast %struct.timeval* %7 to i8*
  %101 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  %102 = call i32 @timevaladd(%struct.timeval* %7, %struct.timeval* %6)
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @hz, align 4
  %106 = mul nsw i32 %104, %105
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @tick, align 4
  %110 = sdiv i32 %108, %109
  %111 = add nsw i32 %106, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %63
  %115 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %116, %118
  %120 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %119, %121
  %123 = load i32, i32* %11, align 4
  %124 = sdiv i32 %122, %123
  %125 = call i8* @encode_long(i32 %124)
  %126 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 9
  store i8* %125, i8** %126, align 8
  br label %129

127:                                              ; preds = %63
  %128 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 9
  store i8* null, i8** %128, align 8
  br label %129

129:                                              ; preds = %127, %114
  %130 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %131, %133
  %135 = call i8* @encode_long(i32 %134)
  %136 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 8
  store i8* %135, i8** %136, align 8
  %137 = load %struct.proc*, %struct.proc** %9, align 8
  %138 = getelementptr inbounds %struct.proc, %struct.proc* %137, i32 0, i32 3
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 7
  store i32 %141, i32* %142, align 8
  %143 = load %struct.proc*, %struct.proc** %9, align 8
  %144 = getelementptr inbounds %struct.proc, %struct.proc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 6
  store i32 %147, i32* %148, align 4
  %149 = load %struct.proc*, %struct.proc** %9, align 8
  %150 = getelementptr inbounds %struct.proc, %struct.proc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 5
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @ANVER, align 4
  %154 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 8
  %157 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 1
  store i32 3, i32* %158, align 4
  %159 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 3
  store i32 88, i32* %159, align 4
  %160 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %4, i32 0, i32 2
  store i32 88, i32* %160, align 8
  %161 = load %struct.proc*, %struct.proc** %9, align 8
  %162 = getelementptr inbounds %struct.proc, %struct.proc* %161, i32 0, i32 1
  %163 = load %struct.plimit*, %struct.plimit** %162, align 8
  store %struct.plimit* %163, %struct.plimit** %8, align 8
  %164 = load i32, i32* @acct_limit, align 4
  %165 = call %struct.plimit* @lim_hold(i32 %164)
  %166 = load %struct.proc*, %struct.proc** %9, align 8
  %167 = getelementptr inbounds %struct.proc, %struct.proc* %166, i32 0, i32 1
  store %struct.plimit* %165, %struct.plimit** %167, align 8
  %168 = load %struct.proc*, %struct.proc** %9, align 8
  %169 = call i32 @PROC_UNLOCK(%struct.proc* %168)
  %170 = load %struct.plimit*, %struct.plimit** %8, align 8
  %171 = call i32 @lim_free(%struct.plimit* %170)
  %172 = load i32, i32* @UIO_WRITE, align 4
  %173 = load i32*, i32** @acct_vp, align 8
  %174 = ptrtoint %struct.acctv3* %4 to i32
  %175 = load i32, i32* @UIO_SYSSPACE, align 4
  %176 = load i32, i32* @IO_APPEND, align 4
  %177 = load i32, i32* @IO_UNIT, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @acct_cred, align 4
  %180 = load i32, i32* @NOCRED, align 4
  %181 = load %struct.thread*, %struct.thread** %3, align 8
  %182 = call i32 @vn_rdwr(i32 %172, i32* %173, i32 %174, i32 88, i32 0, i32 %175, i32 %178, i32 %179, i32 %180, i32* null, %struct.thread* %181)
  store i32 %182, i32* %12, align 4
  %183 = call i32 @sx_sunlock(i32* @acct_sx)
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %129, %26, %18
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @tty_udev(i64) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @rufetchcalc(%struct.proc*, %struct.rusage*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i8* @encode_timeval(i64) #1

declare dso_local i32 @getboottime(%struct.timeval*) #1

declare dso_local i32 @timevaladd(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @encode_long(i32) #1

declare dso_local %struct.plimit* @lim_hold(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @lim_free(%struct.plimit*) #1

declare dso_local i32 @vn_rdwr(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
