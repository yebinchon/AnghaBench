; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_getlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i64, i64, i32, i32, i32, i32 }
%struct.nlm4_testargs = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nlm4_holder }
%struct.nlm4_holder = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.nlm4_testres = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }

@F_FLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected F_FLOCK for F_GETLK\00", align 1
@F_WRLCK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@nlm_xid = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nlm4_denied_grace_period = common dso_local global i64 0, align 8
@xdr_nlm4_testres = common dso_local global i64 0, align 8
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nlmgrace\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@nlm4_denied = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i8*, i32)* @nlm_getlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_getlock(%struct.nlm_host* %0, %struct.rpc_callextra* %1, i32 %2, %struct.timeval* %3, i32 %4, %struct.vnode* %5, i32 %6, %struct.flock* %7, i32 %8, i32 %9, i64 %10, i8* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlm_host*, align 8
  %16 = alloca %struct.rpc_callextra*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.flock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.nlm4_testargs, align 8
  %29 = alloca [32 x i8], align 16
  %30 = alloca %struct.nlm4_testres, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.nlm4_holder*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %15, align 8
  store %struct.rpc_callextra* %1, %struct.rpc_callextra** %16, align 8
  store i32 %2, i32* %17, align 4
  store %struct.timeval* %3, %struct.timeval** %18, align 8
  store i32 %4, i32* %19, align 4
  store %struct.vnode* %5, %struct.vnode** %20, align 8
  store i32 %6, i32* %21, align 4
  store %struct.flock* %7, %struct.flock** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i64 %10, i64* %25, align 8
  store i8* %11, i8** %26, align 8
  store i32 %12, i32* %27, align 4
  %37 = load i32, i32* %23, align 4
  %38 = load i32, i32* @F_FLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = bitcast %struct.nlm4_testargs* %28 to %struct.nlm4_testres*
  %45 = call i32 @memset(%struct.nlm4_testres* %44, i32 0, i32 64)
  %46 = call i32 @memset(%struct.nlm4_testres* %30, i32 0, i32 64)
  %47 = load %struct.flock*, %struct.flock** %22, align 8
  %48 = getelementptr inbounds %struct.flock, %struct.flock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @F_WRLCK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %34, align 4
  %53 = load %struct.flock*, %struct.flock** %22, align 8
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i64, i64* %25, align 8
  %58 = load i8*, i8** %26, align 8
  %59 = load i32, i32* %27, align 4
  %60 = getelementptr inbounds %struct.nlm4_testargs, %struct.nlm4_testargs* %28, i32 0, i32 3
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %62 = call i32 @nlm_init_lock(%struct.flock* %53, i32 %54, i32 %55, i32 %56, i64 %57, i8* %58, i32 %59, i32* %60, i8* %61)
  store i32 %62, i32* %35, align 4
  %63 = load i32, i32* %35, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %13
  %66 = load i32, i32* %35, align 4
  store i32 %66, i32* %14, align 4
  br label %181

67:                                               ; preds = %13
  %68 = load i32, i32* %34, align 4
  %69 = getelementptr inbounds %struct.nlm4_testargs, %struct.nlm4_testargs* %28, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  br label %70

70:                                               ; preds = %129, %101, %67
  %71 = load %struct.nlm_host*, %struct.nlm_host** %15, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %71, i32 %72)
  store i32* %73, i32** %32, align 8
  %74 = load i32*, i32** %32, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOLCK, align 4
  store i32 %77, i32* %14, align 4
  br label %181

78:                                               ; preds = %70
  %79 = call i32 @atomic_fetchadd_int(i32* @nlm_xid, i32 1)
  store i32 %79, i32* %31, align 4
  %80 = getelementptr inbounds %struct.nlm4_testargs, %struct.nlm4_testargs* %28, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = bitcast i32* %31 to i8*
  %83 = getelementptr inbounds %struct.nlm4_testargs, %struct.nlm4_testargs* %28, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %17, align 4
  %86 = bitcast %struct.nlm4_testargs* %28 to %struct.nlm4_testres*
  %87 = load i32*, i32** %32, align 8
  %88 = load %struct.rpc_callextra*, %struct.rpc_callextra** %16, align 8
  %89 = load %struct.timeval*, %struct.timeval** %18, align 8
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nlm_test_rpc(i32 %85, %struct.nlm4_testres* %86, %struct.nlm4_testres* %30, i32* %87, %struct.rpc_callextra* %88, i32 %91)
  store i32 %92, i32* %33, align 4
  %93 = load i32*, i32** %32, align 8
  %94 = call i32 @CLNT_RELEASE(i32* %93)
  %95 = load i32, i32* %33, align 4
  %96 = load i32, i32* @RPC_SUCCESS, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %78
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %19, align 4
  br label %70

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %14, align 4
  br label %181

