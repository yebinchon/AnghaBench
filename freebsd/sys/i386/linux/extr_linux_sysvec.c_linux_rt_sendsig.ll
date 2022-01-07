; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_rt_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_rt_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_9__, %struct.trapframe*, %struct.proc* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.trapframe = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.l_rt_sigframe = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_10__, i32*, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@LINUX_SS_ONSTACK = common dso_local global i32 0, align 4
@LINUX_SS_DISABLE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@linux_rt_sigcode = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_VM = common dso_local global i32 0, align 4
@PSL_D = common dso_local global i32 0, align 4
@_ucodesel = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*, i32*)* @linux_rt_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_rt_sendsig(i32 %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.sigacts*, align 8
  %10 = alloca %struct.trapframe*, align 8
  %11 = alloca %struct.l_rt_sigframe*, align 8
  %12 = alloca %struct.l_rt_sigframe, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %7, align 8
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 3
  %19 = load %struct.proc*, %struct.proc** %18, align 8
  store %struct.proc* %19, %struct.proc** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.proc*, %struct.proc** %8, align 8
  %27 = load i32, i32* @MA_OWNED, align 4
  %28 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %26, i32 %27)
  %29 = load %struct.proc*, %struct.proc** %8, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load %struct.sigacts*, %struct.sigacts** %30, align 8
  store %struct.sigacts* %31, %struct.sigacts** %9, align 8
  %32 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %33 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %32, i32 0, i32 0
  %34 = load i32, i32* @MA_OWNED, align 4
  %35 = call i32 @mtx_assert(i32* %33, i32 %34)
  %36 = load %struct.thread*, %struct.thread** %7, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 2
  %38 = load %struct.trapframe*, %struct.trapframe** %37, align 8
  store %struct.trapframe* %38, %struct.trapframe** %10, align 8
  %39 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sigonstack(i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.thread*, %struct.thread** %7, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TDP_ALTSTACK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %3
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %54 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @SIGISMEMBER(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.thread*, %struct.thread** %7, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %63, %67
  %69 = sub i64 %68, 200
  %70 = inttoptr i64 %69 to %struct.l_rt_sigframe*
  store %struct.l_rt_sigframe* %70, %struct.l_rt_sigframe** %11, align 8
  br label %78

71:                                               ; preds = %52, %49, %3
  %72 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.l_rt_sigframe*
  %77 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %76, i64 -1
  store %struct.l_rt_sigframe* %77, %struct.l_rt_sigframe** %11, align 8
  br label %78

78:                                               ; preds = %71, %59
  %79 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %80 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %79, i32 0, i32 0
  %81 = call i32 @mtx_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @bsd_to_linux_signal(i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = call i32 @bzero(%struct.l_rt_sigframe* %12, i32 200)
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 5
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %11, align 8
  %90 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 4
  store i32* %90, i32** %91, align 8
  %92 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %11, align 8
  %93 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 3
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 2
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @ksiginfo_to_lsiginfo(%struct.TYPE_13__* %95, i32* %96, i32 %97)
  %99 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  %103 = load %struct.thread*, %struct.thread** %7, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.thread*, %struct.thread** %7, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  %117 = load %struct.thread*, %struct.thread** %7, align 8
  %118 = getelementptr inbounds %struct.thread, %struct.thread* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TDP_ALTSTACK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %78
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @LINUX_SS_ONSTACK, align 4
  br label %129

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  br label %133

131:                                              ; preds = %78
  %132 = load i32, i32* @LINUX_SS_DISABLE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = load %struct.proc*, %struct.proc** %8, align 8
  %139 = call i32 @PROC_UNLOCK(%struct.proc* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = call i32 @bsd_to_linux_sigset(i32* %140, %struct.TYPE_14__* %142)
  %144 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 20
  store i32 %147, i32* %150, align 4
  %151 = call i32 (...) @rgs()
  %152 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 19
  store i32 %151, i32* %154, align 8
  %155 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %156 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 18
  store i8* %157, i8** %160, align 8
  %161 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %162 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 17
  store i8* %163, i8** %166, align 8
  %167 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %168 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 16
  store i8* %169, i8** %172, align 8
  %173 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %174 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %173, i32 0, i32 15
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 15
  store i32 %175, i32* %178, align 8
  %179 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %180 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %179, i32 0, i32 14
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 14
  store i32 %181, i32* %184, align 4
  %185 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %186 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %185, i32 0, i32 13
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 13
  store i32 %187, i32* %190, align 8
  %191 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %192 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 12
  store i32 %193, i32* %196, align 4
  %197 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %198 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %204 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 11
  store i32 %205, i32* %208, align 8
  %209 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %210 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 10
  store i32 %211, i32* %214, align 4
  %215 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %216 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 9
  store i32 %217, i32* %220, align 8
  %221 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %222 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 8
  store i32 %223, i32* %226, align 4
  %227 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %228 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 7
  store i32 %229, i32* %232, align 8
  %233 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %234 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %240 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %246 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 6
  store i8* %247, i8** %250, align 8
  %251 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %252 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 5
  store i32 %253, i32* %256, align 8
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 4
  store i64 %259, i64* %262, align 8
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @bsd_to_linux_trapcode(i32 %263)
  %265 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %12, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 3
  store i32 %264, i32* %267, align 4
  %268 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %11, align 8
  %269 = call i64 @copyout(%struct.l_rt_sigframe* %12, %struct.l_rt_sigframe* %268, i32 200)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %133
  %272 = load %struct.proc*, %struct.proc** %8, align 8
  %273 = call i32 @PROC_LOCK(%struct.proc* %272)
  %274 = load %struct.thread*, %struct.thread** %7, align 8
  %275 = load i32, i32* @SIGILL, align 4
  %276 = call i32 @sigexit(%struct.thread* %274, i32 %275)
  br label %277

277:                                              ; preds = %271, %133
  %278 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %11, align 8
  %279 = ptrtoint %struct.l_rt_sigframe* %278 to i32
  %280 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %281 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* @linux_rt_sigcode, align 4
  %283 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %284 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  %285 = load i32, i32* @PSL_T, align 4
  %286 = load i32, i32* @PSL_VM, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @PSL_D, align 4
  %289 = or i32 %287, %288
  %290 = xor i32 %289, -1
  %291 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %292 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load i32, i32* @_ucodesel, align 4
  %296 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %297 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %296, i32 0, i32 6
  store i32 %295, i32* %297, align 8
  %298 = load i8*, i8** @_udatasel, align 8
  %299 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %300 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %299, i32 0, i32 5
  store i8* %298, i8** %300, align 8
  %301 = load i8*, i8** @_udatasel, align 8
  %302 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %303 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  %304 = load i8*, i8** @_udatasel, align 8
  %305 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %306 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %305, i32 0, i32 3
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** @_udatasel, align 8
  %308 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %309 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %308, i32 0, i32 2
  store i8* %307, i8** %309, align 8
  %310 = load %struct.proc*, %struct.proc** %8, align 8
  %311 = call i32 @PROC_LOCK(%struct.proc* %310)
  %312 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %313 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %312, i32 0, i32 0
  %314 = call i32 @mtx_lock(i32* %313)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @bzero(%struct.l_rt_sigframe*, i32) #1

declare dso_local i32 @ksiginfo_to_lsiginfo(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @bsd_to_linux_sigset(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @rgs(...) #1

declare dso_local i32 @bsd_to_linux_trapcode(i32) #1

declare dso_local i64 @copyout(%struct.l_rt_sigframe*, %struct.l_rt_sigframe*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
