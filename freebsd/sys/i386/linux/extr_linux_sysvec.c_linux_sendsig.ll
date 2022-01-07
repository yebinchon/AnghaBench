; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_8__, %struct.trapframe*, %struct.proc* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.trapframe = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.l_sigframe = type { i32, i32*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@linux_sigcode = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_VM = common dso_local global i32 0, align 4
@PSL_D = common dso_local global i32 0, align 4
@_ucodesel = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*, i32*)* @linux_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_sendsig(i32 %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.sigacts*, align 8
  %10 = alloca %struct.trapframe*, align 8
  %11 = alloca %struct.l_sigframe*, align 8
  %12 = alloca %struct.l_sigframe, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 3
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %8, align 8
  %21 = load %struct.proc*, %struct.proc** %8, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %21, i32 %22)
  %24 = load %struct.proc*, %struct.proc** %8, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 0
  %26 = load %struct.sigacts*, %struct.sigacts** %25, align 8
  store %struct.sigacts* %26, %struct.sigacts** %9, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %34 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %33, i32 0, i32 0
  %35 = load i32, i32* @MA_OWNED, align 4
  %36 = call i32 @mtx_assert(i32* %34, i32 %35)
  %37 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %38 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @SIGISMEMBER(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @linux_rt_sendsig(i32 %44, %struct.TYPE_11__* %45, i32* %46)
  br label %261

48:                                               ; preds = %3
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 2
  %51 = load %struct.trapframe*, %struct.trapframe** %50, align 8
  store %struct.trapframe* %51, %struct.trapframe** %10, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sigonstack(i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TDP_ALTSTACK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %48
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %67 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @SIGISMEMBER(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.thread*, %struct.thread** %7, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = sub i64 %81, 136
  %83 = inttoptr i64 %82 to %struct.l_sigframe*
  store %struct.l_sigframe* %83, %struct.l_sigframe** %11, align 8
  br label %91

84:                                               ; preds = %65, %62, %48
  %85 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.l_sigframe*
  %90 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %89, i64 -1
  store %struct.l_sigframe* %90, %struct.l_sigframe** %11, align 8
  br label %91

91:                                               ; preds = %84, %72
  %92 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %93 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %92, i32 0, i32 0
  %94 = call i32 @mtx_unlock(i32* %93)
  %95 = load %struct.proc*, %struct.proc** %8, align 8
  %96 = call i32 @PROC_UNLOCK(%struct.proc* %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @bsd_to_linux_signal(i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = call i32 @bzero(%struct.l_sigframe* %12, i32 136)
  %100 = load i32, i32* %4, align 4
  %101 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @bsd_to_linux_sigset(i32* %104, %struct.TYPE_10__* %13)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 20
  store i32 %107, i32* %109, align 4
  %110 = call i32 (...) @rgs()
  %111 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 19
  store i32 %110, i32* %112, align 8
  %113 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %114 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 18
  store i8* %115, i8** %117, align 8
  %118 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 17
  store i8* %120, i8** %122, align 8
  %123 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %124 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %123, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 16
  store i8* %125, i8** %127, align 8
  %128 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %129 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %128, i32 0, i32 15
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 15
  store i32 %130, i32* %132, align 8
  %133 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 14
  store i32 %135, i32* %137, align 4
  %138 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %139 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 8
  %143 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %144 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 4
  %148 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %149 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %154 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 11
  store i32 %155, i32* %157, align 8
  %158 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %159 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 10
  store i32 %160, i32* %162, align 4
  %163 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %164 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  %168 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %169 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 4
  %173 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %174 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 8
  %178 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %179 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %184 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %189 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  %193 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %194 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @bsd_to_linux_trapcode(i32 %205)
  %207 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %210, i32* %213, align 4
  %214 = load %struct.l_sigframe*, %struct.l_sigframe** %11, align 8
  %215 = call i64 @copyout(%struct.l_sigframe* %12, %struct.l_sigframe* %214, i32 136)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %91
  %218 = load %struct.proc*, %struct.proc** %8, align 8
  %219 = call i32 @PROC_LOCK(%struct.proc* %218)
  %220 = load %struct.thread*, %struct.thread** %7, align 8
  %221 = load i32, i32* @SIGILL, align 4
  %222 = call i32 @sigexit(%struct.thread* %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %91
  %224 = load %struct.l_sigframe*, %struct.l_sigframe** %11, align 8
  %225 = ptrtoint %struct.l_sigframe* %224 to i32
  %226 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %227 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @linux_sigcode, align 4
  %229 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %230 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @PSL_T, align 4
  %232 = load i32, i32* @PSL_VM, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @PSL_D, align 4
  %235 = or i32 %233, %234
  %236 = xor i32 %235, -1
  %237 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %238 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @_ucodesel, align 4
  %242 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %243 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  %244 = load i8*, i8** @_udatasel, align 8
  %245 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %246 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load i8*, i8** @_udatasel, align 8
  %248 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %249 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @_udatasel, align 8
  %251 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %252 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** @_udatasel, align 8
  %254 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %255 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  %256 = load %struct.proc*, %struct.proc** %8, align 8
  %257 = call i32 @PROC_LOCK(%struct.proc* %256)
  %258 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %259 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %258, i32 0, i32 0
  %260 = call i32 @mtx_lock(i32* %259)
  br label %261

261:                                              ; preds = %223, %43
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @linux_rt_sendsig(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @bzero(%struct.l_sigframe*, i32) #1

declare dso_local i32 @bsd_to_linux_sigset(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @rgs(...) #1

declare dso_local i32 @bsd_to_linux_trapcode(i32) #1

declare dso_local i64 @copyout(%struct.l_sigframe*, %struct.l_sigframe*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