106:                                              ; preds = %78
  %107 = getelementptr inbounds %struct.nlm4_testres, %struct.nlm4_testres* %30, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @nlm4_denied_grace_period, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load i64, i64* @xdr_nlm4_testres, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @xdr_free(i32 %114, %struct.nlm4_testres* %30)
  %116 = bitcast %struct.nlm4_testargs* %28 to %struct.nlm4_testres*
  %117 = load i32, i32* @PCATCH, align 4
  %118 = load i32, i32* @hz, align 4
  %119 = mul nsw i32 5, %118
  %120 = call i32 @tsleep(%struct.nlm4_testres* %116, i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %35, align 4
  %121 = load i32, i32* %35, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* @EWOULDBLOCK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %35, align 4
  store i32 %128, i32* %14, align 4
  br label %181

129:                                              ; preds = %123, %112
  br label %70

130:                                              ; preds = %106
  %131 = getelementptr inbounds %struct.nlm4_testres, %struct.nlm4_testres* %30, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @nlm4_denied, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %173

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.nlm4_testres, %struct.nlm4_testres* %30, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store %struct.nlm4_holder* %139, %struct.nlm4_holder** %36, align 8
  %140 = load %struct.nlm4_holder*, %struct.nlm4_holder** %36, align 8
  %141 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.flock*, %struct.flock** %22, align 8
  %144 = getelementptr inbounds %struct.flock, %struct.flock* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.nlm4_holder*, %struct.nlm4_holder** %36, align 8
  %146 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.flock*, %struct.flock** %22, align 8
  %149 = getelementptr inbounds %struct.flock, %struct.flock* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.nlm4_holder*, %struct.nlm4_holder** %36, align 8
  %151 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.flock*, %struct.flock** %22, align 8
  %154 = getelementptr inbounds %struct.flock, %struct.flock* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nlm4_holder*, %struct.nlm4_holder** %36, align 8
  %156 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %136
  %160 = load i64, i64* @F_WRLCK, align 8
  %161 = load %struct.flock*, %struct.flock** %22, align 8
  %162 = getelementptr inbounds %struct.flock, %struct.flock* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %167

163:                                              ; preds = %136
  %164 = load i64, i64* @F_RDLCK, align 8
  %165 = load %struct.flock*, %struct.flock** %22, align 8
  %166 = getelementptr inbounds %struct.flock, %struct.flock* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* @SEEK_SET, align 4
  %169 = load %struct.flock*, %struct.flock** %22, align 8
  %170 = getelementptr inbounds %struct.flock, %struct.flock* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.flock*, %struct.flock** %22, align 8
  %172 = getelementptr inbounds %struct.flock, %struct.flock* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  br label %177

173:                                              ; preds = %130
  %174 = load i64, i64* @F_UNLCK, align 8
  %175 = load %struct.flock*, %struct.flock** %22, align 8
  %176 = getelementptr inbounds %struct.flock, %struct.flock* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %167
  %178 = load i64, i64* @xdr_nlm4_testres, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @xdr_free(i32 %179, %struct.nlm4_testres* %30)
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %177, %127, %104, %76, %65
  %182 = load i32, i32* %14, align 4
  ret i32 %182
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.nlm4_testres*, i32, i32) #1

declare dso_local i32 @nlm_init_lock(%struct.flock*, i32, i32, i32, i64, i8*, i32, i32*, i8*) #1

declare dso_local i32* @nlm_host_get_rpc(%struct.nlm_host*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @nlm_test_rpc(i32, %struct.nlm4_testres*, %struct.nlm4_testres*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.nlm4_testres*) #1

declare dso_local i32 @tsleep(%struct.nlm4_testres*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
