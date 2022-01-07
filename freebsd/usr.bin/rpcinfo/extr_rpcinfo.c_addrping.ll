; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_addrping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_addrping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.rpc_err = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.netconfig = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"could not find %s\00", align 1
@MIN_VERS = common dso_local global i64 0, align 8
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@CLSET_FD_NCLOSE = common dso_local global i32 0, align 4
@CLGET_FD = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@MAX_VERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8**)* @addrping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrping(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.rpc_err, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.netconfig*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22, %4
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.netconfig* @getnetconfigent(i8* %31)
  store %struct.netconfig* %32, %struct.netconfig** %18, align 8
  %33 = load %struct.netconfig*, %struct.netconfig** %18, align 8
  %34 = icmp eq %struct.netconfig* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 10, i32* %39, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @getprognum(i8* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @MIN_VERS, align 8
  store i64 %48, i64* %13, align 8
  br label %54

49:                                               ; preds = %38
  %50 = load i8**, i8*** %8, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @getvers(i8* %52)
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %49, %47
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.netconfig*, %struct.netconfig** %18, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32* @clnt_addr_create(i8* %55, %struct.netconfig* %56, i64 %57, i64 %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @NULLPROC, align 4
  %62 = load i64, i64* @xdr_void, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @xdr_void, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @CLNT_CALL(i32* %60, i32 %61, i32 %63, i8* null, i32 %65, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %10)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %84

69:                                               ; preds = %54
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @pstatus(i32* %70, i64 %71, i64 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %17, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @CLNT_DESTROY(i32* %77)
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %76
  br label %196

84:                                               ; preds = %54
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @CLSET_FD_NCLOSE, align 4
  %87 = call i32 @CLNT_CONTROL(i32* %85, i32 %86, i8* null)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @CLGET_FD, align 4
  %90 = bitcast i32* %19 to i8*
  %91 = call i32 @CLNT_CONTROL(i32* %88, i32 %89, i8* %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %84
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @clnt_geterr(i32* %96, %struct.rpc_err* %16)
  %98 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %16, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %14, align 8
  %101 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %16, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %15, align 8
  br label %155

104:                                              ; preds = %84
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @RPC_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @CLNT_DESTROY(i32* %109)
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.netconfig*, %struct.netconfig** %18, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @MAX_VERS, align 8
  %115 = call i32* @clnt_addr_create(i8* %111, %struct.netconfig* %112, i64 %113, i64 %114)
  store i32* %115, i32** %9, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* @NULLPROC, align 4
  %118 = load i64, i64* @xdr_void, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64, i64* @xdr_void, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @CLNT_CALL(i32* %116, i32 %117, i32 %119, i8* null, i32 %121, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %10)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %108
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @clnt_geterr(i32* %127, %struct.rpc_err* %16)
  %129 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %16, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %14, align 8
  %132 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %16, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %15, align 8
  br label %148

135:                                              ; preds = %108
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @RPC_SUCCESS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  store i64 0, i64* %14, align 8
  %140 = load i64, i64* @MAX_VERS, align 8
  store i64 %140, i64* %15, align 8
  br label %147

141:                                              ; preds = %135
  %142 = load i32*, i32** %9, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @MAX_VERS, align 8
  %145 = call i64 @pstatus(i32* %142, i64 %143, i64 %144)
  %146 = call i32 @exit(i32 1) #3
  unreachable

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %126
  br label %154

149:                                              ; preds = %104
  %150 = load i32*, i32** %9, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i64 @pstatus(i32* %150, i64 %151, i64 0)
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %95
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @CLNT_DESTROY(i32* %156)
  %158 = load i64, i64* %14, align 8
  store i64 %158, i64* %13, align 8
  br label %159

159:                                              ; preds = %185, %155
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp sle i64 %160, %161
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load i8*, i8** %5, align 8
  %165 = load %struct.netconfig*, %struct.netconfig** %18, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i32* @clnt_addr_create(i8* %164, %struct.netconfig* %165, i64 %166, i64 %167)
  store i32* %168, i32** %9, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* @NULLPROC, align 4
  %171 = load i64, i64* @xdr_void, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i64, i64* @xdr_void, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @CLNT_CALL(i32* %169, i32 %170, i32 %172, i8* null, i32 %174, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %10)
  store i32 %175, i32* %11, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %13, align 8
  %179 = call i64 @pstatus(i32* %176, i64 %177, i64 %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %163
  store i32 1, i32* %17, align 4
  br label %182

182:                                              ; preds = %181, %163
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @CLNT_DESTROY(i32* %183)
  br label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %13, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %13, align 8
  br label %159

188:                                              ; preds = %159
  %189 = load i32, i32* %19, align 4
  %190 = call i32 @close(i32 %189)
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = call i32 @exit(i32 1) #3
  unreachable

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195, %83
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @getprognum(i8*) #1

declare dso_local i64 @getvers(i8*) #1

declare dso_local i32* @clnt_addr_create(i8*, %struct.netconfig*, i64, i64) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i64 @pstatus(i32*, i64, i64) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

declare dso_local i32 @clnt_geterr(i32*, %struct.rpc_err*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
