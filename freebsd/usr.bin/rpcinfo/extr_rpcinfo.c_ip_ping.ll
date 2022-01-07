; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_ip_ping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_ip_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.sockaddr_in = type { i8* }
%struct.rpc_err = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@RPC_ANYFD = common dso_local global i32 0, align 4
@MIN_VERS = common dso_local global i64 0, align 8
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@CLSET_FD_NCLOSE = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@MAX_VERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8**)* @ip_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_ping(i32 %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.sockaddr_in, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rpc_err, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %20 = load i32, i32* @RPC_ANYFD, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %4
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 10, i32* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @getprognum(i8* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @get_inet_address(%struct.sockaddr_in* %12, i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* @MIN_VERS, align 8
  store i64 %42, i64* %15, align 8
  br label %48

43:                                               ; preds = %28
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @getvers(i8* %46)
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %43, %41
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @htons(i32 %49)
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32* @clnt_com_create(%struct.sockaddr_in* %12, i64 %52, i64 %53, i32* %10, i8* %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @NULLPROC, align 4
  %58 = load i64, i64* @xdr_void, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @xdr_void, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @CLNT_CALL(i32* %56, i32 %57, i32 %59, i8* null, i32 %61, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %76

65:                                               ; preds = %48
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @pstatus(i32* %66, i64 %67, i64 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %65
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @CLNT_DESTROY(i32* %74)
  br label %188

76:                                               ; preds = %48
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @CLSET_FD_NCLOSE, align 4
  %79 = call i32 @CLNT_CONTROL(i32* %77, i32 %78, i8* null)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @clnt_geterr(i32* %84, %struct.rpc_err* %18)
  %86 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %16, align 8
  %89 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %17, align 8
  br label %145

92:                                               ; preds = %76
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @RPC_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %92
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @CLNT_DESTROY(i32* %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @htons(i32 %99)
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i8* %100, i8** %101, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @MAX_VERS, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32* @clnt_com_create(%struct.sockaddr_in* %12, i64 %102, i64 %103, i32* %10, i8* %104)
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @NULLPROC, align 4
  %108 = load i64, i64* @xdr_void, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* @xdr_void, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @CLNT_CALL(i32* %106, i32 %107, i32 %109, i8* null, i32 %111, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %96
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @clnt_geterr(i32* %117, %struct.rpc_err* %18)
  %119 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %16, align 8
  %122 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %17, align 8
  br label %138

125:                                              ; preds = %96
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @RPC_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  store i64 0, i64* %16, align 8
  %130 = load i64, i64* @MAX_VERS, align 8
  store i64 %130, i64* %17, align 8
  br label %137

131:                                              ; preds = %125
  %132 = load i32*, i32** %9, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* @MAX_VERS, align 8
  %135 = call i64 @pstatus(i32* %132, i64 %133, i64 %134)
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %116
  br label %144

139:                                              ; preds = %92
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = call i64 @pstatus(i32* %140, i64 %141, i64 0)
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %83
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @CLNT_DESTROY(i32* %146)
  %148 = load i64, i64* %16, align 8
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %177, %145
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %17, align 8
  %152 = icmp sle i64 %150, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = call i8* @htons(i32 %154)
  %156 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i8* %155, i8** %156, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32* @clnt_com_create(%struct.sockaddr_in* %12, i64 %157, i64 %158, i32* %10, i8* %159)
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* @NULLPROC, align 4
  %163 = load i64, i64* @xdr_void, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i64, i64* @xdr_void, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @CLNT_CALL(i32* %161, i32 %162, i32 %164, i8* null, i32 %166, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %167, i32* %13, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i64 @pstatus(i32* %168, i64 %169, i64 %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %153
  store i32 1, i32* %19, align 4
  br label %174

174:                                              ; preds = %173, %153
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @CLNT_DESTROY(i32* %175)
  br label %177

177:                                              ; preds = %174
  %178 = load i64, i64* %15, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %15, align 8
  br label %149

180:                                              ; preds = %149
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 @exit(i32 1) #3
  unreachable

185:                                              ; preds = %180
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @close(i32 %186)
  br label %188

188:                                              ; preds = %185, %73
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @getprognum(i8*) #1

declare dso_local i32 @get_inet_address(%struct.sockaddr_in*, i8*) #1

declare dso_local i64 @getvers(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32* @clnt_com_create(%struct.sockaddr_in*, i64, i64, i32*, i8*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i64 @pstatus(i32*, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CLNT_DESTROY(i32*) #1

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
